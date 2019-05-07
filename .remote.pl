#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;
use open ':encoding(utf8)';

use Mojo::UserAgent;

use constant MEDIA_MANIFEST_LIST => 'application/vnd.docker.distribution.manifest.list.v2+json';
use constant MEDIA_MANIFEST_V2   => 'application/vnd.docker.distribution.manifest.v2+json';
use constant MEDIA_MANIFEST_V1   => 'application/vnd.docker.distribution.manifest.v1+json';
use constant MEDIA_FOREIGN_LAYER => 'application/vnd.docker.image.rootfs.foreign.diff.tar.gzip';

# this isn't correct for Windows images, but ours usually use "SHELL" anyhow
my @defaultShell = ('/bin/sh', '-c');

my $ua = Mojo::UserAgent->new->max_redirects(10)->connect_timeout(20)->inactivity_timeout(20);
$ua->transactor->name(join ' ',
	# https://github.com/docker/docker/blob/v1.11.2/dockerversion/useragent.go#L13-L34
	'docker/1.11.2',
	'go/1.6.2',
	'git-commit/v1.11.2',
	'kernel/4.4.11',
	'os/linux',
	'arch/amd64',
	# BOGUS USER AGENTS FOR THE BOGUS USER AGENT THRONE
);

# the number of times to allow a single request to be attempted before considering it a lost cause
my $uaTries = 5;

sub _ua_retry_req_p {
	my $tries = shift;
	my $method = shift;
	my @methodArgs = @_;

	--$tries;
	my $lastTry = $tries < 1;

	return $ua->$method(@methodArgs)->then(sub {
		my $tx = shift;
		if (
			$lastTry
			|| !$tx->error
			|| (
				# if "$tx->res->code" is undefined, that usually is indicative of some kind of timeout (connect/inactivity)
				$tx->res->code
				&& (
					# failure codes we consider to be a "successful" request
					$tx->res->code == 401 # "Unauthorized"
					|| $tx->res->code == 404 # "Not Found"
				)
			)
		) {
			return $tx;
		}
		say {*STDERR} 'UA error response: ' . $tx->error->{message};
		return _ua_retry_req_p($tries, $method, @methodArgs);
	})->catch(sub {
		die @_ if $lastTry;
		say {*STDERR} 'UA error: ' . join ', ', @_;
		return _ua_retry_req_p($tries, $method, @methodArgs);
	});
}
sub ua_retry_req_p {
	my $method = shift . '_p';
	return _ua_retry_req_p($uaTries, $method, @_);
}

sub split_image_name {
	my $image = shift;
	if ($image =~ m{
		^
		(?: ([^/:]+) / )? # optional namespace
		([^/:]+)          # image name
		(?: : ([^/:]+) )? # optional tag
		$
	}x) {
		my ($namespace, $name, $tag) = (
			$1 // 'library', # namespace
			$2,              # image name
			$3 // 'latest',  # tag
		);
		return ("$namespace/$name", $tag);
	}
	die "unrecognized image name format in: $image";
}

