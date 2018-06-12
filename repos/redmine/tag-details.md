<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.8`](#redmine338)
-	[`redmine:3.3.8-passenger`](#redmine338-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.6`](#redmine346)
-	[`redmine:3.4.6-passenger`](#redmine346-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:3551a1afbd853ecb8a15e17d0da923aec45a360655bb262b3ad6b59c114996d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

```console
$ docker pull redmine@sha256:ffbdd51b567d58eaf132fecc4994e5676c0da24f29ee328e0b8c52140c329460
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247931574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04376db74dd8dae002c98135b5a324d6a5168568c63107bbf3ece015750913dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:05:25 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:10:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:10:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:10:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:10:42 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:12:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:13:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:13:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:13:06 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:14:15 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:14:15 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 00:25:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:33:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:33:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:33:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:33:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:33:14 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:33:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525ae63d55a74a1f6b9dfd57834030b074bbd7f49a0112be1baeee54771adf6`  
		Last Modified: Wed, 06 Jun 2018 20:45:22 GMT  
		Size: 21.3 MB (21306283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c073cb4eac57274b901187bf388d5687c5f2c843aec1dd11112a3eff9f7b347c`  
		Last Modified: Wed, 06 Jun 2018 20:45:15 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824845193e3848c00e93293274dc4e68fe409419ee50f0ba18f1b6472cdcd452`  
		Last Modified: Thu, 07 Jun 2018 00:32:23 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18ced39b48a019f613ac9c7dcc8f1f9f0c6d576be78d4b7b67094bdb690c15b`  
		Last Modified: Thu, 07 Jun 2018 00:32:31 GMT  
		Size: 13.0 MB (12968067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e1d49867a346f746731ea66b7b7d9b818c1d263094de5b3248f690d5584fb`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df03cf82e68de36430f37f2ab052677668205237b8276fe8572abdd97d829d9c`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738a92239fbc82b62f6df9dc0dbd139b1a966be0dfc19b59a1883e8d8b85e09`  
		Last Modified: Thu, 07 Jun 2018 00:33:18 GMT  
		Size: 44.7 MB (44735808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f636c429a5e895fdaf63d633d5ea90e219af7e40d0159dd1a4a20241384f8b1`  
		Last Modified: Thu, 07 Jun 2018 00:32:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f380223f9e98942271170b51cc973632adb5b73e176422bb4a0d896717bb42af`  
		Last Modified: Tue, 12 Jun 2018 00:41:21 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93ed26e510147fe17c7767de1b30928f0bff3c4227bd2120fe02cedc66a5ff6`  
		Last Modified: Tue, 12 Jun 2018 00:41:49 GMT  
		Size: 101.2 MB (101213677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091c5822e0362d8a7fb830188f9dbc7d6b2070cd8bff147ca92bfea7bf72ea4`  
		Last Modified: Tue, 12 Jun 2018 00:41:18 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:65caeae74602d6fe89f90144a213326ee9fd25ff48c972de287026babbd0d65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

```console
$ docker pull redmine@sha256:743af7f3edb5354105543694d2ce2b023878fc657c2b4273090756d05f9715f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241944045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dadca431c490cd48ec85deb0803aec240bf4a5aa102e40fea48f7f1fd8dde9a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_MAJOR=2.3
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 06 Jun 2018 20:31:28 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:31:28 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:35:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:35:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:35:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:35:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:35:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:35:52 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:23:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:23:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:23:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:24:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:24:02 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:24:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:25:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:25:02 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:25:02 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:34:32 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 00:34:32 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 00:34:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:39:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:39:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:39:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:39:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:39:52 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:39:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a5c09542cf211f816840eed90982af9ca833104938d6e3611ee3eef0755067`  
		Last Modified: Wed, 06 Jun 2018 20:48:47 GMT  
		Size: 33.9 MB (33927548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942c9772bfc617e132cc841cdb6a74687e06d67b590aa7d8d4d168480efa9ce`  
		Last Modified: Wed, 06 Jun 2018 20:48:32 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780518a84460902e36829eab34d0dfaecee0c2288c97bbda0ffafb53858080c0`  
		Last Modified: Thu, 07 Jun 2018 00:35:08 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de20bfd44811067c633437198b1ca647c17530b712e2fd91e6aef4ff517fc2c7`  
		Last Modified: Thu, 07 Jun 2018 00:35:17 GMT  
		Size: 13.0 MB (12968091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72eef85b77a494ac5473922207fd96c09cb140009cb3e8e2f5a773ac31e18da2`  
		Last Modified: Thu, 07 Jun 2018 00:35:07 GMT  
		Size: 500.7 KB (500673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4844b76640793851b94ea95ad01507182c3e779bc188331623d1fb2dc224b06d`  
		Last Modified: Thu, 07 Jun 2018 00:35:06 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef41936e4ec628985f40b6b8563884dc2127406c8de84905ef41bcad8c07d9c`  
		Last Modified: Thu, 07 Jun 2018 00:35:51 GMT  
		Size: 44.7 MB (44736158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b059656ceaa4b1b8fc0379e30fcfff6c3ff03dad5439427c06337c98415aee00`  
		Last Modified: Thu, 07 Jun 2018 00:35:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460c11b33b2bbcf7c8446c7052047bcb4f4b07ddbfdf08faff887f2456a8cd76`  
		Last Modified: Tue, 12 Jun 2018 00:43:04 GMT  
		Size: 2.4 MB (2394062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a529f7cabc8e7c03de8988ae1e90ed180dff447daae72734890531c4b8cdb96a`  
		Last Modified: Tue, 12 Jun 2018 00:43:31 GMT  
		Size: 82.7 MB (82667358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e88ffb12cfb1fb363b4e033d56618655b26044f0a5f25780723848a74e7512`  
		Last Modified: Tue, 12 Jun 2018 00:43:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.8`

```console
$ docker pull redmine@sha256:65caeae74602d6fe89f90144a213326ee9fd25ff48c972de287026babbd0d65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.8` - linux; amd64

```console
$ docker pull redmine@sha256:743af7f3edb5354105543694d2ce2b023878fc657c2b4273090756d05f9715f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241944045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dadca431c490cd48ec85deb0803aec240bf4a5aa102e40fea48f7f1fd8dde9a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_MAJOR=2.3
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 06 Jun 2018 20:31:28 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:31:28 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:35:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:35:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:35:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:35:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:35:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:35:52 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:23:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:23:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:23:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:24:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:24:02 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:24:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:25:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:25:02 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:25:02 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:34:32 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 00:34:32 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 00:34:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:39:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:39:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:39:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:39:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:39:52 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:39:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a5c09542cf211f816840eed90982af9ca833104938d6e3611ee3eef0755067`  
		Last Modified: Wed, 06 Jun 2018 20:48:47 GMT  
		Size: 33.9 MB (33927548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942c9772bfc617e132cc841cdb6a74687e06d67b590aa7d8d4d168480efa9ce`  
		Last Modified: Wed, 06 Jun 2018 20:48:32 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780518a84460902e36829eab34d0dfaecee0c2288c97bbda0ffafb53858080c0`  
		Last Modified: Thu, 07 Jun 2018 00:35:08 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de20bfd44811067c633437198b1ca647c17530b712e2fd91e6aef4ff517fc2c7`  
		Last Modified: Thu, 07 Jun 2018 00:35:17 GMT  
		Size: 13.0 MB (12968091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72eef85b77a494ac5473922207fd96c09cb140009cb3e8e2f5a773ac31e18da2`  
		Last Modified: Thu, 07 Jun 2018 00:35:07 GMT  
		Size: 500.7 KB (500673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4844b76640793851b94ea95ad01507182c3e779bc188331623d1fb2dc224b06d`  
		Last Modified: Thu, 07 Jun 2018 00:35:06 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef41936e4ec628985f40b6b8563884dc2127406c8de84905ef41bcad8c07d9c`  
		Last Modified: Thu, 07 Jun 2018 00:35:51 GMT  
		Size: 44.7 MB (44736158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b059656ceaa4b1b8fc0379e30fcfff6c3ff03dad5439427c06337c98415aee00`  
		Last Modified: Thu, 07 Jun 2018 00:35:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460c11b33b2bbcf7c8446c7052047bcb4f4b07ddbfdf08faff887f2456a8cd76`  
		Last Modified: Tue, 12 Jun 2018 00:43:04 GMT  
		Size: 2.4 MB (2394062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a529f7cabc8e7c03de8988ae1e90ed180dff447daae72734890531c4b8cdb96a`  
		Last Modified: Tue, 12 Jun 2018 00:43:31 GMT  
		Size: 82.7 MB (82667358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e88ffb12cfb1fb363b4e033d56618655b26044f0a5f25780723848a74e7512`  
		Last Modified: Tue, 12 Jun 2018 00:43:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.8-passenger`

```console
$ docker pull redmine@sha256:9d6930aa439556a19a32b15fd6b88d705842b43e8a917f82980e6223d4102a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:871bb47732aad6e5751d2557fd351d56dab8ade14cf94d4e462902b0c175b7d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.1 MB (265130383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea46a547a2bf7b749dd3373f8a5aeaf1de043da4e4f2db32822476afc3ec26db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_MAJOR=2.3
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 06 Jun 2018 20:31:28 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:31:28 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:35:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:35:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:35:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:35:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:35:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:35:52 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:23:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:23:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:23:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:24:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:24:02 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:24:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:25:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:25:02 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:25:02 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:34:32 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 00:34:32 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 00:34:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:39:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:39:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:39:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:39:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:39:52 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:39:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Jun 2018 00:39:59 GMT
ENV PASSENGER_VERSION=5.3.1
# Tue, 12 Jun 2018 00:40:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Jun 2018 00:41:01 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Jun 2018 00:41:01 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a5c09542cf211f816840eed90982af9ca833104938d6e3611ee3eef0755067`  
		Last Modified: Wed, 06 Jun 2018 20:48:47 GMT  
		Size: 33.9 MB (33927548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942c9772bfc617e132cc841cdb6a74687e06d67b590aa7d8d4d168480efa9ce`  
		Last Modified: Wed, 06 Jun 2018 20:48:32 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780518a84460902e36829eab34d0dfaecee0c2288c97bbda0ffafb53858080c0`  
		Last Modified: Thu, 07 Jun 2018 00:35:08 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de20bfd44811067c633437198b1ca647c17530b712e2fd91e6aef4ff517fc2c7`  
		Last Modified: Thu, 07 Jun 2018 00:35:17 GMT  
		Size: 13.0 MB (12968091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72eef85b77a494ac5473922207fd96c09cb140009cb3e8e2f5a773ac31e18da2`  
		Last Modified: Thu, 07 Jun 2018 00:35:07 GMT  
		Size: 500.7 KB (500673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4844b76640793851b94ea95ad01507182c3e779bc188331623d1fb2dc224b06d`  
		Last Modified: Thu, 07 Jun 2018 00:35:06 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef41936e4ec628985f40b6b8563884dc2127406c8de84905ef41bcad8c07d9c`  
		Last Modified: Thu, 07 Jun 2018 00:35:51 GMT  
		Size: 44.7 MB (44736158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b059656ceaa4b1b8fc0379e30fcfff6c3ff03dad5439427c06337c98415aee00`  
		Last Modified: Thu, 07 Jun 2018 00:35:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460c11b33b2bbcf7c8446c7052047bcb4f4b07ddbfdf08faff887f2456a8cd76`  
		Last Modified: Tue, 12 Jun 2018 00:43:04 GMT  
		Size: 2.4 MB (2394062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a529f7cabc8e7c03de8988ae1e90ed180dff447daae72734890531c4b8cdb96a`  
		Last Modified: Tue, 12 Jun 2018 00:43:31 GMT  
		Size: 82.7 MB (82667358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e88ffb12cfb1fb363b4e033d56618655b26044f0a5f25780723848a74e7512`  
		Last Modified: Tue, 12 Jun 2018 00:43:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001b5584ae0d0d5b526022ac1939d954cddf7ceb5fcd57edb99c33ad34f5b499`  
		Last Modified: Tue, 12 Jun 2018 00:44:03 GMT  
		Size: 18.7 MB (18727940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd2c8f2dea07206b3d1771ca4669d269ddbd2dfd119b41a6d5391dc2f27748c`  
		Last Modified: Tue, 12 Jun 2018 00:43:57 GMT  
		Size: 4.5 MB (4458398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:9d6930aa439556a19a32b15fd6b88d705842b43e8a917f82980e6223d4102a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:871bb47732aad6e5751d2557fd351d56dab8ade14cf94d4e462902b0c175b7d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.1 MB (265130383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea46a547a2bf7b749dd3373f8a5aeaf1de043da4e4f2db32822476afc3ec26db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_MAJOR=2.3
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 06 Jun 2018 20:31:27 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 06 Jun 2018 20:31:28 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:31:28 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:35:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:35:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:35:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:35:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:35:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:35:52 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:23:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:23:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:23:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:24:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:24:02 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:24:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:25:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:25:02 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:25:02 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:34:32 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 00:34:32 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 00:34:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:39:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:39:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:39:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:39:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:39:52 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:39:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Jun 2018 00:39:59 GMT
ENV PASSENGER_VERSION=5.3.1
# Tue, 12 Jun 2018 00:40:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Jun 2018 00:41:01 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Jun 2018 00:41:01 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a5c09542cf211f816840eed90982af9ca833104938d6e3611ee3eef0755067`  
		Last Modified: Wed, 06 Jun 2018 20:48:47 GMT  
		Size: 33.9 MB (33927548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942c9772bfc617e132cc841cdb6a74687e06d67b590aa7d8d4d168480efa9ce`  
		Last Modified: Wed, 06 Jun 2018 20:48:32 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780518a84460902e36829eab34d0dfaecee0c2288c97bbda0ffafb53858080c0`  
		Last Modified: Thu, 07 Jun 2018 00:35:08 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de20bfd44811067c633437198b1ca647c17530b712e2fd91e6aef4ff517fc2c7`  
		Last Modified: Thu, 07 Jun 2018 00:35:17 GMT  
		Size: 13.0 MB (12968091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72eef85b77a494ac5473922207fd96c09cb140009cb3e8e2f5a773ac31e18da2`  
		Last Modified: Thu, 07 Jun 2018 00:35:07 GMT  
		Size: 500.7 KB (500673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4844b76640793851b94ea95ad01507182c3e779bc188331623d1fb2dc224b06d`  
		Last Modified: Thu, 07 Jun 2018 00:35:06 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef41936e4ec628985f40b6b8563884dc2127406c8de84905ef41bcad8c07d9c`  
		Last Modified: Thu, 07 Jun 2018 00:35:51 GMT  
		Size: 44.7 MB (44736158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b059656ceaa4b1b8fc0379e30fcfff6c3ff03dad5439427c06337c98415aee00`  
		Last Modified: Thu, 07 Jun 2018 00:35:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460c11b33b2bbcf7c8446c7052047bcb4f4b07ddbfdf08faff887f2456a8cd76`  
		Last Modified: Tue, 12 Jun 2018 00:43:04 GMT  
		Size: 2.4 MB (2394062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a529f7cabc8e7c03de8988ae1e90ed180dff447daae72734890531c4b8cdb96a`  
		Last Modified: Tue, 12 Jun 2018 00:43:31 GMT  
		Size: 82.7 MB (82667358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e88ffb12cfb1fb363b4e033d56618655b26044f0a5f25780723848a74e7512`  
		Last Modified: Tue, 12 Jun 2018 00:43:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001b5584ae0d0d5b526022ac1939d954cddf7ceb5fcd57edb99c33ad34f5b499`  
		Last Modified: Tue, 12 Jun 2018 00:44:03 GMT  
		Size: 18.7 MB (18727940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd2c8f2dea07206b3d1771ca4669d269ddbd2dfd119b41a6d5391dc2f27748c`  
		Last Modified: Tue, 12 Jun 2018 00:43:57 GMT  
		Size: 4.5 MB (4458398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:3551a1afbd853ecb8a15e17d0da923aec45a360655bb262b3ad6b59c114996d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4` - linux; amd64

```console
$ docker pull redmine@sha256:ffbdd51b567d58eaf132fecc4994e5676c0da24f29ee328e0b8c52140c329460
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247931574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04376db74dd8dae002c98135b5a324d6a5168568c63107bbf3ece015750913dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:05:25 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:10:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:10:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:10:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:10:42 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:12:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:13:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:13:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:13:06 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:14:15 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:14:15 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 00:25:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:33:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:33:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:33:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:33:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:33:14 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:33:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525ae63d55a74a1f6b9dfd57834030b074bbd7f49a0112be1baeee54771adf6`  
		Last Modified: Wed, 06 Jun 2018 20:45:22 GMT  
		Size: 21.3 MB (21306283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c073cb4eac57274b901187bf388d5687c5f2c843aec1dd11112a3eff9f7b347c`  
		Last Modified: Wed, 06 Jun 2018 20:45:15 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824845193e3848c00e93293274dc4e68fe409419ee50f0ba18f1b6472cdcd452`  
		Last Modified: Thu, 07 Jun 2018 00:32:23 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18ced39b48a019f613ac9c7dcc8f1f9f0c6d576be78d4b7b67094bdb690c15b`  
		Last Modified: Thu, 07 Jun 2018 00:32:31 GMT  
		Size: 13.0 MB (12968067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e1d49867a346f746731ea66b7b7d9b818c1d263094de5b3248f690d5584fb`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df03cf82e68de36430f37f2ab052677668205237b8276fe8572abdd97d829d9c`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738a92239fbc82b62f6df9dc0dbd139b1a966be0dfc19b59a1883e8d8b85e09`  
		Last Modified: Thu, 07 Jun 2018 00:33:18 GMT  
		Size: 44.7 MB (44735808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f636c429a5e895fdaf63d633d5ea90e219af7e40d0159dd1a4a20241384f8b1`  
		Last Modified: Thu, 07 Jun 2018 00:32:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f380223f9e98942271170b51cc973632adb5b73e176422bb4a0d896717bb42af`  
		Last Modified: Tue, 12 Jun 2018 00:41:21 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93ed26e510147fe17c7767de1b30928f0bff3c4227bd2120fe02cedc66a5ff6`  
		Last Modified: Tue, 12 Jun 2018 00:41:49 GMT  
		Size: 101.2 MB (101213677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091c5822e0362d8a7fb830188f9dbc7d6b2070cd8bff147ca92bfea7bf72ea4`  
		Last Modified: Tue, 12 Jun 2018 00:41:18 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.6`

```console
$ docker pull redmine@sha256:3551a1afbd853ecb8a15e17d0da923aec45a360655bb262b3ad6b59c114996d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.6` - linux; amd64

```console
$ docker pull redmine@sha256:ffbdd51b567d58eaf132fecc4994e5676c0da24f29ee328e0b8c52140c329460
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247931574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04376db74dd8dae002c98135b5a324d6a5168568c63107bbf3ece015750913dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:05:25 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:10:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:10:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:10:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:10:42 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:12:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:13:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:13:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:13:06 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:14:15 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:14:15 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 00:25:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:33:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:33:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:33:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:33:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:33:14 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:33:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525ae63d55a74a1f6b9dfd57834030b074bbd7f49a0112be1baeee54771adf6`  
		Last Modified: Wed, 06 Jun 2018 20:45:22 GMT  
		Size: 21.3 MB (21306283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c073cb4eac57274b901187bf388d5687c5f2c843aec1dd11112a3eff9f7b347c`  
		Last Modified: Wed, 06 Jun 2018 20:45:15 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824845193e3848c00e93293274dc4e68fe409419ee50f0ba18f1b6472cdcd452`  
		Last Modified: Thu, 07 Jun 2018 00:32:23 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18ced39b48a019f613ac9c7dcc8f1f9f0c6d576be78d4b7b67094bdb690c15b`  
		Last Modified: Thu, 07 Jun 2018 00:32:31 GMT  
		Size: 13.0 MB (12968067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e1d49867a346f746731ea66b7b7d9b818c1d263094de5b3248f690d5584fb`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df03cf82e68de36430f37f2ab052677668205237b8276fe8572abdd97d829d9c`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738a92239fbc82b62f6df9dc0dbd139b1a966be0dfc19b59a1883e8d8b85e09`  
		Last Modified: Thu, 07 Jun 2018 00:33:18 GMT  
		Size: 44.7 MB (44735808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f636c429a5e895fdaf63d633d5ea90e219af7e40d0159dd1a4a20241384f8b1`  
		Last Modified: Thu, 07 Jun 2018 00:32:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f380223f9e98942271170b51cc973632adb5b73e176422bb4a0d896717bb42af`  
		Last Modified: Tue, 12 Jun 2018 00:41:21 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93ed26e510147fe17c7767de1b30928f0bff3c4227bd2120fe02cedc66a5ff6`  
		Last Modified: Tue, 12 Jun 2018 00:41:49 GMT  
		Size: 101.2 MB (101213677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091c5822e0362d8a7fb830188f9dbc7d6b2070cd8bff147ca92bfea7bf72ea4`  
		Last Modified: Tue, 12 Jun 2018 00:41:18 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.6-passenger`

```console
$ docker pull redmine@sha256:92f7a2f41451388740f49ad828d661b948256ada7591d9e491a2fee19df79c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.6-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:8974294bc47a79452b91d76122b94ceba85f8b49b3dc38028756cd4eab51cf48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271117095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2181faee84929a68b3d0c6ba429c69508f5ffac5e683fc270446bbc48dd7aff1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:05:25 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:10:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:10:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:10:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:10:42 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:12:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:13:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:13:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:13:06 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:14:15 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:14:15 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 00:25:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:33:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:33:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:33:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:33:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:33:14 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:33:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Jun 2018 00:33:20 GMT
ENV PASSENGER_VERSION=5.3.1
# Tue, 12 Jun 2018 00:34:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Jun 2018 00:34:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Jun 2018 00:34:19 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525ae63d55a74a1f6b9dfd57834030b074bbd7f49a0112be1baeee54771adf6`  
		Last Modified: Wed, 06 Jun 2018 20:45:22 GMT  
		Size: 21.3 MB (21306283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c073cb4eac57274b901187bf388d5687c5f2c843aec1dd11112a3eff9f7b347c`  
		Last Modified: Wed, 06 Jun 2018 20:45:15 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824845193e3848c00e93293274dc4e68fe409419ee50f0ba18f1b6472cdcd452`  
		Last Modified: Thu, 07 Jun 2018 00:32:23 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18ced39b48a019f613ac9c7dcc8f1f9f0c6d576be78d4b7b67094bdb690c15b`  
		Last Modified: Thu, 07 Jun 2018 00:32:31 GMT  
		Size: 13.0 MB (12968067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e1d49867a346f746731ea66b7b7d9b818c1d263094de5b3248f690d5584fb`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df03cf82e68de36430f37f2ab052677668205237b8276fe8572abdd97d829d9c`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738a92239fbc82b62f6df9dc0dbd139b1a966be0dfc19b59a1883e8d8b85e09`  
		Last Modified: Thu, 07 Jun 2018 00:33:18 GMT  
		Size: 44.7 MB (44735808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f636c429a5e895fdaf63d633d5ea90e219af7e40d0159dd1a4a20241384f8b1`  
		Last Modified: Thu, 07 Jun 2018 00:32:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f380223f9e98942271170b51cc973632adb5b73e176422bb4a0d896717bb42af`  
		Last Modified: Tue, 12 Jun 2018 00:41:21 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93ed26e510147fe17c7767de1b30928f0bff3c4227bd2120fe02cedc66a5ff6`  
		Last Modified: Tue, 12 Jun 2018 00:41:49 GMT  
		Size: 101.2 MB (101213677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091c5822e0362d8a7fb830188f9dbc7d6b2070cd8bff147ca92bfea7bf72ea4`  
		Last Modified: Tue, 12 Jun 2018 00:41:18 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effb98bb7c1780de052bb51a52275ce4f7dce9e49217d6892ac35d80c9c65b33`  
		Last Modified: Tue, 12 Jun 2018 00:42:30 GMT  
		Size: 18.7 MB (18727126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e692a7f46a767178cb53c9fe3ef36909a64317b77bbbdf8a81f3401c46b2ca6f`  
		Last Modified: Tue, 12 Jun 2018 00:42:24 GMT  
		Size: 4.5 MB (4458395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:92f7a2f41451388740f49ad828d661b948256ada7591d9e491a2fee19df79c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:8974294bc47a79452b91d76122b94ceba85f8b49b3dc38028756cd4eab51cf48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271117095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2181faee84929a68b3d0c6ba429c69508f5ffac5e683fc270446bbc48dd7aff1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:05:25 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:10:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:10:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:10:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:10:42 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:12:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:13:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:13:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:13:06 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:14:15 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:14:15 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 00:25:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:33:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:33:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:33:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:33:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:33:14 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:33:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Jun 2018 00:33:20 GMT
ENV PASSENGER_VERSION=5.3.1
# Tue, 12 Jun 2018 00:34:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Jun 2018 00:34:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Jun 2018 00:34:19 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525ae63d55a74a1f6b9dfd57834030b074bbd7f49a0112be1baeee54771adf6`  
		Last Modified: Wed, 06 Jun 2018 20:45:22 GMT  
		Size: 21.3 MB (21306283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c073cb4eac57274b901187bf388d5687c5f2c843aec1dd11112a3eff9f7b347c`  
		Last Modified: Wed, 06 Jun 2018 20:45:15 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824845193e3848c00e93293274dc4e68fe409419ee50f0ba18f1b6472cdcd452`  
		Last Modified: Thu, 07 Jun 2018 00:32:23 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18ced39b48a019f613ac9c7dcc8f1f9f0c6d576be78d4b7b67094bdb690c15b`  
		Last Modified: Thu, 07 Jun 2018 00:32:31 GMT  
		Size: 13.0 MB (12968067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e1d49867a346f746731ea66b7b7d9b818c1d263094de5b3248f690d5584fb`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df03cf82e68de36430f37f2ab052677668205237b8276fe8572abdd97d829d9c`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738a92239fbc82b62f6df9dc0dbd139b1a966be0dfc19b59a1883e8d8b85e09`  
		Last Modified: Thu, 07 Jun 2018 00:33:18 GMT  
		Size: 44.7 MB (44735808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f636c429a5e895fdaf63d633d5ea90e219af7e40d0159dd1a4a20241384f8b1`  
		Last Modified: Thu, 07 Jun 2018 00:32:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f380223f9e98942271170b51cc973632adb5b73e176422bb4a0d896717bb42af`  
		Last Modified: Tue, 12 Jun 2018 00:41:21 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93ed26e510147fe17c7767de1b30928f0bff3c4227bd2120fe02cedc66a5ff6`  
		Last Modified: Tue, 12 Jun 2018 00:41:49 GMT  
		Size: 101.2 MB (101213677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091c5822e0362d8a7fb830188f9dbc7d6b2070cd8bff147ca92bfea7bf72ea4`  
		Last Modified: Tue, 12 Jun 2018 00:41:18 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effb98bb7c1780de052bb51a52275ce4f7dce9e49217d6892ac35d80c9c65b33`  
		Last Modified: Tue, 12 Jun 2018 00:42:30 GMT  
		Size: 18.7 MB (18727126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e692a7f46a767178cb53c9fe3ef36909a64317b77bbbdf8a81f3401c46b2ca6f`  
		Last Modified: Tue, 12 Jun 2018 00:42:24 GMT  
		Size: 4.5 MB (4458395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:92f7a2f41451388740f49ad828d661b948256ada7591d9e491a2fee19df79c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:8974294bc47a79452b91d76122b94ceba85f8b49b3dc38028756cd4eab51cf48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271117095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2181faee84929a68b3d0c6ba429c69508f5ffac5e683fc270446bbc48dd7aff1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:05:25 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:10:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:10:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:10:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:10:42 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:12:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:13:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:13:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:13:06 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:14:15 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:14:15 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 00:25:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:33:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:33:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:33:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:33:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:33:14 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:33:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Jun 2018 00:33:20 GMT
ENV PASSENGER_VERSION=5.3.1
# Tue, 12 Jun 2018 00:34:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Jun 2018 00:34:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Jun 2018 00:34:19 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525ae63d55a74a1f6b9dfd57834030b074bbd7f49a0112be1baeee54771adf6`  
		Last Modified: Wed, 06 Jun 2018 20:45:22 GMT  
		Size: 21.3 MB (21306283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c073cb4eac57274b901187bf388d5687c5f2c843aec1dd11112a3eff9f7b347c`  
		Last Modified: Wed, 06 Jun 2018 20:45:15 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824845193e3848c00e93293274dc4e68fe409419ee50f0ba18f1b6472cdcd452`  
		Last Modified: Thu, 07 Jun 2018 00:32:23 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18ced39b48a019f613ac9c7dcc8f1f9f0c6d576be78d4b7b67094bdb690c15b`  
		Last Modified: Thu, 07 Jun 2018 00:32:31 GMT  
		Size: 13.0 MB (12968067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e1d49867a346f746731ea66b7b7d9b818c1d263094de5b3248f690d5584fb`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df03cf82e68de36430f37f2ab052677668205237b8276fe8572abdd97d829d9c`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738a92239fbc82b62f6df9dc0dbd139b1a966be0dfc19b59a1883e8d8b85e09`  
		Last Modified: Thu, 07 Jun 2018 00:33:18 GMT  
		Size: 44.7 MB (44735808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f636c429a5e895fdaf63d633d5ea90e219af7e40d0159dd1a4a20241384f8b1`  
		Last Modified: Thu, 07 Jun 2018 00:32:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f380223f9e98942271170b51cc973632adb5b73e176422bb4a0d896717bb42af`  
		Last Modified: Tue, 12 Jun 2018 00:41:21 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93ed26e510147fe17c7767de1b30928f0bff3c4227bd2120fe02cedc66a5ff6`  
		Last Modified: Tue, 12 Jun 2018 00:41:49 GMT  
		Size: 101.2 MB (101213677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091c5822e0362d8a7fb830188f9dbc7d6b2070cd8bff147ca92bfea7bf72ea4`  
		Last Modified: Tue, 12 Jun 2018 00:41:18 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effb98bb7c1780de052bb51a52275ce4f7dce9e49217d6892ac35d80c9c65b33`  
		Last Modified: Tue, 12 Jun 2018 00:42:30 GMT  
		Size: 18.7 MB (18727126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e692a7f46a767178cb53c9fe3ef36909a64317b77bbbdf8a81f3401c46b2ca6f`  
		Last Modified: Tue, 12 Jun 2018 00:42:24 GMT  
		Size: 4.5 MB (4458395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:3551a1afbd853ecb8a15e17d0da923aec45a360655bb262b3ad6b59c114996d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

```console
$ docker pull redmine@sha256:ffbdd51b567d58eaf132fecc4994e5676c0da24f29ee328e0b8c52140c329460
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247931574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04376db74dd8dae002c98135b5a324d6a5168568c63107bbf3ece015750913dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:05:25 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:10:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:10:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:10:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:10:42 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:12:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:13:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:13:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:13:06 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:14:15 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:14:15 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 00:25:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:33:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:33:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:33:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:33:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:33:14 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:33:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525ae63d55a74a1f6b9dfd57834030b074bbd7f49a0112be1baeee54771adf6`  
		Last Modified: Wed, 06 Jun 2018 20:45:22 GMT  
		Size: 21.3 MB (21306283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c073cb4eac57274b901187bf388d5687c5f2c843aec1dd11112a3eff9f7b347c`  
		Last Modified: Wed, 06 Jun 2018 20:45:15 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824845193e3848c00e93293274dc4e68fe409419ee50f0ba18f1b6472cdcd452`  
		Last Modified: Thu, 07 Jun 2018 00:32:23 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18ced39b48a019f613ac9c7dcc8f1f9f0c6d576be78d4b7b67094bdb690c15b`  
		Last Modified: Thu, 07 Jun 2018 00:32:31 GMT  
		Size: 13.0 MB (12968067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e1d49867a346f746731ea66b7b7d9b818c1d263094de5b3248f690d5584fb`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df03cf82e68de36430f37f2ab052677668205237b8276fe8572abdd97d829d9c`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738a92239fbc82b62f6df9dc0dbd139b1a966be0dfc19b59a1883e8d8b85e09`  
		Last Modified: Thu, 07 Jun 2018 00:33:18 GMT  
		Size: 44.7 MB (44735808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f636c429a5e895fdaf63d633d5ea90e219af7e40d0159dd1a4a20241384f8b1`  
		Last Modified: Thu, 07 Jun 2018 00:32:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f380223f9e98942271170b51cc973632adb5b73e176422bb4a0d896717bb42af`  
		Last Modified: Tue, 12 Jun 2018 00:41:21 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93ed26e510147fe17c7767de1b30928f0bff3c4227bd2120fe02cedc66a5ff6`  
		Last Modified: Tue, 12 Jun 2018 00:41:49 GMT  
		Size: 101.2 MB (101213677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091c5822e0362d8a7fb830188f9dbc7d6b2070cd8bff147ca92bfea7bf72ea4`  
		Last Modified: Tue, 12 Jun 2018 00:41:18 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:92f7a2f41451388740f49ad828d661b948256ada7591d9e491a2fee19df79c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:8974294bc47a79452b91d76122b94ceba85f8b49b3dc38028756cd4eab51cf48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271117095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2181faee84929a68b3d0c6ba429c69508f5ffac5e683fc270446bbc48dd7aff1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 20:05:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:05:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 06 Jun 2018 20:05:25 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 06 Jun 2018 20:05:25 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 06 Jun 2018 20:10:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 06 Jun 2018 20:10:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 20:10:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 20:10:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Jun 2018 20:10:42 GMT
CMD ["irb"]
# Thu, 07 Jun 2018 00:12:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 07 Jun 2018 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:13:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Jun 2018 00:13:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 07 Jun 2018 00:13:06 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 07 Jun 2018 00:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 07 Jun 2018 00:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Jun 2018 00:14:15 GMT
ENV RAILS_ENV=production
# Thu, 07 Jun 2018 00:14:15 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 00:25:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 00:25:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 00:33:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 00:33:13 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 00:33:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 00:33:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 00:33:14 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 00:33:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Jun 2018 00:33:20 GMT
ENV PASSENGER_VERSION=5.3.1
# Tue, 12 Jun 2018 00:34:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Jun 2018 00:34:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Jun 2018 00:34:19 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604685471aff98856502ced83687319c3dd49cf9b219952c9d76ee0649e222b`  
		Last Modified: Wed, 06 Jun 2018 20:45:18 GMT  
		Size: 10.5 MB (10474692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450640be6d14e77ca69760f56081f21b98b948c04aa985c37db6ba5bbe4d148b`  
		Last Modified: Wed, 06 Jun 2018 20:45:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c525ae63d55a74a1f6b9dfd57834030b074bbd7f49a0112be1baeee54771adf6`  
		Last Modified: Wed, 06 Jun 2018 20:45:22 GMT  
		Size: 21.3 MB (21306283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c073cb4eac57274b901187bf388d5687c5f2c843aec1dd11112a3eff9f7b347c`  
		Last Modified: Wed, 06 Jun 2018 20:45:15 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824845193e3848c00e93293274dc4e68fe409419ee50f0ba18f1b6472cdcd452`  
		Last Modified: Thu, 07 Jun 2018 00:32:23 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18ced39b48a019f613ac9c7dcc8f1f9f0c6d576be78d4b7b67094bdb690c15b`  
		Last Modified: Thu, 07 Jun 2018 00:32:31 GMT  
		Size: 13.0 MB (12968067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01e1d49867a346f746731ea66b7b7d9b818c1d263094de5b3248f690d5584fb`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df03cf82e68de36430f37f2ab052677668205237b8276fe8572abdd97d829d9c`  
		Last Modified: Thu, 07 Jun 2018 00:32:20 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738a92239fbc82b62f6df9dc0dbd139b1a966be0dfc19b59a1883e8d8b85e09`  
		Last Modified: Thu, 07 Jun 2018 00:33:18 GMT  
		Size: 44.7 MB (44735808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f636c429a5e895fdaf63d633d5ea90e219af7e40d0159dd1a4a20241384f8b1`  
		Last Modified: Thu, 07 Jun 2018 00:32:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f380223f9e98942271170b51cc973632adb5b73e176422bb4a0d896717bb42af`  
		Last Modified: Tue, 12 Jun 2018 00:41:21 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93ed26e510147fe17c7767de1b30928f0bff3c4227bd2120fe02cedc66a5ff6`  
		Last Modified: Tue, 12 Jun 2018 00:41:49 GMT  
		Size: 101.2 MB (101213677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091c5822e0362d8a7fb830188f9dbc7d6b2070cd8bff147ca92bfea7bf72ea4`  
		Last Modified: Tue, 12 Jun 2018 00:41:18 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effb98bb7c1780de052bb51a52275ce4f7dce9e49217d6892ac35d80c9c65b33`  
		Last Modified: Tue, 12 Jun 2018 00:42:30 GMT  
		Size: 18.7 MB (18727126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e692a7f46a767178cb53c9fe3ef36909a64317b77bbbdf8a81f3401c46b2ca6f`  
		Last Modified: Tue, 12 Jun 2018 00:42:24 GMT  
		Size: 4.5 MB (4458395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
