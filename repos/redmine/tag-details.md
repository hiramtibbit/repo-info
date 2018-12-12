<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.9`](#redmine339)
-	[`redmine:3.3.9-passenger`](#redmine339-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.7`](#redmine347)
-	[`redmine:3.4.7-passenger`](#redmine347-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:4`](#redmine4)
-	[`redmine:4.0`](#redmine40)
-	[`redmine:4.0.0`](#redmine400)
-	[`redmine:4.0.0-passenger`](#redmine400-passenger)
-	[`redmine:4.0-passenger`](#redmine40-passenger)
-	[`redmine:4-passenger`](#redmine4-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:a70c13edb7adf84949d96fe0d25564cf3d6a13bf3349dbaa5db6c70023ca1085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

```console
$ docker pull redmine@sha256:e5bf44f2c97963e73ab1c69b0504659e2aee55683b34b7a911c76c564a0486ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292374218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040534254cae4972bd5ffb2b3c0126c8f8e1869290f6da878d7ced56b39a4cae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 20:09:43 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 20:13:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 20:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 20:14:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 20:14:05 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:44:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:45:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:45:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:45:17 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:45:18 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:45:18 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:45:19 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 12 Dec 2018 21:45:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:48:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:48:13 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:48:13 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:48:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:48:13 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:48:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0914b5c567ac13dbf8b3357a0bad249723c35a453fad8b1df9be3c0477368d2`  
		Last Modified: Wed, 12 Dec 2018 21:13:26 GMT  
		Size: 23.7 MB (23675298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcdadf31677dcd4ec16a2932b32571c71a6e097b86407ed8ff435aba79fd943`  
		Last Modified: Wed, 12 Dec 2018 21:13:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf86447a68987cb064914f388514dee66160008a1f7ff1f6fa8a7f3a829ca75`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bea7c555d0ed411a02def89c2c4cb1e3096cd3034eebf8809a056f40e63f51`  
		Last Modified: Wed, 12 Dec 2018 21:58:11 GMT  
		Size: 88.0 MB (88041654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e8d415e251072142c72bbe86e53c32c2cbabec984ead574b087877ca282ae2`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.3 MB (1304429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ca819c47852941cb820bbc7d8d8aacb812bce299f204cd9b2b2dd5f9623021`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29087a015e8621e2da8dcfd5eeb9d6bff426073a91ed694fb1478573add9e96e`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3e2fe4aa5217aa43aece8c19b600225c2f611f0ba05a932d5d11d2cbc86117`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 2.5 MB (2460294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a9ce618977ce7fa0588a17fd764113b641ab07ce7f1f3d55f02a8cc06b697a`  
		Last Modified: Wed, 12 Dec 2018 21:58:13 GMT  
		Size: 118.7 MB (118731506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60040424c1d575718a7b9aeb749b91105c3998548c819e80aadce6b5a1f042`  
		Last Modified: Wed, 12 Dec 2018 21:57:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:96d2b436b701037a493ee45d05860bfb0540be8ada36fc825f2ed90c86af7d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

```console
$ docker pull redmine@sha256:a30d300426630cdc8d862cc79767c7c4b9c83609f1e1d6321b9d70952e18a34a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.9 MB (304855427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4179a6dfd4b4d6adc240ac04dd4188bcf8f115bd8cc218396be25815fba3c1a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:26:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:26:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 20:37:17 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 20:40:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 20:40:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 20:40:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 20:40:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 20:40:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 20:40:49 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:49:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:49:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:49:52 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:49:52 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:49:53 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:49:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:49:54 GMT
ENV REDMINE_VERSION=3.3.9
# Wed, 12 Dec 2018 21:49:54 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Wed, 12 Dec 2018 21:49:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:53:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:53:11 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:53:11 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:53:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:53:12 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:53:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a71928f7b199864caa667eae6d42021f13d3831284208c08b1e7236b0347a11`  
		Last Modified: Fri, 16 Nov 2018 20:15:38 GMT  
		Size: 14.5 MB (14481217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2d0c63fe0b32e5cb326248d96ee59799b6e55c9257f72c556b14a4dced0881`  
		Last Modified: Fri, 16 Nov 2018 20:15:30 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8e15a06a9a584b0c827f25eacb037ea4b3691ce6dd55782d69d607f2c750da`  
		Last Modified: Wed, 12 Dec 2018 21:19:11 GMT  
		Size: 36.5 MB (36495884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754469ef30532395ff7e6f8a4f2d9a643737385533eab63d83678065b4acf777`  
		Last Modified: Wed, 12 Dec 2018 21:19:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc8b29a838f2d9b7c6899d330b0bbf174ce783ff4fb464c7ed73cac3f9f4d31`  
		Last Modified: Wed, 12 Dec 2018 22:00:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc83df0dbfd50b70fb07ef5561272d4f4d89033133b3312743258d4f9dde16a3`  
		Last Modified: Wed, 12 Dec 2018 22:00:33 GMT  
		Size: 86.5 MB (86451745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696767bc7cc99f121a1f523de686b94a87be0722ae05e08de8d5ba6b4220dc87`  
		Last Modified: Wed, 12 Dec 2018 22:00:16 GMT  
		Size: 1.3 MB (1304350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6145582bc4ae1fbd726b6fe3c78bb9cb46d95a58019f7e1218f14f2b04350031`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8952387ecbe5d36d5f1b4237f504e71edd7e200fea906749c6891cb6ebbaaabe`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a5afb984c35ae9e4cd80eeb13cb20bf05f92bbd327197fd0aa66da7f9d8ea9`  
		Last Modified: Wed, 12 Dec 2018 22:00:11 GMT  
		Size: 2.4 MB (2395279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd1129c91e0d4d61841bf259429424461d7aa579d5029f41f7af073c86f6216`  
		Last Modified: Wed, 12 Dec 2018 22:00:30 GMT  
		Size: 118.4 MB (118402375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aaa8208ef8672f919e7ca3d5b3535f52397b079f50e9ad8cef16f9d6d57d12`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.9`

```console
$ docker pull redmine@sha256:96d2b436b701037a493ee45d05860bfb0540be8ada36fc825f2ed90c86af7d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.9` - linux; amd64

```console
$ docker pull redmine@sha256:a30d300426630cdc8d862cc79767c7c4b9c83609f1e1d6321b9d70952e18a34a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.9 MB (304855427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4179a6dfd4b4d6adc240ac04dd4188bcf8f115bd8cc218396be25815fba3c1a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:26:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:26:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 20:37:17 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 20:40:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 20:40:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 20:40:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 20:40:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 20:40:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 20:40:49 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:49:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:49:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:49:52 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:49:52 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:49:53 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:49:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:49:54 GMT
ENV REDMINE_VERSION=3.3.9
# Wed, 12 Dec 2018 21:49:54 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Wed, 12 Dec 2018 21:49:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:53:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:53:11 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:53:11 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:53:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:53:12 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:53:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a71928f7b199864caa667eae6d42021f13d3831284208c08b1e7236b0347a11`  
		Last Modified: Fri, 16 Nov 2018 20:15:38 GMT  
		Size: 14.5 MB (14481217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2d0c63fe0b32e5cb326248d96ee59799b6e55c9257f72c556b14a4dced0881`  
		Last Modified: Fri, 16 Nov 2018 20:15:30 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8e15a06a9a584b0c827f25eacb037ea4b3691ce6dd55782d69d607f2c750da`  
		Last Modified: Wed, 12 Dec 2018 21:19:11 GMT  
		Size: 36.5 MB (36495884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754469ef30532395ff7e6f8a4f2d9a643737385533eab63d83678065b4acf777`  
		Last Modified: Wed, 12 Dec 2018 21:19:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc8b29a838f2d9b7c6899d330b0bbf174ce783ff4fb464c7ed73cac3f9f4d31`  
		Last Modified: Wed, 12 Dec 2018 22:00:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc83df0dbfd50b70fb07ef5561272d4f4d89033133b3312743258d4f9dde16a3`  
		Last Modified: Wed, 12 Dec 2018 22:00:33 GMT  
		Size: 86.5 MB (86451745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696767bc7cc99f121a1f523de686b94a87be0722ae05e08de8d5ba6b4220dc87`  
		Last Modified: Wed, 12 Dec 2018 22:00:16 GMT  
		Size: 1.3 MB (1304350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6145582bc4ae1fbd726b6fe3c78bb9cb46d95a58019f7e1218f14f2b04350031`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8952387ecbe5d36d5f1b4237f504e71edd7e200fea906749c6891cb6ebbaaabe`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a5afb984c35ae9e4cd80eeb13cb20bf05f92bbd327197fd0aa66da7f9d8ea9`  
		Last Modified: Wed, 12 Dec 2018 22:00:11 GMT  
		Size: 2.4 MB (2395279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd1129c91e0d4d61841bf259429424461d7aa579d5029f41f7af073c86f6216`  
		Last Modified: Wed, 12 Dec 2018 22:00:30 GMT  
		Size: 118.4 MB (118402375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aaa8208ef8672f919e7ca3d5b3535f52397b079f50e9ad8cef16f9d6d57d12`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.9-passenger`

```console
$ docker pull redmine@sha256:6fb93292450bc1467e4832c891b05d2162a8ac62b63e620b1454a3fe83f1347f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.9-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:ce62fadb1621f5e5191e5f3bac5bba68db33511ff6e88b4aca00eb5a23147a8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328693417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888b08f085c605fd71625dc19b50c7b0c616c9167c2417ba731e5a7b3509288f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:26:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:26:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 20:37:17 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 20:40:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 20:40:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 20:40:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 20:40:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 20:40:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 20:40:49 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:49:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:49:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:49:52 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:49:52 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:49:53 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:49:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:49:54 GMT
ENV REDMINE_VERSION=3.3.9
# Wed, 12 Dec 2018 21:49:54 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Wed, 12 Dec 2018 21:49:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:53:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:53:11 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:53:11 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:53:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:53:12 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:53:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 12 Dec 2018 21:53:38 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 12 Dec 2018 21:53:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:53:53 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 12 Dec 2018 21:53:53 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 12 Dec 2018 21:53:53 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a71928f7b199864caa667eae6d42021f13d3831284208c08b1e7236b0347a11`  
		Last Modified: Fri, 16 Nov 2018 20:15:38 GMT  
		Size: 14.5 MB (14481217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2d0c63fe0b32e5cb326248d96ee59799b6e55c9257f72c556b14a4dced0881`  
		Last Modified: Fri, 16 Nov 2018 20:15:30 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8e15a06a9a584b0c827f25eacb037ea4b3691ce6dd55782d69d607f2c750da`  
		Last Modified: Wed, 12 Dec 2018 21:19:11 GMT  
		Size: 36.5 MB (36495884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754469ef30532395ff7e6f8a4f2d9a643737385533eab63d83678065b4acf777`  
		Last Modified: Wed, 12 Dec 2018 21:19:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc8b29a838f2d9b7c6899d330b0bbf174ce783ff4fb464c7ed73cac3f9f4d31`  
		Last Modified: Wed, 12 Dec 2018 22:00:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc83df0dbfd50b70fb07ef5561272d4f4d89033133b3312743258d4f9dde16a3`  
		Last Modified: Wed, 12 Dec 2018 22:00:33 GMT  
		Size: 86.5 MB (86451745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696767bc7cc99f121a1f523de686b94a87be0722ae05e08de8d5ba6b4220dc87`  
		Last Modified: Wed, 12 Dec 2018 22:00:16 GMT  
		Size: 1.3 MB (1304350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6145582bc4ae1fbd726b6fe3c78bb9cb46d95a58019f7e1218f14f2b04350031`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8952387ecbe5d36d5f1b4237f504e71edd7e200fea906749c6891cb6ebbaaabe`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a5afb984c35ae9e4cd80eeb13cb20bf05f92bbd327197fd0aa66da7f9d8ea9`  
		Last Modified: Wed, 12 Dec 2018 22:00:11 GMT  
		Size: 2.4 MB (2395279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd1129c91e0d4d61841bf259429424461d7aa579d5029f41f7af073c86f6216`  
		Last Modified: Wed, 12 Dec 2018 22:00:30 GMT  
		Size: 118.4 MB (118402375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aaa8208ef8672f919e7ca3d5b3535f52397b079f50e9ad8cef16f9d6d57d12`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efa7aa3793eb1c91f77965fb7a155a0a8c9d4b0f8e1563898f5fddcab93c0c4`  
		Last Modified: Wed, 12 Dec 2018 22:01:13 GMT  
		Size: 19.4 MB (19358868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7818cba51511f34733eb5d0a6338f7035c86927eae263a5eac7c3e3e82f917`  
		Last Modified: Wed, 12 Dec 2018 22:01:11 GMT  
		Size: 4.5 MB (4479122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:6fb93292450bc1467e4832c891b05d2162a8ac62b63e620b1454a3fe83f1347f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:ce62fadb1621f5e5191e5f3bac5bba68db33511ff6e88b4aca00eb5a23147a8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328693417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888b08f085c605fd71625dc19b50c7b0c616c9167c2417ba731e5a7b3509288f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:26:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:26:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_MAJOR=2.3
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 16 Nov 2018 19:26:02 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 20:37:17 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 20:40:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 20:40:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 20:40:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 20:40:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 20:40:48 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 20:40:49 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:49:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:49:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:49:52 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:49:52 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:49:53 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:49:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:49:54 GMT
ENV REDMINE_VERSION=3.3.9
# Wed, 12 Dec 2018 21:49:54 GMT
ENV REDMINE_DOWNLOAD_MD5=eeb4e92681987fe1726cb962803d5cf1
# Wed, 12 Dec 2018 21:49:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:53:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:53:11 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:53:11 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:53:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:53:12 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:53:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 12 Dec 2018 21:53:38 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 12 Dec 2018 21:53:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:53:53 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 12 Dec 2018 21:53:53 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 12 Dec 2018 21:53:53 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a71928f7b199864caa667eae6d42021f13d3831284208c08b1e7236b0347a11`  
		Last Modified: Fri, 16 Nov 2018 20:15:38 GMT  
		Size: 14.5 MB (14481217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2d0c63fe0b32e5cb326248d96ee59799b6e55c9257f72c556b14a4dced0881`  
		Last Modified: Fri, 16 Nov 2018 20:15:30 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8e15a06a9a584b0c827f25eacb037ea4b3691ce6dd55782d69d607f2c750da`  
		Last Modified: Wed, 12 Dec 2018 21:19:11 GMT  
		Size: 36.5 MB (36495884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754469ef30532395ff7e6f8a4f2d9a643737385533eab63d83678065b4acf777`  
		Last Modified: Wed, 12 Dec 2018 21:19:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc8b29a838f2d9b7c6899d330b0bbf174ce783ff4fb464c7ed73cac3f9f4d31`  
		Last Modified: Wed, 12 Dec 2018 22:00:16 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc83df0dbfd50b70fb07ef5561272d4f4d89033133b3312743258d4f9dde16a3`  
		Last Modified: Wed, 12 Dec 2018 22:00:33 GMT  
		Size: 86.5 MB (86451745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696767bc7cc99f121a1f523de686b94a87be0722ae05e08de8d5ba6b4220dc87`  
		Last Modified: Wed, 12 Dec 2018 22:00:16 GMT  
		Size: 1.3 MB (1304350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6145582bc4ae1fbd726b6fe3c78bb9cb46d95a58019f7e1218f14f2b04350031`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8952387ecbe5d36d5f1b4237f504e71edd7e200fea906749c6891cb6ebbaaabe`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a5afb984c35ae9e4cd80eeb13cb20bf05f92bbd327197fd0aa66da7f9d8ea9`  
		Last Modified: Wed, 12 Dec 2018 22:00:11 GMT  
		Size: 2.4 MB (2395279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd1129c91e0d4d61841bf259429424461d7aa579d5029f41f7af073c86f6216`  
		Last Modified: Wed, 12 Dec 2018 22:00:30 GMT  
		Size: 118.4 MB (118402375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aaa8208ef8672f919e7ca3d5b3535f52397b079f50e9ad8cef16f9d6d57d12`  
		Last Modified: Wed, 12 Dec 2018 22:00:10 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efa7aa3793eb1c91f77965fb7a155a0a8c9d4b0f8e1563898f5fddcab93c0c4`  
		Last Modified: Wed, 12 Dec 2018 22:01:13 GMT  
		Size: 19.4 MB (19358868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7818cba51511f34733eb5d0a6338f7035c86927eae263a5eac7c3e3e82f917`  
		Last Modified: Wed, 12 Dec 2018 22:01:11 GMT  
		Size: 4.5 MB (4479122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:a70c13edb7adf84949d96fe0d25564cf3d6a13bf3349dbaa5db6c70023ca1085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4` - linux; amd64

```console
$ docker pull redmine@sha256:e5bf44f2c97963e73ab1c69b0504659e2aee55683b34b7a911c76c564a0486ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292374218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040534254cae4972bd5ffb2b3c0126c8f8e1869290f6da878d7ced56b39a4cae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 20:09:43 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 20:13:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 20:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 20:14:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 20:14:05 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:44:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:45:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:45:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:45:17 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:45:18 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:45:18 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:45:19 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 12 Dec 2018 21:45:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:48:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:48:13 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:48:13 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:48:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:48:13 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:48:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0914b5c567ac13dbf8b3357a0bad249723c35a453fad8b1df9be3c0477368d2`  
		Last Modified: Wed, 12 Dec 2018 21:13:26 GMT  
		Size: 23.7 MB (23675298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcdadf31677dcd4ec16a2932b32571c71a6e097b86407ed8ff435aba79fd943`  
		Last Modified: Wed, 12 Dec 2018 21:13:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf86447a68987cb064914f388514dee66160008a1f7ff1f6fa8a7f3a829ca75`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bea7c555d0ed411a02def89c2c4cb1e3096cd3034eebf8809a056f40e63f51`  
		Last Modified: Wed, 12 Dec 2018 21:58:11 GMT  
		Size: 88.0 MB (88041654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e8d415e251072142c72bbe86e53c32c2cbabec984ead574b087877ca282ae2`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.3 MB (1304429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ca819c47852941cb820bbc7d8d8aacb812bce299f204cd9b2b2dd5f9623021`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29087a015e8621e2da8dcfd5eeb9d6bff426073a91ed694fb1478573add9e96e`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3e2fe4aa5217aa43aece8c19b600225c2f611f0ba05a932d5d11d2cbc86117`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 2.5 MB (2460294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a9ce618977ce7fa0588a17fd764113b641ab07ce7f1f3d55f02a8cc06b697a`  
		Last Modified: Wed, 12 Dec 2018 21:58:13 GMT  
		Size: 118.7 MB (118731506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60040424c1d575718a7b9aeb749b91105c3998548c819e80aadce6b5a1f042`  
		Last Modified: Wed, 12 Dec 2018 21:57:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.7`

```console
$ docker pull redmine@sha256:a70c13edb7adf84949d96fe0d25564cf3d6a13bf3349dbaa5db6c70023ca1085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.7` - linux; amd64

```console
$ docker pull redmine@sha256:e5bf44f2c97963e73ab1c69b0504659e2aee55683b34b7a911c76c564a0486ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292374218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040534254cae4972bd5ffb2b3c0126c8f8e1869290f6da878d7ced56b39a4cae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 20:09:43 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 20:13:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 20:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 20:14:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 20:14:05 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:44:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:45:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:45:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:45:17 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:45:18 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:45:18 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:45:19 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 12 Dec 2018 21:45:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:48:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:48:13 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:48:13 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:48:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:48:13 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:48:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0914b5c567ac13dbf8b3357a0bad249723c35a453fad8b1df9be3c0477368d2`  
		Last Modified: Wed, 12 Dec 2018 21:13:26 GMT  
		Size: 23.7 MB (23675298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcdadf31677dcd4ec16a2932b32571c71a6e097b86407ed8ff435aba79fd943`  
		Last Modified: Wed, 12 Dec 2018 21:13:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf86447a68987cb064914f388514dee66160008a1f7ff1f6fa8a7f3a829ca75`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bea7c555d0ed411a02def89c2c4cb1e3096cd3034eebf8809a056f40e63f51`  
		Last Modified: Wed, 12 Dec 2018 21:58:11 GMT  
		Size: 88.0 MB (88041654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e8d415e251072142c72bbe86e53c32c2cbabec984ead574b087877ca282ae2`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.3 MB (1304429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ca819c47852941cb820bbc7d8d8aacb812bce299f204cd9b2b2dd5f9623021`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29087a015e8621e2da8dcfd5eeb9d6bff426073a91ed694fb1478573add9e96e`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3e2fe4aa5217aa43aece8c19b600225c2f611f0ba05a932d5d11d2cbc86117`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 2.5 MB (2460294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a9ce618977ce7fa0588a17fd764113b641ab07ce7f1f3d55f02a8cc06b697a`  
		Last Modified: Wed, 12 Dec 2018 21:58:13 GMT  
		Size: 118.7 MB (118731506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60040424c1d575718a7b9aeb749b91105c3998548c819e80aadce6b5a1f042`  
		Last Modified: Wed, 12 Dec 2018 21:57:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.7-passenger`

```console
$ docker pull redmine@sha256:4a9c0c4d45df3d0c6a76b977b3e557e605ccec90b0153233fa24d9934514d70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.7-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:919cd58cfa95a95429da573835019c1971e0c411f38f2010e6d43f1e3af4fd6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.2 MB (316209413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb1bc760a9b25c4fff821d34104a6fe9c34dfe3168fa8f3ec0b239779e3736e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 20:09:43 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 20:13:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 20:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 20:14:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 20:14:05 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:44:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:45:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:45:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:45:17 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:45:18 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:45:18 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:45:19 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 12 Dec 2018 21:45:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:48:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:48:13 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:48:13 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:48:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:48:13 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:48:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 12 Dec 2018 21:48:47 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 12 Dec 2018 21:49:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:49:01 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 12 Dec 2018 21:49:02 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 12 Dec 2018 21:49:02 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0914b5c567ac13dbf8b3357a0bad249723c35a453fad8b1df9be3c0477368d2`  
		Last Modified: Wed, 12 Dec 2018 21:13:26 GMT  
		Size: 23.7 MB (23675298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcdadf31677dcd4ec16a2932b32571c71a6e097b86407ed8ff435aba79fd943`  
		Last Modified: Wed, 12 Dec 2018 21:13:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf86447a68987cb064914f388514dee66160008a1f7ff1f6fa8a7f3a829ca75`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bea7c555d0ed411a02def89c2c4cb1e3096cd3034eebf8809a056f40e63f51`  
		Last Modified: Wed, 12 Dec 2018 21:58:11 GMT  
		Size: 88.0 MB (88041654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e8d415e251072142c72bbe86e53c32c2cbabec984ead574b087877ca282ae2`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.3 MB (1304429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ca819c47852941cb820bbc7d8d8aacb812bce299f204cd9b2b2dd5f9623021`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29087a015e8621e2da8dcfd5eeb9d6bff426073a91ed694fb1478573add9e96e`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3e2fe4aa5217aa43aece8c19b600225c2f611f0ba05a932d5d11d2cbc86117`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 2.5 MB (2460294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a9ce618977ce7fa0588a17fd764113b641ab07ce7f1f3d55f02a8cc06b697a`  
		Last Modified: Wed, 12 Dec 2018 21:58:13 GMT  
		Size: 118.7 MB (118731506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60040424c1d575718a7b9aeb749b91105c3998548c819e80aadce6b5a1f042`  
		Last Modified: Wed, 12 Dec 2018 21:57:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c144566f7ff983bc87448ad38bfd78c2e7092521fd45ef6f4d35e0229aa225c0`  
		Last Modified: Wed, 12 Dec 2018 21:59:17 GMT  
		Size: 19.4 MB (19356072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff3da8ee701a244e6605b9a1463699a1ddaf2859e778630fae73f494beb8553`  
		Last Modified: Wed, 12 Dec 2018 21:59:14 GMT  
		Size: 4.5 MB (4479123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:4a9c0c4d45df3d0c6a76b977b3e557e605ccec90b0153233fa24d9934514d70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:919cd58cfa95a95429da573835019c1971e0c411f38f2010e6d43f1e3af4fd6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.2 MB (316209413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb1bc760a9b25c4fff821d34104a6fe9c34dfe3168fa8f3ec0b239779e3736e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 20:09:43 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 20:13:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 20:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 20:14:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 20:14:05 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:44:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:45:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:45:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:45:17 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:45:18 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:45:18 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:45:19 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 12 Dec 2018 21:45:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:48:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:48:13 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:48:13 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:48:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:48:13 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:48:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 12 Dec 2018 21:48:47 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 12 Dec 2018 21:49:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:49:01 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 12 Dec 2018 21:49:02 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 12 Dec 2018 21:49:02 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0914b5c567ac13dbf8b3357a0bad249723c35a453fad8b1df9be3c0477368d2`  
		Last Modified: Wed, 12 Dec 2018 21:13:26 GMT  
		Size: 23.7 MB (23675298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcdadf31677dcd4ec16a2932b32571c71a6e097b86407ed8ff435aba79fd943`  
		Last Modified: Wed, 12 Dec 2018 21:13:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf86447a68987cb064914f388514dee66160008a1f7ff1f6fa8a7f3a829ca75`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bea7c555d0ed411a02def89c2c4cb1e3096cd3034eebf8809a056f40e63f51`  
		Last Modified: Wed, 12 Dec 2018 21:58:11 GMT  
		Size: 88.0 MB (88041654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e8d415e251072142c72bbe86e53c32c2cbabec984ead574b087877ca282ae2`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.3 MB (1304429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ca819c47852941cb820bbc7d8d8aacb812bce299f204cd9b2b2dd5f9623021`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29087a015e8621e2da8dcfd5eeb9d6bff426073a91ed694fb1478573add9e96e`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3e2fe4aa5217aa43aece8c19b600225c2f611f0ba05a932d5d11d2cbc86117`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 2.5 MB (2460294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a9ce618977ce7fa0588a17fd764113b641ab07ce7f1f3d55f02a8cc06b697a`  
		Last Modified: Wed, 12 Dec 2018 21:58:13 GMT  
		Size: 118.7 MB (118731506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60040424c1d575718a7b9aeb749b91105c3998548c819e80aadce6b5a1f042`  
		Last Modified: Wed, 12 Dec 2018 21:57:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c144566f7ff983bc87448ad38bfd78c2e7092521fd45ef6f4d35e0229aa225c0`  
		Last Modified: Wed, 12 Dec 2018 21:59:17 GMT  
		Size: 19.4 MB (19356072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff3da8ee701a244e6605b9a1463699a1ddaf2859e778630fae73f494beb8553`  
		Last Modified: Wed, 12 Dec 2018 21:59:14 GMT  
		Size: 4.5 MB (4479123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:4a9c0c4d45df3d0c6a76b977b3e557e605ccec90b0153233fa24d9934514d70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:919cd58cfa95a95429da573835019c1971e0c411f38f2010e6d43f1e3af4fd6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.2 MB (316209413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb1bc760a9b25c4fff821d34104a6fe9c34dfe3168fa8f3ec0b239779e3736e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Nov 2018 18:50:57 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 16 Nov 2018 18:50:58 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 20:09:43 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 20:13:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 20:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 20:14:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 20:14:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 20:14:05 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:44:45 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:45:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:45:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:45:17 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:45:18 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:45:18 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:45:19 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_VERSION=3.4.7
# Wed, 12 Dec 2018 21:45:19 GMT
ENV REDMINE_DOWNLOAD_MD5=06db1556593192856dfe155b794e8037
# Wed, 12 Dec 2018 21:45:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:48:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:48:13 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:48:13 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:48:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:48:13 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:48:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 12 Dec 2018 21:48:47 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 12 Dec 2018 21:49:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:49:01 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 12 Dec 2018 21:49:02 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 12 Dec 2018 21:49:02 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0914b5c567ac13dbf8b3357a0bad249723c35a453fad8b1df9be3c0477368d2`  
		Last Modified: Wed, 12 Dec 2018 21:13:26 GMT  
		Size: 23.7 MB (23675298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcdadf31677dcd4ec16a2932b32571c71a6e097b86407ed8ff435aba79fd943`  
		Last Modified: Wed, 12 Dec 2018 21:13:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf86447a68987cb064914f388514dee66160008a1f7ff1f6fa8a7f3a829ca75`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bea7c555d0ed411a02def89c2c4cb1e3096cd3034eebf8809a056f40e63f51`  
		Last Modified: Wed, 12 Dec 2018 21:58:11 GMT  
		Size: 88.0 MB (88041654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e8d415e251072142c72bbe86e53c32c2cbabec984ead574b087877ca282ae2`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 1.3 MB (1304429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ca819c47852941cb820bbc7d8d8aacb812bce299f204cd9b2b2dd5f9623021`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29087a015e8621e2da8dcfd5eeb9d6bff426073a91ed694fb1478573add9e96e`  
		Last Modified: Wed, 12 Dec 2018 21:57:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3e2fe4aa5217aa43aece8c19b600225c2f611f0ba05a932d5d11d2cbc86117`  
		Last Modified: Wed, 12 Dec 2018 21:57:54 GMT  
		Size: 2.5 MB (2460294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a9ce618977ce7fa0588a17fd764113b641ab07ce7f1f3d55f02a8cc06b697a`  
		Last Modified: Wed, 12 Dec 2018 21:58:13 GMT  
		Size: 118.7 MB (118731506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60040424c1d575718a7b9aeb749b91105c3998548c819e80aadce6b5a1f042`  
		Last Modified: Wed, 12 Dec 2018 21:57:51 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c144566f7ff983bc87448ad38bfd78c2e7092521fd45ef6f4d35e0229aa225c0`  
		Last Modified: Wed, 12 Dec 2018 21:59:17 GMT  
		Size: 19.4 MB (19356072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff3da8ee701a244e6605b9a1463699a1ddaf2859e778630fae73f494beb8553`  
		Last Modified: Wed, 12 Dec 2018 21:59:14 GMT  
		Size: 4.5 MB (4479123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4`

```console
$ docker pull redmine@sha256:d3fb3ef0dc40c3484ba745c3f6685d734eaefce4475f511f5cc64775f18070c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4` - linux; amd64

```console
$ docker pull redmine@sha256:9d344de1c386b7e2df75a317a0b709cba13c1a3361a71860f1502d301c6a09e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.7 MB (291713392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff33f12e8c071f4be47682f03b53fca2f651dbe77e0f0b65bea0dcd26b97539`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 18:34:36 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 19:54:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 19:57:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 19:57:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:57:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 19:57:57 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:38:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:39:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:39:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:39:53 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:39:53 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:39:54 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 12 Dec 2018 21:39:55 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 12 Dec 2018 21:39:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:43:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:43:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:43:46 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:43:46 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:43:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4d6a6a3607db723f1f459cbd6cdcd722a557af938282bbaf47cf7d1edac4d`  
		Last Modified: Wed, 12 Dec 2018 21:06:35 GMT  
		Size: 24.0 MB (24015372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefa4443a084302c1d26fe93760f91ce29bd36261d7417bb661013229da2942d`  
		Last Modified: Wed, 12 Dec 2018 21:06:31 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068e8ec9a290650b2fc6030a136f79f1acf79c6e296f65f7b7008501fce2c69`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2d7907cb6626611223ff89e5941dc1747c44d7acd09f50855df1ff9529050`  
		Last Modified: Wed, 12 Dec 2018 21:55:22 GMT  
		Size: 88.0 MB (88040726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcdd5a23b169e60c8e74828eaa934809ab33979d1203789ede432fd350ab805`  
		Last Modified: Wed, 12 Dec 2018 21:55:03 GMT  
		Size: 1.3 MB (1304330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd1ffc132bda669da5df43562e0c57f3f4ef033247b7e0540f3df633895b9b0`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81300c73135f8b4b219623f225bc19b8d8e29cb15da05477cc9930209e9c41e7`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfebeb4be7f5f0632d1f5e091f356830d542be4181eeaf4504a29e5d1380bdc`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 2.5 MB (2525128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3773e78a482bb6e9d5ee88b4a3bb181384d75cace6fbd9476417f29ebcb10f1a`  
		Last Modified: Wed, 12 Dec 2018 21:55:25 GMT  
		Size: 117.7 MB (117666802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6eee574679f9784b86a89309b2f20603d3e813098f27c502e80a7d4a4d30c8`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0`

```console
$ docker pull redmine@sha256:d3fb3ef0dc40c3484ba745c3f6685d734eaefce4475f511f5cc64775f18070c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4.0` - linux; amd64

```console
$ docker pull redmine@sha256:9d344de1c386b7e2df75a317a0b709cba13c1a3361a71860f1502d301c6a09e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.7 MB (291713392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff33f12e8c071f4be47682f03b53fca2f651dbe77e0f0b65bea0dcd26b97539`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 18:34:36 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 19:54:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 19:57:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 19:57:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:57:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 19:57:57 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:38:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:39:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:39:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:39:53 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:39:53 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:39:54 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 12 Dec 2018 21:39:55 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 12 Dec 2018 21:39:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:43:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:43:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:43:46 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:43:46 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:43:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4d6a6a3607db723f1f459cbd6cdcd722a557af938282bbaf47cf7d1edac4d`  
		Last Modified: Wed, 12 Dec 2018 21:06:35 GMT  
		Size: 24.0 MB (24015372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefa4443a084302c1d26fe93760f91ce29bd36261d7417bb661013229da2942d`  
		Last Modified: Wed, 12 Dec 2018 21:06:31 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068e8ec9a290650b2fc6030a136f79f1acf79c6e296f65f7b7008501fce2c69`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2d7907cb6626611223ff89e5941dc1747c44d7acd09f50855df1ff9529050`  
		Last Modified: Wed, 12 Dec 2018 21:55:22 GMT  
		Size: 88.0 MB (88040726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcdd5a23b169e60c8e74828eaa934809ab33979d1203789ede432fd350ab805`  
		Last Modified: Wed, 12 Dec 2018 21:55:03 GMT  
		Size: 1.3 MB (1304330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd1ffc132bda669da5df43562e0c57f3f4ef033247b7e0540f3df633895b9b0`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81300c73135f8b4b219623f225bc19b8d8e29cb15da05477cc9930209e9c41e7`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfebeb4be7f5f0632d1f5e091f356830d542be4181eeaf4504a29e5d1380bdc`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 2.5 MB (2525128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3773e78a482bb6e9d5ee88b4a3bb181384d75cace6fbd9476417f29ebcb10f1a`  
		Last Modified: Wed, 12 Dec 2018 21:55:25 GMT  
		Size: 117.7 MB (117666802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6eee574679f9784b86a89309b2f20603d3e813098f27c502e80a7d4a4d30c8`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0.0`

```console
$ docker pull redmine@sha256:d3fb3ef0dc40c3484ba745c3f6685d734eaefce4475f511f5cc64775f18070c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4.0.0` - linux; amd64

```console
$ docker pull redmine@sha256:9d344de1c386b7e2df75a317a0b709cba13c1a3361a71860f1502d301c6a09e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.7 MB (291713392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff33f12e8c071f4be47682f03b53fca2f651dbe77e0f0b65bea0dcd26b97539`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 18:34:36 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 19:54:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 19:57:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 19:57:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:57:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 19:57:57 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:38:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:39:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:39:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:39:53 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:39:53 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:39:54 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 12 Dec 2018 21:39:55 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 12 Dec 2018 21:39:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:43:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:43:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:43:46 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:43:46 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:43:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4d6a6a3607db723f1f459cbd6cdcd722a557af938282bbaf47cf7d1edac4d`  
		Last Modified: Wed, 12 Dec 2018 21:06:35 GMT  
		Size: 24.0 MB (24015372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefa4443a084302c1d26fe93760f91ce29bd36261d7417bb661013229da2942d`  
		Last Modified: Wed, 12 Dec 2018 21:06:31 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068e8ec9a290650b2fc6030a136f79f1acf79c6e296f65f7b7008501fce2c69`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2d7907cb6626611223ff89e5941dc1747c44d7acd09f50855df1ff9529050`  
		Last Modified: Wed, 12 Dec 2018 21:55:22 GMT  
		Size: 88.0 MB (88040726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcdd5a23b169e60c8e74828eaa934809ab33979d1203789ede432fd350ab805`  
		Last Modified: Wed, 12 Dec 2018 21:55:03 GMT  
		Size: 1.3 MB (1304330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd1ffc132bda669da5df43562e0c57f3f4ef033247b7e0540f3df633895b9b0`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81300c73135f8b4b219623f225bc19b8d8e29cb15da05477cc9930209e9c41e7`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfebeb4be7f5f0632d1f5e091f356830d542be4181eeaf4504a29e5d1380bdc`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 2.5 MB (2525128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3773e78a482bb6e9d5ee88b4a3bb181384d75cace6fbd9476417f29ebcb10f1a`  
		Last Modified: Wed, 12 Dec 2018 21:55:25 GMT  
		Size: 117.7 MB (117666802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6eee574679f9784b86a89309b2f20603d3e813098f27c502e80a7d4a4d30c8`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0.0-passenger`

```console
$ docker pull redmine@sha256:f9de75f95cdb8b5544f6bf8a623429550e28038271724709d0626fc19d6e6b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4.0.0-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9b6d0d387947447ee7b30c9eb7e6b6f20c016ee8cea6ba975076d795a0750144
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315549373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d304b4d414c7cf300a970fe300e0d809cacda156bbd552b802259e1caeac52e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 18:34:36 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 19:54:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 19:57:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 19:57:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:57:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 19:57:57 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:38:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:39:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:39:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:39:53 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:39:53 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:39:54 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 12 Dec 2018 21:39:55 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 12 Dec 2018 21:39:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:43:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:43:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:43:46 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:43:46 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:43:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 12 Dec 2018 21:44:10 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 12 Dec 2018 21:44:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:44:25 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 12 Dec 2018 21:44:25 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 12 Dec 2018 21:44:25 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4d6a6a3607db723f1f459cbd6cdcd722a557af938282bbaf47cf7d1edac4d`  
		Last Modified: Wed, 12 Dec 2018 21:06:35 GMT  
		Size: 24.0 MB (24015372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefa4443a084302c1d26fe93760f91ce29bd36261d7417bb661013229da2942d`  
		Last Modified: Wed, 12 Dec 2018 21:06:31 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068e8ec9a290650b2fc6030a136f79f1acf79c6e296f65f7b7008501fce2c69`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2d7907cb6626611223ff89e5941dc1747c44d7acd09f50855df1ff9529050`  
		Last Modified: Wed, 12 Dec 2018 21:55:22 GMT  
		Size: 88.0 MB (88040726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcdd5a23b169e60c8e74828eaa934809ab33979d1203789ede432fd350ab805`  
		Last Modified: Wed, 12 Dec 2018 21:55:03 GMT  
		Size: 1.3 MB (1304330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd1ffc132bda669da5df43562e0c57f3f4ef033247b7e0540f3df633895b9b0`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81300c73135f8b4b219623f225bc19b8d8e29cb15da05477cc9930209e9c41e7`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfebeb4be7f5f0632d1f5e091f356830d542be4181eeaf4504a29e5d1380bdc`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 2.5 MB (2525128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3773e78a482bb6e9d5ee88b4a3bb181384d75cace6fbd9476417f29ebcb10f1a`  
		Last Modified: Wed, 12 Dec 2018 21:55:25 GMT  
		Size: 117.7 MB (117666802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6eee574679f9784b86a89309b2f20603d3e813098f27c502e80a7d4a4d30c8`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e787a1f400ad1194072ad12bad64e04522d408cc885b4b89686c84da70e80b16`  
		Last Modified: Wed, 12 Dec 2018 21:56:43 GMT  
		Size: 19.4 MB (19356861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b806f88ce284e1b0d06bf688330bbcdb2e5e5807ac1af4a1e0d33bdb66cb79`  
		Last Modified: Wed, 12 Dec 2018 21:56:39 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0-passenger`

```console
$ docker pull redmine@sha256:f9de75f95cdb8b5544f6bf8a623429550e28038271724709d0626fc19d6e6b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4.0-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9b6d0d387947447ee7b30c9eb7e6b6f20c016ee8cea6ba975076d795a0750144
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315549373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d304b4d414c7cf300a970fe300e0d809cacda156bbd552b802259e1caeac52e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 18:34:36 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 19:54:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 19:57:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 19:57:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:57:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 19:57:57 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:38:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:39:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:39:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:39:53 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:39:53 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:39:54 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 12 Dec 2018 21:39:55 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 12 Dec 2018 21:39:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:43:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:43:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:43:46 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:43:46 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:43:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 12 Dec 2018 21:44:10 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 12 Dec 2018 21:44:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:44:25 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 12 Dec 2018 21:44:25 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 12 Dec 2018 21:44:25 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4d6a6a3607db723f1f459cbd6cdcd722a557af938282bbaf47cf7d1edac4d`  
		Last Modified: Wed, 12 Dec 2018 21:06:35 GMT  
		Size: 24.0 MB (24015372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefa4443a084302c1d26fe93760f91ce29bd36261d7417bb661013229da2942d`  
		Last Modified: Wed, 12 Dec 2018 21:06:31 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068e8ec9a290650b2fc6030a136f79f1acf79c6e296f65f7b7008501fce2c69`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2d7907cb6626611223ff89e5941dc1747c44d7acd09f50855df1ff9529050`  
		Last Modified: Wed, 12 Dec 2018 21:55:22 GMT  
		Size: 88.0 MB (88040726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcdd5a23b169e60c8e74828eaa934809ab33979d1203789ede432fd350ab805`  
		Last Modified: Wed, 12 Dec 2018 21:55:03 GMT  
		Size: 1.3 MB (1304330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd1ffc132bda669da5df43562e0c57f3f4ef033247b7e0540f3df633895b9b0`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81300c73135f8b4b219623f225bc19b8d8e29cb15da05477cc9930209e9c41e7`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfebeb4be7f5f0632d1f5e091f356830d542be4181eeaf4504a29e5d1380bdc`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 2.5 MB (2525128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3773e78a482bb6e9d5ee88b4a3bb181384d75cace6fbd9476417f29ebcb10f1a`  
		Last Modified: Wed, 12 Dec 2018 21:55:25 GMT  
		Size: 117.7 MB (117666802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6eee574679f9784b86a89309b2f20603d3e813098f27c502e80a7d4a4d30c8`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e787a1f400ad1194072ad12bad64e04522d408cc885b4b89686c84da70e80b16`  
		Last Modified: Wed, 12 Dec 2018 21:56:43 GMT  
		Size: 19.4 MB (19356861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b806f88ce284e1b0d06bf688330bbcdb2e5e5807ac1af4a1e0d33bdb66cb79`  
		Last Modified: Wed, 12 Dec 2018 21:56:39 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4-passenger`

```console
$ docker pull redmine@sha256:f9de75f95cdb8b5544f6bf8a623429550e28038271724709d0626fc19d6e6b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9b6d0d387947447ee7b30c9eb7e6b6f20c016ee8cea6ba975076d795a0750144
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315549373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d304b4d414c7cf300a970fe300e0d809cacda156bbd552b802259e1caeac52e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 18:34:36 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 19:54:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 19:57:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 19:57:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:57:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 19:57:57 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:38:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:39:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:39:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:39:53 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:39:53 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:39:54 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 12 Dec 2018 21:39:55 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 12 Dec 2018 21:39:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:43:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:43:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:43:46 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:43:46 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:43:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 12 Dec 2018 21:44:10 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 12 Dec 2018 21:44:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:44:25 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 12 Dec 2018 21:44:25 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 12 Dec 2018 21:44:25 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4d6a6a3607db723f1f459cbd6cdcd722a557af938282bbaf47cf7d1edac4d`  
		Last Modified: Wed, 12 Dec 2018 21:06:35 GMT  
		Size: 24.0 MB (24015372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefa4443a084302c1d26fe93760f91ce29bd36261d7417bb661013229da2942d`  
		Last Modified: Wed, 12 Dec 2018 21:06:31 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068e8ec9a290650b2fc6030a136f79f1acf79c6e296f65f7b7008501fce2c69`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2d7907cb6626611223ff89e5941dc1747c44d7acd09f50855df1ff9529050`  
		Last Modified: Wed, 12 Dec 2018 21:55:22 GMT  
		Size: 88.0 MB (88040726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcdd5a23b169e60c8e74828eaa934809ab33979d1203789ede432fd350ab805`  
		Last Modified: Wed, 12 Dec 2018 21:55:03 GMT  
		Size: 1.3 MB (1304330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd1ffc132bda669da5df43562e0c57f3f4ef033247b7e0540f3df633895b9b0`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81300c73135f8b4b219623f225bc19b8d8e29cb15da05477cc9930209e9c41e7`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfebeb4be7f5f0632d1f5e091f356830d542be4181eeaf4504a29e5d1380bdc`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 2.5 MB (2525128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3773e78a482bb6e9d5ee88b4a3bb181384d75cace6fbd9476417f29ebcb10f1a`  
		Last Modified: Wed, 12 Dec 2018 21:55:25 GMT  
		Size: 117.7 MB (117666802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6eee574679f9784b86a89309b2f20603d3e813098f27c502e80a7d4a4d30c8`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e787a1f400ad1194072ad12bad64e04522d408cc885b4b89686c84da70e80b16`  
		Last Modified: Wed, 12 Dec 2018 21:56:43 GMT  
		Size: 19.4 MB (19356861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b806f88ce284e1b0d06bf688330bbcdb2e5e5807ac1af4a1e0d33bdb66cb79`  
		Last Modified: Wed, 12 Dec 2018 21:56:39 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:f32bac02e6473a77c90467c08219bdfda5085d59207bb62f7f9101092ee3eace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

```console
$ docker pull redmine@sha256:41de07ef6f413eef07c9e725f263a89881916068f966243848c39ef103fdda0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.7 MB (291704485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b48ffce6d399d038d84d750799201dcae34fd3298e10e0a7b7f651f76db542d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 18:34:36 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Fri, 16 Nov 2018 18:34:36 GMT
ENV BUNDLER_VERSION=1.17.1
# Fri, 16 Nov 2018 18:41:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Nov 2018 18:41:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Nov 2018 18:41:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Nov 2018 18:41:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 18:41:26 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 16 Nov 2018 18:41:27 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 19:52:30 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 19:53:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 19:53:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 19:53:43 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 19:53:43 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 19:53:44 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 19:53:45 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 19:53:45 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 12 Dec 2018 19:53:46 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 12 Dec 2018 19:53:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 19:58:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 19:58:30 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 19:58:30 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 19:58:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 19:58:31 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 19:58:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1ecc29dfb53c02cf4eebed55a4e60b1fbc4c0eb49a18bf6b39dbd0ed9a470d`  
		Last Modified: Fri, 16 Nov 2018 20:04:35 GMT  
		Size: 22.1 MB (22126379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b171cf807bfc6dd68fee4d9038d2d7edc7cc53a1a7f9098aa77757123bf0043b`  
		Last Modified: Fri, 16 Nov 2018 20:04:27 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69554fc74262e97ffb087b33b62d071fa33c0a343d43b887334d7cd63a5b036`  
		Last Modified: Wed, 12 Dec 2018 20:11:08 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b81af96fe1e353eb03c3fd945f577a2cffda877e56af6f9dcb659e30fb49cb4`  
		Last Modified: Wed, 12 Dec 2018 20:11:33 GMT  
		Size: 89.9 MB (89921242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f032727413397a5cbd9e47f4c5f106b3cf862a9775d316de1a94b3c61864c3`  
		Last Modified: Wed, 12 Dec 2018 20:11:08 GMT  
		Size: 1.3 MB (1304560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2e6eaa925c5a8e744ed3da19c1e3ce9da95c3258b4d34d9f216c3d146738d2`  
		Last Modified: Wed, 12 Dec 2018 20:11:06 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dbfcc693b32f4a693617e5cab54570e4fd0f58aca9c6910835ec8a2dda7cce`  
		Last Modified: Wed, 12 Dec 2018 20:11:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437875c81bda7fd14be503a118cff80faf580777382d9b868721c4414207251`  
		Last Modified: Wed, 12 Dec 2018 20:11:07 GMT  
		Size: 2.5 MB (2525133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a86ef700c63b7745ce209cd98ec0bcf315a22ed14f310155f57f30c7cb61011`  
		Last Modified: Wed, 12 Dec 2018 20:11:35 GMT  
		Size: 117.7 MB (117666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d92ca3ac922a670355909cfe54f9146f7c0f9943a6909be198585588fbb12b`  
		Last Modified: Wed, 12 Dec 2018 20:11:06 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:f9de75f95cdb8b5544f6bf8a623429550e28038271724709d0626fc19d6e6b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9b6d0d387947447ee7b30c9eb7e6b6f20c016ee8cea6ba975076d795a0750144
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315549373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d304b4d414c7cf300a970fe300e0d809cacda156bbd552b802259e1caeac52e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 18:34:36 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 19:54:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 19:57:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 19:57:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:57:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 19:57:57 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:38:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:39:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:39:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:39:53 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:39:53 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:39:54 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 12 Dec 2018 21:39:55 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 12 Dec 2018 21:39:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:43:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:43:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:43:46 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:43:46 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:43:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 12 Dec 2018 21:44:10 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 12 Dec 2018 21:44:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:44:25 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 12 Dec 2018 21:44:25 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 12 Dec 2018 21:44:25 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4d6a6a3607db723f1f459cbd6cdcd722a557af938282bbaf47cf7d1edac4d`  
		Last Modified: Wed, 12 Dec 2018 21:06:35 GMT  
		Size: 24.0 MB (24015372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefa4443a084302c1d26fe93760f91ce29bd36261d7417bb661013229da2942d`  
		Last Modified: Wed, 12 Dec 2018 21:06:31 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068e8ec9a290650b2fc6030a136f79f1acf79c6e296f65f7b7008501fce2c69`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2d7907cb6626611223ff89e5941dc1747c44d7acd09f50855df1ff9529050`  
		Last Modified: Wed, 12 Dec 2018 21:55:22 GMT  
		Size: 88.0 MB (88040726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcdd5a23b169e60c8e74828eaa934809ab33979d1203789ede432fd350ab805`  
		Last Modified: Wed, 12 Dec 2018 21:55:03 GMT  
		Size: 1.3 MB (1304330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd1ffc132bda669da5df43562e0c57f3f4ef033247b7e0540f3df633895b9b0`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81300c73135f8b4b219623f225bc19b8d8e29cb15da05477cc9930209e9c41e7`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfebeb4be7f5f0632d1f5e091f356830d542be4181eeaf4504a29e5d1380bdc`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 2.5 MB (2525128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3773e78a482bb6e9d5ee88b4a3bb181384d75cace6fbd9476417f29ebcb10f1a`  
		Last Modified: Wed, 12 Dec 2018 21:55:25 GMT  
		Size: 117.7 MB (117666802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6eee574679f9784b86a89309b2f20603d3e813098f27c502e80a7d4a4d30c8`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e787a1f400ad1194072ad12bad64e04522d408cc885b4b89686c84da70e80b16`  
		Last Modified: Wed, 12 Dec 2018 21:56:43 GMT  
		Size: 19.4 MB (19356861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b806f88ce284e1b0d06bf688330bbcdb2e5e5807ac1af4a1e0d33bdb66cb79`  
		Last Modified: Wed, 12 Dec 2018 21:56:39 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