sub _registry_req_p {
	my $tries = shift;
	my $method = shift;
	my $repo = shift;
	my $url = shift;
	my %extHeaders = @_;

	--$tries;
	my $lastTry = $tries < 1;

	my %headers = (
		%extHeaders,
	);

	state %tokens;
	if (my $token = $tokens{$repo}) {
		$headers{Authorization} = "Bearer $token";
	}

	return ua_retry_req_p($method => $url => \%headers)->then(sub {
		my $tx = shift;
		if (!$lastTry && $tx->res->code == 401) {
			# "Unauthorized" -- we must need to go fetch a token for this registry request (so let's go do that, then retry the original registry request)
			my $auth = $tx->res->headers->www_authenticate;
			die "unexpected WWW-Authenticate header: $auth" unless $auth =~ m{ ^ Bearer \s+ (\S.*) $ }x;
			my $realm = $1;
			my $authUrl = Mojo::URL->new;
			while ($realm =~ m{
				# key="val",
				([^=]+)
				=
				"([^"]+)"
				,?
			}xg) {
				my ($key, $val) = ($1, $2);
				if ($key eq 'realm') {
					$authUrl->base(Mojo::URL->new($val));
				} else {
					$authUrl->query->append($key => $val);
				}
			}
			$authUrl = $authUrl->to_abs;
			return ua_retry_req_p(get => $authUrl)->then(sub {
				my $tokenTx = shift;
				if (my $error = $tokenTx->error) {
					die "failed to fetch token for $repo: " . ($error->{code} ? $error->{code} . ' -- ' : '') . $error->{message};
				}
				$tokens{$repo} = $tokenTx->res->json->{token};
				return _registry_req_p($tries, $method, $repo, $url, %extHeaders);
			});
		}

		return $tx;
	});
}
sub registry_req_p {
	my $method = shift;
	my $repo = shift;
	my $url = shift;
	my %extHeaders = @_;

	$url = "https://registry-1.docker.io/v2/$repo/$url";

	return _registry_req_p($uaTries, $method, $repo, $url, %extHeaders);
}

sub get_manifest_p {
	my ($repo, $tag) = @_;

	my $image = "$repo:$tag";
	state (%manifests, %digests);
	return Mojo::Promise->resolve($digests{$image}, $manifests{$image}) if $digests{$image} and $manifests{$image};

	return registry_req_p(get => $repo => "manifests/$tag" => (
		# prefer a "version 2" manifest
		# https://docs.docker.com/registry/spec/manifest-v2-2/
		Accept => [
			MEDIA_MANIFEST_LIST,
			MEDIA_MANIFEST_V2,
			MEDIA_MANIFEST_V1,
		],
	))->then(sub {
		my $manifestTx = shift;
		return (undef, undef) if $manifestTx->res->code == 404; # tag doesn't exist
		if (my $error = $manifestTx->error) {
			die "failed to get manifest for $image: " . ($error->{code} ? $error->{code} . ' -- ' : '') . $error->{message};
		}
		return (
			$digests{$image} = $manifestTx->res->headers->header('Docker-Content-Digest'),
			$manifests{$image} = $manifestTx->res->json,
		);
	});
}

sub blob_req_p {
	my $method = shift;
	my $repo = shift;
	my $blob = shift;
	my %extHeaders = @_;
	return registry_req_p($method => $repo => "blobs/$blob" => %extHeaders);
}

sub get_blob_json_p {
	my ($repo, $blob) = @_;

	my $key = $repo . '@' . $blob;
	state %blobs;
	return Mojo::Promise->resolve($blobs{$key}) if $blobs{$key};

	return blob_req_p(get => ($repo, $blob) => ())->then(sub {
		my $tx = shift;
		if (my $error = $tx->error) {
			die "failed to get blob data for $key: " . ($error->{code} ? $error->{code} . ' -- ' : '') . $error->{message};
		}
		return ($blobs{$key} = $tx->res->json);
	});
}

sub get_blob_headers_p {
	my ($repo, $blob) = @_;

	my $key = $repo . '@' . $blob;
	state %headers;
	return Mojo::Promise->resolve($headers{$key}) if $headers{$key};

	return blob_req_p(head => ($repo, $blob) => ())->then(sub {
		my $headersTx = shift;
		if (my $error = $headersTx->error) {
			die "failed to get headers for $key: " . ($error->{code} ? $error->{code} . ' -- ' : '') . $error->{message};
		}
		return ($headers{$key} = $headersTx->res->headers);
	});
}

sub get_foreign_headers_p {
	my ($urls) = @_;

	my $url = $urls->[0];
	state %headers;
	return Mojo::Promise->resolve($headers{$url}) if $headers{$url};

	return ua_retry_req_p(head => $url => {})->then(sub {
		my $headersTx = shift;
		if (my $error = $headersTx->error) {
			die "failed to get headers for $url: " . ($error->{code} ? $error->{code} . ' -- ' : '') . $error->{message};
		}
		return ($headers{$url} = $headersTx->res->headers);
	});
}

sub parse_manifest_v1_data_p {
	my ($repo, $manifest) = @_;

	my $data = {
		manifestVersion => MEDIA_MANIFEST_V1,
		manifest => $manifest,
		imageId => undef,
		platform => {},
		dockerVersion => undef,
		entrypoint => undef,
		defaultCommand => undef,
		layers => [],
		commands => [],
	};

	my %seenBlob;
	for my $fsLayer (@{ $manifest->{fsLayers} // [] }) {
		my $blob = $fsLayer->{blobSum};
		next unless $blob;

		next if $seenBlob{$blob};
		$seenBlob{$blob} = 1;

		push @{ $data->{layers} }, {
			digest => $blob,
		};
	}

	for my $history (@{ $manifest->{history} // [] }) {
		next unless $history->{v1Compatibility};

		my $v1 = Mojo::Util::encode('UTF-8', $history->{v1Compatibility});

		my $json = Mojo::JSON::decode_json($v1);

		$data->{dockerVersion} //= $json->{docker_version};
		$data->{platform}{os} //= $json->{os};
		$data->{platform}{architecture} //= $json->{architecture};
		$data->{entrypoint} //= $json->{config}{Entrypoint};
		$data->{defaultCommand} //= $json->{config}{Cmd};
		$data->{imageId} //= $json->{id};

		# "history" in v1 is in reverse order (hence "unshift" instead of "push")
		unshift @{ $data->{commands} }, {
			created => $json->{created},
			command => $json->{container_config}{Cmd},
		};
	}

	return Mojo::Promise->resolve($data);
}

sub parse_manifest_v2_data_p {
	my ($repo, $manifest) = @_;

	my $configDigest = $manifest->{config}{digest};

	return get_blob_json_p($repo, $configDigest)->then(sub {
		my $config = shift;

		return {
			manifestVersion => MEDIA_MANIFEST_V2,
			manifest => $manifest,
			imageId => $configDigest,
			config => $config,
			platform => {
				os => $config->{os},
				architecture => $config->{architecture},
			},
			dockerVersion => $config->{docker_version},
			entrypoint => $config->{config}{Entrypoint},
			defaultCommand => $config->{config}{Cmd},
			shell => $config->{config}{Shell},
			layers => $manifest->{layers} // [],
			commands => $config->{history} // [],
		};
	});
}

sub get_image_data_p {
	my ($image) = @_;

	my ($repo, $tag) = split_image_name($image);

	return get_manifest_p($repo, $tag)->then(sub {
		my ($digest, $manifest) = @_;

		unless (defined $digest && defined $manifest) {
			# tag must not exist!
			return undef;
		}

		my $data = {
			repo => $repo,
			tag => $tag,
			digest => $digest,
			images => [],
		};

		my @imageDataPromises;

		if ($manifest->{schemaVersion} eq '1') {
			# https://docs.docker.com/registry/spec/manifest-v2-1/
			push @imageDataPromises, parse_manifest_v1_data_p($repo, $manifest);
		}
		elsif ($manifest->{schemaVersion} eq '2') {
			# https://docs.docker.com/registry/spec/manifest-v2-2/
			if ($manifest->{mediaType} eq MEDIA_MANIFEST_V2) {
				push @imageDataPromises, parse_manifest_v2_data_p($repo, $manifest);
			}
			elsif ($manifest->{mediaType} eq MEDIA_MANIFEST_LIST) {
				$data->{manifest} = $manifest;
				$data->{manifestVersion} = $manifest->{mediaType};

				for my $sub (@{ $manifest->{manifests} // [] }) {
					my $digest = $sub->{digest};
					die "sub-manifest missing digest!" unless $digest;

					push @imageDataPromises, get_manifest_p($repo, $digest)->then(sub {
						my ($subDigest, $subManifest) = @_;
						die "sub-manifest $digest does not exist!" unless defined $subManifest;
						die "bad sub-manifest digest! ('$digest' vs '$subDigest')" unless $digest eq $subDigest;

						my $subDataHandler = sub {
							my $subData = shift;
							$subData->{digest} = $digest;
							$subData->{platform} = $sub->{platform};
							return $subData;
						};
						if ($sub->{mediaType} eq MEDIA_MANIFEST_V1) {
							return parse_manifest_v1_data_p($repo, $subManifest)->then($subDataHandler);
						}
						elsif ($sub->{mediaType} eq MEDIA_MANIFEST_V2) {
							return parse_manifest_v2_data_p($repo, $subManifest)->then($subDataHandler);
						}
						else {
							die "unknown sub-manifest mediaType $manifest->{mediaType} for $digest";
						}
					});
				}
			}
			else {
				die "unknown mediaType $manifest->{mediaType} for schemaVersion 2";
			}
		}
		else {
			die "unknown schemaVersion: $manifest->{schemaVersion}";
		}

		return Mojo::Promise->all(@imageDataPromises)->then(sub {
			my @images = map { @$_ } @_;
			my @layerDataPromises;
			for my $image (@images) {
				$image->{layers} //= [];
				for my $layer (@{ $image->{layers} }) {
					if (defined $layer->{mediaType} && $layer->{mediaType} eq MEDIA_FOREIGN_LAYER) {
						if (defined $layer->{urls} && @{ $layer->{urls} }) {
							push @layerDataPromises, get_foreign_headers_p($layer->{urls})->then(sub {
								my $headers = shift;
								$layer->{size} //= $headers->content_length;
								$layer->{lastModified} //= $headers->last_modified;
								return $layer;
							});
						}
					}
					else {
						push @layerDataPromises, get_blob_headers_p($repo, $layer->{digest})->then(sub {
							my $headers = shift;
							$layer->{size} //= $headers->content_length;
							$layer->{mediaType} //= $headers->content_type;
							$layer->{lastModified} //= $headers->last_modified;
							return $layer;
						});
					}
				}
			}
			return @images unless @layerDataPromises;
			return Mojo::Promise->all(@layerDataPromises)->then(sub {
				return @images;
			});
		})->then(sub {
			my @images = @_;
			for my $image (@images) {
				$image->{platform} //= {};

				$image->{size} = 0;
				for my $layer (@{ $image->{layers} }) {
					$image->{size} += $layer->{size} if defined $layer->{size};
				}

				$image->{commands} //= [];
				for my $command (@{ $image->{commands} }) {
					$command->{command} //= [ $command->{created_by} ];
					$command->{dockerfile} //= cmd_to_dockerfile($command->{command}, $image->{shell});
				}

				push @{ $data->{images} }, $image;
			}
			return $data;
		});
	});
}

sub platform_string {
	my $platform = shift;
	return (
		($platform->{os} // 'linux')
		. (defined $platform->{'os.version'} ? ' version ' . $platform->{'os.version'} : '')
		. (defined $platform->{'os.features'} ? ' ft. ' . join(', ', @{ $platform->{'os.features'} }) : '')
		. '; '
		. ($platform->{architecture} // 'amd64')
		. (defined $platform->{variant} ? ' variant ' . $platform->{variant} : '')
		. (defined $platform->{features} ? ' ft. ' . join(', ', @{ $platform->{features} }) : '')
	);
}

sub cmd_to_dockerfile {
	my ($cmd, $shell) = @_;

	if (@$cmd == 1) {
		# likely 1.10+ squashed string :(
		# https://github.com/docker/docker/issues/22436
		# let's strip and "parse" to get as close to readable as we can

		my @shells = (join ' ', @defaultShell);
		push @shells, join ' ', @$shell if $shell;
		@shells = map { "\Q$_ \E" } @shells;
		my $shellRegex = '(?:' . join('|', @shells) . ')';
		my $nopRegex = "\Q#(nop)\E +";

		my $str = $cmd->[0];
		my @prefix = ();
		if ($str =~ s!^[|]\d+ (.*?) ($shellRegex)!$2!) {
			push @prefix, '# ARGS: ' . $1;
		}
		if (substr($str, 0, 1) eq '|' && !@prefix) {
			# must be something like:
			#   |6 a=1 b=2 c=3 d=4 e=a b c f=a b " c echo $a
			# (and thus impossible to parse as-is)
			return '# unable to parse image command string further:' . "\n" . $str;
		}
		$str =~ s!^$shellRegex!!;
		unless ($str =~ s!^$nopRegex!!) {
			# if we don't have "#(nop)", RUN is implied
			$str = 'RUN ' . $str;
		}
		return join "\n", @prefix, $str;
	}

	my @buildArgs;
	if (substr($cmd->[0], 0, 1) eq '|') {
		# must have some build args for this RUN line
		# https://github.com/docker/docker/blob/a7742e437943bb0c59cc9e01fd9f5e68259ad3ec/builder/dockerfile/dispatchers.go#L353-L365
		my $n = int(substr(shift(@$cmd), 1)); # number of build args
		while ($n > 0) {
			my $arg = shift @$cmd;
			$arg =~ s/(["\\])/\\$1/g;
			my ($var, $val) = split /=/, $arg, 2;
			push @buildArgs, '"' . $var . '" => "' . $val .'"';
			--$n;
		}
	}
	my $args = join('', map { "# ARG: $_\n" } @buildArgs);
	if (scalar(@$cmd) == 3 && $cmd->[0] eq '/bin/sh' && $cmd->[1] eq '-c') {
		$cmd = $cmd->[2];
		if ($cmd =~ s{^(#[(]nop[)] )}{}) {
			return $args . $cmd;
		}
		# prefix tabs and 4-space-indents with \ and a newline (for readability), but only if we don't already have any newlines
		$cmd =~ s/ ( (?:\t|[ ]{4})+ ) /\\\n$1/xg unless $cmd =~ m!\n!;
		return $args . 'RUN ' . $cmd;
	}
	return $args . 'RUN ' . Mojo::JSON::encode_json($cmd);
}

my @humanSizeUnits = qw( B KB MB GB TB );
my $humanSizeScale = 1000;
sub human_size {
	my ($bytes) = @_;
	my $unit = 0;
	my $unitBytes = $bytes;
	while (($unitBytes = int($bytes / ($humanSizeScale ** $unit))) > $humanSizeScale) {
		last unless $humanSizeUnits[$unit + 1];
		++$unit;
	}
	return sprintf '%.1f %s', $bytes / ($humanSizeScale ** $unit), $humanSizeUnits[$unit];
}

sub size {
	my $text = human_size(@_);
	$text .= " ($_[0] bytes)" unless $text =~ m! \s+ B $ !x;
	return $text;
}

sub date {
	my $date = Mojo::Date->new(@_);
	return $date->to_string;
}

sub image_to_markdown_p {
	my $image = shift;

	my $ret = '## `' . $image . '`' . "\n";

	return get_image_data_p($image)->then(sub {
		my $data = shift;

		unless ($data) {
			# tag must not exist yet!
			$ret .= "\n" . '**does not exist** (yet?)' . "\n";
			return $ret;
		}

		my $repo = $data->{repo};
		$repo =~ s!^library/!!;

		$ret .= "\n";
		$ret .= '```console' . "\n";
		$ret .= '$ docker pull ' . $repo . '@' . $data->{digest} . "\n";
		$ret .= '```' . "\n";

		$ret .= "\n";
		$ret .= "-\t" . 'Manifest MIME: `' . $data->{manifestVersion} . '`' . "\n" if $data->{manifestVersion};
		$ret .= "-\t" . 'Platforms:' . "\n";
		for my $imageData (@{ $data->{images} }) {
			$ret .= "\t-\t" . platform_string($imageData->{platform}) . "\n";
		}

		for my $imageData (@{ $data->{images} }) {
			$ret .= "\n";
			$ret .= '### `' . $image . '` - ' . platform_string($imageData->{platform}) . "\n";

			if ($imageData->{digest}) {
				$ret .= "\n";
				$ret .= '```console' . "\n";
				$ret .= '$ docker pull ' . $repo . '@' . $imageData->{digest} . "\n";
				$ret .= '```' . "\n";
			}

			$ret .= "\n";
			$ret .= "-\t" . 'Docker Version: ' . $imageData->{dockerVersion} . "\n" if $imageData->{dockerVersion};
			$ret .= "-\t" . 'Manifest MIME: `' . $imageData->{manifestVersion} . '`' . "\n" if $imageData->{manifestVersion};
			$ret .= "-\t" . 'Total Size: **' . size($imageData->{size}) . '**  ' . "\n";
			$ret .= "\t" . '(compressed transfer size, not on-disk size)' . "\n";
			$ret .= "-\t" . 'Image ID: `' . $imageData->{imageId} . '`' . "\n" if $imageData->{imageId};
			$ret .= "-\t" . 'Entrypoint: `' . Mojo::JSON::encode_json($imageData->{entrypoint}) . '`' . "\n" if $imageData->{entrypoint} && @{ $imageData->{entrypoint} };
			$ret .= "-\t" . 'Default Command: `' . Mojo::JSON::encode_json($imageData->{defaultCommand}) . '`' . "\n" if $imageData->{defaultCommand};
			$ret .= "-\t" . '`SHELL`: `' . Mojo::JSON::encode_json($imageData->{shell}) . '`' . "\n" if $imageData->{shell};

			$ret .= "\n";
			$ret .= '```dockerfile' . "\n";
			for my $command (@{ $imageData->{commands} }) {
				$ret .= '# ' . date($command->{created}) . "\n";
				$ret .= $command->{dockerfile} . "\n";
			}
			$ret .= '```' . "\n";

			$ret .= "\n";
			$ret .= "-\t" . 'Layers:' . "\n";
			for my $layer (@{ $imageData->{layers} }) {
				$ret .= "\t-\t" . '`' . $layer->{digest} . '`  ' . "\n";
				$ret .= "\t\t" . 'Last Modified: ' . date($layer->{lastModified}) . '  ' . "\n" if defined $layer->{lastModified};
				$ret .= "\t\t" . 'Size: ' . size($layer->{size}) . '  ' . "\n" if defined $layer->{size};
				$ret .= "\t\t" . 'MIME: ' . $layer->{mediaType} . "\n";
			}
		}

		return $ret;
	});
}

if (@ARGV && $ARGV[0] eq '--') {
	# if the first argument is "--", we want to just generate markdown for images directly (no server)

	shift;
	die 'no images specified' unless @ARGV;

	Mojo::Promise->all(map { image_to_markdown_p($_) } @ARGV)->then(sub {
		print join "\n", map { @$_ } @_;
	})->catch(sub {
		say {*STDERR} 'error: ' . $_ for @_;
		exit scalar @_;
	})->wait;

	exit;
}

use Mojolicious::Lite;

get '/markdown/*image' => sub {
	my $c = shift;

	my $image = $c->param('image');

	$c->render_later;

	return image_to_markdown_p($image)->then(sub {
		$c->res->headers->content_type('text/plain');
		$c->render(text => shift);
	})->catch(sub {
		$c->reply->exception(@_);
	});
};

app->start;
