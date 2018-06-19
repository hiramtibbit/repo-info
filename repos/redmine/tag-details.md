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
$ docker pull redmine@sha256:5a3c9c6eda314464af863c4c87d1a544ea7f0ba7b7356fee591880d3412f93e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e962d9290cb34b3357abfa87fb86e1c1247fc78cddaf9fee7426cd1e3418cf49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241173944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e0fae75a774afc664cfeed804c9b82cef3f5fdb89bb3c119aadb2b369c6dab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:50:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:50:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 10:56:19 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 10:56:19 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 11:02:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 11:02:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:09:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:09:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:09:46 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:09:47 GMT
CMD ["irb"]
# Sat, 26 May 2018 10:03:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 10:04:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:04:04 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 10:04:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 10:04:06 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 10:04:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 10:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:04:59 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 10:05:00 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:13:20 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:13:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:13:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:19:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:19:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:19:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:19:47 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:19:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2119f18fa6f270436c891e0c459923ae24657bf4a8be20cfcfe964e7aa64b7b2`  
		Last Modified: Sat, 28 Apr 2018 12:31:30 GMT  
		Size: 9.1 MB (9119888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757db9404a98c26c96cb6b65e8c7893c1e1b5ea9774a5786abe9ec88468cf3`  
		Last Modified: Sat, 28 Apr 2018 12:31:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe38be652b02d310bce0a19598fe366080a17713f114eeb33355e15f6bf8c0`  
		Last Modified: Thu, 24 May 2018 11:29:31 GMT  
		Size: 21.1 MB (21074760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fc7f9b6584b1727a86e7d2130c3f4129978990791d89d6af0f9950997cc782`  
		Last Modified: Fri, 25 May 2018 09:17:51 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf4bf93be2e977124205e4f60ae3ba2a2f880c269a494237a056a419343587`  
		Last Modified: Sat, 26 May 2018 10:18:09 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b6a7f079c3c2475a4ae64a2f970ab18867099384ac59e88b28b14c37d777fc`  
		Last Modified: Sat, 26 May 2018 10:18:11 GMT  
		Size: 12.8 MB (12772572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fbc82bebefed415e0d99d95c2199ccefd11254cfbefe0cb44e5c4235a80dbc`  
		Last Modified: Sat, 26 May 2018 10:18:06 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494ed27bef31be226f9bb0b7dde7a3de53fee37d4a9defca95c65999a45bf288`  
		Last Modified: Sat, 26 May 2018 10:18:06 GMT  
		Size: 7.8 KB (7850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f35f04356acdd34ae2b420f4291d29a25391dab380d222d3d41d90f2397e32`  
		Last Modified: Sat, 26 May 2018 10:18:20 GMT  
		Size: 42.4 MB (42447740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d09e6d2bf37126451e274f656bcb7c1051070bf7c2b61040e77e0d24b38b685`  
		Last Modified: Sat, 26 May 2018 10:18:05 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae35dc032fece0c362f9840d1c3ed25d1ce3a740e5bcfd4e2d14c0ad0d31ba1`  
		Last Modified: Tue, 12 Jun 2018 09:24:52 GMT  
		Size: 2.5 MB (2457581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b505efdc435bd1754d4c55ae48dbd8a98af443ccc33094251493e4d7162d274`  
		Last Modified: Tue, 12 Jun 2018 09:25:18 GMT  
		Size: 100.3 MB (100341947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0761c8683eeab1a2bd4fc06f471663549f65482fd69d9c400724127e130f4bbe`  
		Last Modified: Tue, 12 Jun 2018 09:24:50 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:766183fc3065c6e4fe9c40393a089fbbab12a190c838b50415fa5024799f601f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235515414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b454e6204c51e2aee81fc587761a2be07692a67453b941d335582b6b1ebaa9c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:40:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:40:56 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 13:13:30 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:13:31 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:18:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 12:27:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 12:27:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 12:27:43 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 12:27:43 GMT
CMD ["irb"]
# Sat, 26 May 2018 12:23:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 12:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:24:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 12:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 12:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 12:24:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 12:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:25:12 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 12:25:13 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 12:04:22 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 12:04:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 12:04:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 12:10:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 12:10:19 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 12:10:20 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 12:10:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 12:10:20 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 12:10:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cc82e3a61290e4bfc39b7ec615f84e7782d645852ff04b0f1077ba3a8d6c85`  
		Last Modified: Sat, 28 Apr 2018 16:21:20 GMT  
		Size: 8.8 MB (8777726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60d4b7c236d855ddd6a1f286ece09d909ea721b8959a806142de215e84ad242`  
		Last Modified: Sat, 28 Apr 2018 16:21:17 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd714148500451500a2957112b77e7e1feb9b7fa3095266d84623a097aa9935b`  
		Last Modified: Thu, 24 May 2018 13:51:44 GMT  
		Size: 20.9 MB (20939873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b699e7e8d225b3c8087b29914345882f41c75520d205595171039ab1e0c856`  
		Last Modified: Fri, 25 May 2018 12:40:08 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e957186fb243adf5019585383bf19defaa1d82b4636998b537528235dd777f2`  
		Last Modified: Sat, 26 May 2018 12:37:45 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e22cb6dff3aef6e6185c86a85889793c9f7fff65d461c749557bc8884b9624`  
		Last Modified: Sat, 26 May 2018 12:37:50 GMT  
		Size: 12.6 MB (12629462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9726b5b13c21e003fe07315e1e1f21db27480310aa0606a5699f7435f62801cf`  
		Last Modified: Sat, 26 May 2018 12:37:45 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3784a11f9e4def9da3250391267c9bcffd3edd695febdb607895c2fa1524e923`  
		Last Modified: Sat, 26 May 2018 12:37:44 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aafb8c66421b2f5119eff1c096e049166c2dd3e873985a18c7b590c7ebb4b56`  
		Last Modified: Sat, 26 May 2018 12:37:57 GMT  
		Size: 41.0 MB (40993906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f353039d82ae39a8615ecd9501661245dea169886f89cdde578befb2a12df48e`  
		Last Modified: Sat, 26 May 2018 12:37:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9852e9c4fd4e0a4ffc37c9887171273f21a9ae2e883d870b16cb289d908af6`  
		Last Modified: Tue, 12 Jun 2018 12:15:26 GMT  
		Size: 2.5 MB (2457573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739668640609f602f6ec969ba7f6d3fda002b797ba555e34567c2129be396c87`  
		Last Modified: Tue, 12 Jun 2018 12:15:52 GMT  
		Size: 99.0 MB (99034155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8737fb16725b95759118365c028451f6e4be176a964bd87e6896f3d2c163537b`  
		Last Modified: Tue, 12 Jun 2018 12:15:24 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:772cbf15c35ef40dd1b9b61b5d27210401cdc6ca11df41c47862c66be01f192b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240322105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff87f79bed5d4e2326e799b5ce09455b176a252f2cc6a7506d5ad298db072c71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:41:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 May 2018 08:41:42 GMT
ENV RUBY_MAJOR=2.4
# Tue, 01 May 2018 08:41:44 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 01 May 2018 08:41:46 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 25 May 2018 16:57:16 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 25 May 2018 16:57:17 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 25 May 2018 17:06:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 25 May 2018 17:06:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 17:06:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 17:06:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 17:06:36 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 17:06:37 GMT
CMD ["irb"]
# Fri, 25 May 2018 21:43:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 25 May 2018 21:43:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:43:38 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 21:43:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 21:43:44 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 May 2018 21:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 May 2018 21:45:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:45:02 GMT
ENV RAILS_ENV=production
# Fri, 25 May 2018 21:45:03 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:50:34 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:50:35 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:50:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 10:04:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 10:05:10 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 10:05:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 10:05:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 10:05:13 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 10:05:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aeaeeebfa7e2a1e6c69a484a7648b6313aff4bf219767667e43bbfc42bb40d9`  
		Last Modified: Tue, 01 May 2018 09:53:45 GMT  
		Size: 9.3 MB (9343083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b78cb3f4882a2b3bf1ecb4fdbe1e145a3ddb80ce1fde62a33ada1beaf12daf8`  
		Last Modified: Tue, 01 May 2018 09:53:41 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18547e3cbea8ccf1a7ca22515077049b202d0f12cac441573f4edf1f9b567209`  
		Last Modified: Fri, 25 May 2018 18:07:21 GMT  
		Size: 21.3 MB (21265153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d550606a490752c05952acf272ef8a1e4df8e3a8be58f37f50260160a5b11`  
		Last Modified: Fri, 25 May 2018 18:07:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548893d753de4a74e5a64d26225a85691cfd2ad2b0546591161f46916ea1229f`  
		Last Modified: Fri, 25 May 2018 22:12:00 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecd4fc430347071a2c164435746340e018f58d8037eabf8dd5665ad1b0dff6`  
		Last Modified: Fri, 25 May 2018 22:12:03 GMT  
		Size: 12.9 MB (12940690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc6b9486743d7946d7922a4c47f0cc78876f91c3db011553f4f9a25a1dc96e2`  
		Last Modified: Fri, 25 May 2018 22:11:58 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f19d3b246e0490714656220e538767a6b0f47ae8f43c10cc32017687ae3114`  
		Last Modified: Fri, 25 May 2018 22:11:58 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c410f031f3a0caf03a8f292b3e8ef6c78c56aaa50043798b0c103969c61e7b3c`  
		Last Modified: Fri, 25 May 2018 22:12:12 GMT  
		Size: 42.4 MB (42359426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e4e23070b0c3156b98a799e22611cab9513b73ad6bc028c8267c993a6c11ad`  
		Last Modified: Fri, 25 May 2018 22:11:55 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357d119f0121b33c71c8d0285a400943f7e5a196087dc12787f728e94e48f84a`  
		Last Modified: Tue, 12 Jun 2018 10:20:01 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a70982daf566bed573f58ec650c9937184e454a116357bb6813d16a38a1953`  
		Last Modified: Tue, 12 Jun 2018 10:20:33 GMT  
		Size: 100.0 MB (100028736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e3e7ee1c808f80c1faece53239fb5490f188001a6883e8a7af41baf1abf0dd`  
		Last Modified: Tue, 12 Jun 2018 10:19:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:764345190def03c4ab83754fda33c0d76a683281f96ffbec18c3f6348dc9041b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250839130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad132521ba2255b2dd8b5d6f8181aa63ae397b0d9725980182fa8f29788f464`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 14:56:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 14:56:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_MAJOR=2.4
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_VERSION=2.4.4
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 01 Jun 2018 14:56:42 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 01 Jun 2018 15:04:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 01 Jun 2018 15:04:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 01 Jun 2018 15:04:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 01 Jun 2018 15:04:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 15:04:07 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 01 Jun 2018 15:04:07 GMT
CMD ["irb"]
# Fri, 01 Jun 2018 17:09:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 01 Jun 2018 17:10:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:10:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Jun 2018 17:10:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Jun 2018 17:10:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 01 Jun 2018 17:10:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 01 Jun 2018 17:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:12:33 GMT
ENV RAILS_ENV=production
# Fri, 01 Jun 2018 17:12:33 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 10:58:22 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 10:58:22 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 10:58:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:06:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:06:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:06:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:06:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:06:44 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:06:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6891754f33e4c1f328ba0f4530fdb8383be81d86d518c6967565db3d8a7d3f`  
		Last Modified: Fri, 01 Jun 2018 15:49:54 GMT  
		Size: 14.9 MB (14942131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089cb9bb407565a3373144a74a72a2345d043f8423185a11fe236787bfc2d617`  
		Last Modified: Fri, 01 Jun 2018 15:49:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b853b205add0f75c6d80bbdfcfd40d09d2435262eb1076c603fd5a6ffff58a15`  
		Last Modified: Fri, 01 Jun 2018 15:49:56 GMT  
		Size: 20.3 MB (20303639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7911295bc17916b28653d7cd6782d5eaede8fbbd7814f157a445829de1488cc8`  
		Last Modified: Fri, 01 Jun 2018 15:49:47 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f80ba1db311f9d427a674563c28a8673d1b2941bcf25116f71c8446c382a3b4`  
		Last Modified: Fri, 01 Jun 2018 17:31:18 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff801544c3611060c1d01382b678c4ae46af418e380369f5ebe1d34b0f29d77e`  
		Last Modified: Fri, 01 Jun 2018 17:31:27 GMT  
		Size: 13.1 MB (13103088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e57a3fcd9a49a1c8880a39b935633a3041926c55a56be8bd38c07adff2c4fa`  
		Last Modified: Fri, 01 Jun 2018 17:31:16 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351ff4ecba98d1064a87e597d3a72a277f456c7c8c5ca2c5d3232ee7d9ac7a5`  
		Last Modified: Fri, 01 Jun 2018 17:31:14 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a39a98e6e8a62ba33f9f31994bb9ec3ad114859cc7f7b8ca5826f709a638afe`  
		Last Modified: Fri, 01 Jun 2018 17:31:36 GMT  
		Size: 45.5 MB (45457639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b70809786ee4d1eb9cf95a13d81bc67933fe7a6a708c62b538781cdb68f550`  
		Last Modified: Fri, 01 Jun 2018 17:31:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a14fb52b6627cb9d4f52af269fe74bf7bf7d995fe198613b7b7cf50d671946`  
		Last Modified: Tue, 12 Jun 2018 11:13:47 GMT  
		Size: 2.5 MB (2456913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffec7b0744e9a0d95607305eb95910f629ae84141bf51751d86f687089c0c9e`  
		Last Modified: Tue, 12 Jun 2018 11:14:20 GMT  
		Size: 99.6 MB (99595433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c377f30ade0b425cc2dfc7f74f7a7c6b266135838922baf65570ca5aa9ddcc`  
		Last Modified: Tue, 12 Jun 2018 11:13:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:a5be41150eb4c43ed7abff82bb2f05a09603909724f7465c026dc6eb907d81ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246914671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390c80135916077ca2dfe9540434a4158af86bccb9a9afdadb86aa7ac911e6f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:24:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:24:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:24:08 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 11:24:08 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 11:24:09 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 10:50:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 10:50:50 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 10:58:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 10:58:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:19:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:19:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:19:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:19:11 GMT
CMD ["irb"]
# Sat, 26 May 2018 09:41:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 09:42:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:42:51 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 09:43:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 09:43:11 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 09:43:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 09:46:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:46:46 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 09:46:47 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:16:20 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:16:21 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:16:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:27:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:27:17 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:27:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:27:19 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:27:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab444779be019b7a69946ce8e93e0062d82eedfe747470714b266730847305b0`  
		Last Modified: Sat, 28 Apr 2018 12:15:08 GMT  
		Size: 10.1 MB (10137971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bfab4f27e54de1711e2752ce393ce141c20aef64a8cd42d95a20585d28fa73`  
		Last Modified: Sat, 28 Apr 2018 12:15:04 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15968d0ad41cd76cb81ece13f4d2ca5a0d8d6e4579ae1e619f8ddd2ad295c2`  
		Last Modified: Thu, 24 May 2018 11:43:15 GMT  
		Size: 21.8 MB (21757239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351a7ed5b215a7bd4c196ac77237a20aec73a9a6665d2224deead4283218f7d6`  
		Last Modified: Fri, 25 May 2018 09:32:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd39d3e6422d52b16dfac40b0f9fd915fe70de5266ff6e1c6a545538a617171`  
		Last Modified: Sat, 26 May 2018 10:28:52 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b890c32c8a35b49718465b739aa29851ea5d09645363047bcfd2646d0c7e59d2`  
		Last Modified: Sat, 26 May 2018 10:28:53 GMT  
		Size: 13.1 MB (13113602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2678fca66b07491a24dbcff3ff476be318e02d27a9fa400cad6b5f547dd076`  
		Last Modified: Sat, 26 May 2018 10:28:49 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a046b512a788097cb981ae07112f3acf9a3a7e482327497e84752c042b0e3d`  
		Last Modified: Sat, 26 May 2018 10:28:49 GMT  
		Size: 8.6 KB (8645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5051d2f3490817f1eaed4f1b50bd48d01d6c0b2434009909e37de36881604f25`  
		Last Modified: Sat, 26 May 2018 10:28:50 GMT  
		Size: 44.2 MB (44177337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddccebb5e83708991e95d69bbc9c1887b2ce6ad04108983330e3886ae9437580`  
		Last Modified: Sat, 26 May 2018 10:28:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaddb2a29953018da0b8c38dbb1b823521fefd3ac8c73e5af76ffdbd728ebe6`  
		Last Modified: Tue, 12 Jun 2018 09:41:47 GMT  
		Size: 2.5 MB (2457555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24a723fe54e0eb9fa8b9e32ad8b31f5e37054bc8bcb635a761218cefc34cc57`  
		Last Modified: Tue, 12 Jun 2018 09:42:07 GMT  
		Size: 101.4 MB (101395186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9bd308c3fa7faf7b34e3700d72fba3b5b75885111b57ab88e671b11cfcb57f`  
		Last Modified: Tue, 12 Jun 2018 09:41:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:f0c0a85271a2b46c950241072cbb49066910b1363a49e1b18321711acc42e356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251863499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3c2445619478fc2c537f8e73ff76d04033bb6cefa125ed381194c48601ac5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:34:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:34:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 13:16:30 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:16:30 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:19:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:19:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 11:58:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 11:58:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 11:58:17 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 11:58:18 GMT
CMD ["irb"]
# Sat, 26 May 2018 13:25:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 13:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:26:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 13:26:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 13:26:12 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 13:26:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 13:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:26:41 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 13:26:41 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 11:50:56 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 11:50:56 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 11:51:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:54:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:54:39 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:54:39 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:54:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:54:39 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:54:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61347f1daff97305b17924679d0a40043c3c68c04ecd38580c03a9f5f14cc025`  
		Last Modified: Sat, 28 Apr 2018 16:00:45 GMT  
		Size: 10.0 MB (9963110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4516576626d0afc4ce307a23343efc17d8fa199788465d6fb1966c6e38405270`  
		Last Modified: Sat, 28 Apr 2018 16:00:42 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db3c4bbb862bf979405dbf70d32620b3868872a06f125c0636aa2ca5d9a8118`  
		Last Modified: Thu, 24 May 2018 13:48:49 GMT  
		Size: 21.7 MB (21709046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc118bcf2202904ad8addf51827feb3eb0be972ee9912cfef0c03d939af4af5d`  
		Last Modified: Fri, 25 May 2018 12:08:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bedd5671d7bb05f77a136f485548dd94b826bcaeca59790f44d37972cac966c`  
		Last Modified: Sat, 26 May 2018 13:34:13 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0ad57d1afd283e6ea7a12a3fdb17282925a2ac6c8fc1e0b18594b70f4860d8`  
		Last Modified: Sat, 26 May 2018 13:34:15 GMT  
		Size: 13.1 MB (13130009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f941c2e8a178296eb5ef00af421a44bd40170e8b4535faf85b8c0f669e4127`  
		Last Modified: Sat, 26 May 2018 13:34:13 GMT  
		Size: 486.8 KB (486831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b65703d4fed12215b832fd6eb431e15ec6df3ea624470903495fa95675645b2`  
		Last Modified: Sat, 26 May 2018 13:34:11 GMT  
		Size: 8.6 KB (8628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917531cd746a6193f114fee86d51a4d4350e303ad3cd7397c0b6ce37b64b6fd3`  
		Last Modified: Sat, 26 May 2018 13:34:20 GMT  
		Size: 44.9 MB (44873258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eef527ad946ff40e56c84cc6b522a36ae762231ff206d25c8d7e8a2990ed6a5`  
		Last Modified: Sat, 26 May 2018 13:34:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65af06afa7570607311e05e896bafe81b5b71cab0ea3342263accce957bfb9a`  
		Last Modified: Tue, 12 Jun 2018 11:57:40 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de68e1636122528bca68ce45fd594efda99455c4d62484f6a367d2e63490be0a`  
		Last Modified: Tue, 12 Jun 2018 11:57:56 GMT  
		Size: 104.8 MB (104765451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef47d9b5f1472baf043c35c65038ca20350e724ae713d3f337f44ecb7f52f4cc`  
		Last Modified: Tue, 12 Jun 2018 11:57:40 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:bc1d1c2c5fb7ce8edaa3525e99d8e83265fec1e55ec743b4b23e6e0fab0a236e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:2b1340ddc009454062e3be410ae302a18b075f4772b527768a83707439b9bb07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234188448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d423b882c9d563ddf7a1e42d62ab8f5d5b05b00b431c232d8ae52229d1d9d4a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:50:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:50:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 12:10:57 GMT
ENV RUBY_MAJOR=2.3
# Sat, 28 Apr 2018 12:10:58 GMT
ENV RUBY_VERSION=2.3.7
# Sat, 28 Apr 2018 12:10:58 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Thu, 24 May 2018 11:17:12 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 11:17:12 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 11:21:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 11:21:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:10:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:10:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:10:53 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:10:53 GMT
CMD ["irb"]
# Sat, 26 May 2018 10:11:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 10:12:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:12:02 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 10:12:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 10:12:05 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 10:12:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 10:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:12:52 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 10:12:52 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:19:56 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 09:19:57 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 09:20:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:24:39 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:24:39 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:24:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:24:39 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:24:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2119f18fa6f270436c891e0c459923ae24657bf4a8be20cfcfe964e7aa64b7b2`  
		Last Modified: Sat, 28 Apr 2018 12:31:30 GMT  
		Size: 9.1 MB (9119888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757db9404a98c26c96cb6b65e8c7893c1e1b5ea9774a5786abe9ec88468cf3`  
		Last Modified: Sat, 28 Apr 2018 12:31:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65104c91b9394bb23a8afc0395aec5f928cef61120d6d7944e1f0081d2d231f2`  
		Last Modified: Thu, 24 May 2018 11:32:45 GMT  
		Size: 32.8 MB (32753332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c955480d3d1a7c63c64c0454f707a6515b7b8686a525442b2406c4c615cdcb0`  
		Last Modified: Fri, 25 May 2018 09:20:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ad0ba38abaac1a64d49025488f6bc460bf3105f79cae5793dab1ffe9fc05d`  
		Last Modified: Sat, 26 May 2018 10:19:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0908f49977601b24ae47a6cd030bb728e452c6f92053f8681bc335b2ef3be6`  
		Last Modified: Sat, 26 May 2018 10:19:21 GMT  
		Size: 12.8 MB (12772579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dd8d7f14e3d1ed9c471b63cb02d01ca2b1817e9b7baec789f437aabcd66756`  
		Last Modified: Sat, 26 May 2018 10:19:18 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1e4c5939feb4934132090f2eedf5491a004f003896731e342ad80523b4f1b4`  
		Last Modified: Sat, 26 May 2018 10:19:17 GMT  
		Size: 7.8 KB (7850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f6fe42dc9bf1e2059860d8611c0b751eed522e4c2831857b68a24f79547e5a`  
		Last Modified: Sat, 26 May 2018 10:19:30 GMT  
		Size: 42.5 MB (42450355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c159330867d2dc96e21ab926d675e5d9b156488f913037bb96235644b05e2f6`  
		Last Modified: Sat, 26 May 2018 10:19:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09783fc2fb86cc2f0533b5c1bfcd56f3653c913adfaa10d58ce141aba4b928f4`  
		Last Modified: Tue, 12 Jun 2018 09:25:39 GMT  
		Size: 2.4 MB (2394452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba974e8a88963f5a32d22de0b21dc7a78e43e874674aa6d34a95896fcacf72d`  
		Last Modified: Tue, 12 Jun 2018 09:25:57 GMT  
		Size: 81.7 MB (81738384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b74c1ce1e3fadd8157d9ecaa88161d8d889934e321a895ea94b1f7c6c027ed`  
		Last Modified: Tue, 12 Jun 2018 09:25:37 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:3f8e4998578a793a81a2db25118755f45bc9be2b0cfed346058489be06bf2626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228686067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327df7b60fc93540bb208ead7f91117e9bebeb81d76f5d18f37356f7a381c253`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:40:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 16:01:00 GMT
ENV RUBY_MAJOR=2.3
# Sat, 28 Apr 2018 16:01:00 GMT
ENV RUBY_VERSION=2.3.7
# Sat, 28 Apr 2018 16:01:00 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Thu, 24 May 2018 13:32:45 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:32:45 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:36:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:36:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 12:28:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 12:28:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 12:28:59 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 12:28:59 GMT
CMD ["irb"]
# Sat, 26 May 2018 12:31:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 12:31:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:31:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 12:31:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 12:31:55 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 12:31:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 12:32:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:32:41 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 12:32:41 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 12:10:29 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 12:10:29 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 12:10:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 12:15:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 12:15:10 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 12:15:10 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 12:15:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 12:15:11 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 12:15:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cc82e3a61290e4bfc39b7ec615f84e7782d645852ff04b0f1077ba3a8d6c85`  
		Last Modified: Sat, 28 Apr 2018 16:21:20 GMT  
		Size: 8.8 MB (8777726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60d4b7c236d855ddd6a1f286ece09d909ea721b8959a806142de215e84ad242`  
		Last Modified: Sat, 28 Apr 2018 16:21:17 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c49f5f68f7c6a9010b9b38fea693855a4635ca6d5d986d01420ea8d013c707`  
		Last Modified: Thu, 24 May 2018 13:55:41 GMT  
		Size: 32.5 MB (32542173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934dc94129d4496ffd10875a2c6058f6396f3efb21926efaaae7ad971facf665`  
		Last Modified: Fri, 25 May 2018 12:43:45 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa9a3c5fc967f8b658a66e0ae779ea381e13bc89289dbf72795bb49791fca5b`  
		Last Modified: Sat, 26 May 2018 12:39:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b38fd1d46fe67fb5d158cd8c269017e89f4f63f7a5a9d014e13f159ce8a079f`  
		Last Modified: Sat, 26 May 2018 12:39:07 GMT  
		Size: 12.6 MB (12629394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3f2473b5fd66ce61544076766f578a5b58b36b084154675e2dbf55ffc5fa0`  
		Last Modified: Sat, 26 May 2018 12:39:03 GMT  
		Size: 475.3 KB (475271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f96c619c7aac443df9ee910d0b0eeeafc84458e098f4695326b3a45537298b`  
		Last Modified: Sat, 26 May 2018 12:39:02 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6659b3afd25113b35c1316230581b1607bd710d4572c92b746b36d85e38a025`  
		Last Modified: Sat, 26 May 2018 12:39:15 GMT  
		Size: 41.0 MB (40994047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dd2a2a1c2430e6e429f3df884ced0b908bb88e7a05d72e722ef97f88630cf1`  
		Last Modified: Sat, 26 May 2018 12:39:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3ec287e721ef5a50ab180a46773d1522f04c4fd5787f4f9c44868ed74beca5`  
		Last Modified: Tue, 12 Jun 2018 12:16:24 GMT  
		Size: 2.4 MB (2394458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33314214a774f644983b9c87c98e269fc355bfbaf305c9ddeaed4c625ffa8c0c`  
		Last Modified: Tue, 12 Jun 2018 12:16:41 GMT  
		Size: 80.7 MB (80665543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc90ac18595dcb398f943cf5f49242093b8047bddcc3720520bd88996a711a3`  
		Last Modified: Tue, 12 Jun 2018 12:16:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:517a05b34312a5299be31e54fbe9a80df633cf09fbbab17a0c3bd850bfbfe939
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234185350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d46b25bbdde3676e35e2894f278bdd2ddc290564dff2b6b96fbcb6542d8dd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:41:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 May 2018 09:21:51 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 May 2018 09:21:51 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 01 May 2018 09:21:52 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Fri, 25 May 2018 17:42:54 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 25 May 2018 17:42:55 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 25 May 2018 17:50:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 25 May 2018 17:50:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 17:50:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 17:50:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 17:50:37 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 17:50:38 GMT
CMD ["irb"]
# Fri, 25 May 2018 21:57:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 25 May 2018 21:57:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:57:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 21:57:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 21:57:37 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 May 2018 21:57:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 May 2018 21:58:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:58:54 GMT
ENV RAILS_ENV=production
# Fri, 25 May 2018 21:58:55 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 10:05:30 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 10:05:33 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 10:05:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 10:19:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 10:19:35 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 10:19:36 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 10:19:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 10:19:37 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 10:19:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aeaeeebfa7e2a1e6c69a484a7648b6313aff4bf219767667e43bbfc42bb40d9`  
		Last Modified: Tue, 01 May 2018 09:53:45 GMT  
		Size: 9.3 MB (9343083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b78cb3f4882a2b3bf1ecb4fdbe1e145a3ddb80ce1fde62a33ada1beaf12daf8`  
		Last Modified: Tue, 01 May 2018 09:53:41 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed306b6b25ea2954c71b5a7a802e55dd849a0c4f9d9348974dfcf0aa3a3f4360`  
		Last Modified: Fri, 25 May 2018 18:12:58 GMT  
		Size: 34.0 MB (34023340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29958525b6f0d099361441683b4546e9a8fa17728f43cb8cefb616e936646278`  
		Last Modified: Fri, 25 May 2018 18:12:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dfdd87d35bfc527d1e1fa6e6765f3c543c6bcca388e3ccc197aeea1a620a7d`  
		Last Modified: Fri, 25 May 2018 22:13:20 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c84422c38a6db49dd44b5227afbaac45429fcf4544ea28aaa3549413795c55`  
		Last Modified: Fri, 25 May 2018 22:13:25 GMT  
		Size: 12.9 MB (12940754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f73061b438fd37a1444decd7254737e1c3eec6b552718eed4d0bca7956927e3`  
		Last Modified: Fri, 25 May 2018 22:13:19 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6169a236f22bae25d63b6d3a1628842abb147c2260fa1ff414f6840e55a9c4`  
		Last Modified: Fri, 25 May 2018 22:13:19 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a8b281ec695fe605f5c8fdb39363d7557b0d07c6616bde18c3386c38af37d`  
		Last Modified: Fri, 25 May 2018 22:13:35 GMT  
		Size: 42.4 MB (42358873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2128f2827cd190dfad492f91001ce38740849df71b036da92907b509f2ea6a4`  
		Last Modified: Fri, 25 May 2018 22:13:16 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e82aadd10fc804f6ae4ce84746c0e8dc3fe92763cb5348fc91bdec58f5eff`  
		Last Modified: Tue, 12 Jun 2018 10:21:08 GMT  
		Size: 2.4 MB (2394060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7ee4f140dafbd8d13d0d77237c2068e73d11813e8a6da487df232bc1520191`  
		Last Modified: Tue, 12 Jun 2018 10:21:29 GMT  
		Size: 81.2 MB (81197141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12a1ad2b6f374c764906ed0612de5b4e6808948adbe7f088cdd95dcc2bfaea2`  
		Last Modified: Tue, 12 Jun 2018 10:21:06 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:69651607eaa727b08ee3cdbdbbe09187f25b60cafde5e9ab2ed62de3efa72f7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243938889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151fb511c3dce508fa41e5d6210a07d8608bcc14087a85bf9ecbb2e7416cb35e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 14:56:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 14:56:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 01 Jun 2018 15:31:48 GMT
ENV RUBY_MAJOR=2.3
# Fri, 01 Jun 2018 15:31:48 GMT
ENV RUBY_VERSION=2.3.7
# Fri, 01 Jun 2018 15:31:48 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Fri, 01 Jun 2018 15:31:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 01 Jun 2018 15:31:48 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 01 Jun 2018 15:37:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 01 Jun 2018 15:37:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 01 Jun 2018 15:37:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 01 Jun 2018 15:37:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 15:37:56 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 01 Jun 2018 15:37:56 GMT
CMD ["irb"]
# Fri, 01 Jun 2018 17:21:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 01 Jun 2018 17:22:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:22:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Jun 2018 17:22:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Jun 2018 17:22:55 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 01 Jun 2018 17:22:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 01 Jun 2018 17:24:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:24:21 GMT
ENV RAILS_ENV=production
# Fri, 01 Jun 2018 17:24:21 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 11:06:55 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 11:06:55 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 11:07:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:13:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:13:28 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:13:28 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:13:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:13:29 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:13:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6891754f33e4c1f328ba0f4530fdb8383be81d86d518c6967565db3d8a7d3f`  
		Last Modified: Fri, 01 Jun 2018 15:49:54 GMT  
		Size: 14.9 MB (14942131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089cb9bb407565a3373144a74a72a2345d043f8423185a11fe236787bfc2d617`  
		Last Modified: Fri, 01 Jun 2018 15:49:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8115b1e634948c41f632ab946ef11b82c36946e3400f38fdf3d7dd4859d47d0e`  
		Last Modified: Fri, 01 Jun 2018 15:53:49 GMT  
		Size: 31.2 MB (31159508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540caa681d0f094e7be3241a456e97e445472d53b9431fb5e59ade8a71be700f`  
		Last Modified: Fri, 01 Jun 2018 15:53:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cfdf83ac422932a67b6ed1ce96a3fa7172fdf95d4535c181c37cb05a0260bb`  
		Last Modified: Fri, 01 Jun 2018 17:32:53 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b6f451d4b864c82c5b14ad4abe587aeaf6c83e221686868b73d9f5bcfb6fb`  
		Last Modified: Fri, 01 Jun 2018 17:32:57 GMT  
		Size: 13.1 MB (13103058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d217113ffe8b8cfc32044872c625cc67a4cb9c2f5c8942898aba04d724ff9941`  
		Last Modified: Fri, 01 Jun 2018 17:32:50 GMT  
		Size: 480.6 KB (480577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9574eda8f6842775047763a6a61375169bd3730b604a896917d234e733fdc541`  
		Last Modified: Fri, 01 Jun 2018 17:32:48 GMT  
		Size: 8.6 KB (8568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898105d5c328b01b030d88048235a8637212013aac933f80f2641948b26c1da1`  
		Last Modified: Fri, 01 Jun 2018 17:33:08 GMT  
		Size: 45.5 MB (45458063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfdb170854f61a1221deb1059767b9b9e54079930914d4bb776d7b3ec65033c`  
		Last Modified: Fri, 01 Jun 2018 17:32:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9be43a91d8161433d6df6a5754d9030e04875a8efa59afd23e503ae88decae`  
		Last Modified: Tue, 12 Jun 2018 11:15:07 GMT  
		Size: 2.4 MB (2394070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d5b91455c1a7f43b6b1a58ceb59a8db53efe399b6a6df67d398a17aeca0060`  
		Last Modified: Tue, 12 Jun 2018 11:15:34 GMT  
		Size: 81.9 MB (81901755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3546964a75843bafd2a22093e242dd0481c9d30aa0d2fa6426731c40c7d00aa6`  
		Last Modified: Tue, 12 Jun 2018 11:15:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:183b9b26f585f7c254276deefd525510eff395105d55bd3cae511fe7aa4020b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (241022093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e4d6ea5b57bc4618b0239e0e62a9a40e8d8b976c0c1119213a3ad2f8d587553`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:24:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:24:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:47:05 GMT
ENV RUBY_MAJOR=2.3
# Sat, 28 Apr 2018 11:47:06 GMT
ENV RUBY_VERSION=2.3.7
# Sat, 28 Apr 2018 11:47:06 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Thu, 24 May 2018 11:25:04 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 11:25:05 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 11:31:17 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 11:31:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:22:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:22:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:22:33 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:22:38 GMT
CMD ["irb"]
# Sat, 26 May 2018 10:00:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 10:01:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:01:18 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 10:01:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 10:01:26 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 10:01:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 10:03:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:03:18 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 10:03:23 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:27:36 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 09:27:37 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 09:27:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:40:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:40:55 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:40:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:41:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:41:04 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:41:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab444779be019b7a69946ce8e93e0062d82eedfe747470714b266730847305b0`  
		Last Modified: Sat, 28 Apr 2018 12:15:08 GMT  
		Size: 10.1 MB (10137971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bfab4f27e54de1711e2752ce393ce141c20aef64a8cd42d95a20585d28fa73`  
		Last Modified: Sat, 28 Apr 2018 12:15:04 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427cea24f278c9fb59c1f03139f4faacc225e025e81c234b072a9be00d7303b9`  
		Last Modified: Thu, 24 May 2018 11:47:28 GMT  
		Size: 35.0 MB (34990674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9b55c0bcd4e1cd34161e4082c080b6406cb9d2a5356f6372aa7aef7419c1fd`  
		Last Modified: Fri, 25 May 2018 09:34:57 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d097d01cbc428cafdec3f56751d05f3cff334f5f8d610985b33656cd96659ce0`  
		Last Modified: Sat, 26 May 2018 10:29:47 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f5223afc6c5aee4dac4d6916f3de788e99fdaa39e3a3972fcbc563b8b58e85`  
		Last Modified: Sat, 26 May 2018 10:29:49 GMT  
		Size: 13.1 MB (13113543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e2ae7242f7589196ea140019067ffef32ac76d1f22843f1d2427c6dc25044a`  
		Last Modified: Sat, 26 May 2018 10:29:45 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684692c2a7707c733b3abc86089324168108f8e6fc848dcbc75959ecf1fe2b3e`  
		Last Modified: Sat, 26 May 2018 10:29:44 GMT  
		Size: 8.6 KB (8643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a395dcaf30027d6758d7128c0a0bfb8d875ff8076d3ca8e1a97afd63ba326a`  
		Last Modified: Sat, 26 May 2018 10:29:54 GMT  
		Size: 44.2 MB (44177169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0641bf01cf6f2471f901f0f242f69d62e371d08f770e314d911869283130dc69`  
		Last Modified: Sat, 26 May 2018 10:29:41 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5811265b1231da8e2b62de9dc67c4c6d675df34065af1a0979a4175f03d0f6`  
		Last Modified: Tue, 12 Jun 2018 09:42:39 GMT  
		Size: 2.4 MB (2394459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ada27676faf511a2e25ea4891a2fc916b232abea821498caf40d3259eb0065d`  
		Last Modified: Tue, 12 Jun 2018 09:42:54 GMT  
		Size: 82.3 MB (82332518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b615cb125b671692de23cea58287a25cc1f72d9d6c4dcf4338cf628287aa100`  
		Last Modified: Tue, 12 Jun 2018 09:42:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:2395cbc7c16314831238189dd87560a819635430e9877b5ead339a2031323930
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248239299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8503d313372f25dada50f32be1a4811d4cc65fc929e9b4da7e8358ae6a9225e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:34:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:34:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:46:52 GMT
ENV RUBY_MAJOR=2.3
# Sat, 28 Apr 2018 15:46:52 GMT
ENV RUBY_VERSION=2.3.7
# Sat, 28 Apr 2018 15:46:52 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Thu, 24 May 2018 13:34:21 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:34:21 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:36:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:36:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 11:59:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 11:59:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 11:59:38 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 11:59:38 GMT
CMD ["irb"]
# Sat, 26 May 2018 13:30:39 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 13:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:30:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 13:30:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 13:30:52 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 13:30:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 13:31:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:31:15 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 13:31:15 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 11:54:46 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 11:54:46 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 11:54:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:57:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:57:29 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:57:29 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:57:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:57:29 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:57:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61347f1daff97305b17924679d0a40043c3c68c04ecd38580c03a9f5f14cc025`  
		Last Modified: Sat, 28 Apr 2018 16:00:45 GMT  
		Size: 10.0 MB (9963110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4516576626d0afc4ce307a23343efc17d8fa199788465d6fb1966c6e38405270`  
		Last Modified: Sat, 28 Apr 2018 16:00:42 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688703125c86a49bcd0cb37f53b8cac626f9955a87e6b53ea276458c812556a5`  
		Last Modified: Thu, 24 May 2018 13:53:06 GMT  
		Size: 37.8 MB (37834362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efaa249cd8ff410a3388bda85a23d5cbb433c832a6d8d48f9ea2657e4bf3fc74`  
		Last Modified: Fri, 25 May 2018 12:11:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94de6c1f93af7a53a7462885f531826d15d58754eb2331e74481ca1feb375240`  
		Last Modified: Sat, 26 May 2018 13:35:04 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7717f21c5fe51d9b4a0431eb42177a38a55ce86b8a91baf6844a2494316fc`  
		Last Modified: Sat, 26 May 2018 13:35:06 GMT  
		Size: 13.1 MB (13130026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801facac889b0875723265ee31a416dd8d2ebe6319baa73274d5e95735f61768`  
		Last Modified: Sat, 26 May 2018 13:35:03 GMT  
		Size: 486.8 KB (486830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcfe324efe956c80846c306ea43e06cd3a7ecae28bd7083b7ffd7164f74a6b0`  
		Last Modified: Sat, 26 May 2018 13:35:03 GMT  
		Size: 8.6 KB (8629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f414c39855c2661d42471c9a950643f0641f2e03fa94186f7aaeac714562dc38`  
		Last Modified: Sat, 26 May 2018 13:35:11 GMT  
		Size: 44.9 MB (44873884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d09ebeaf8ff1d4b5f4e650c0f2cfaddd28a587049acb2d2ff9dab5e6f75896`  
		Last Modified: Sat, 26 May 2018 13:35:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8040a9869c94ea8e95abe2335fb35fae6a69f93c84989ccebb048641603f575c`  
		Last Modified: Tue, 12 Jun 2018 11:58:14 GMT  
		Size: 2.4 MB (2394059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28191076641cd764bcf06e08c670ead359111cf61b7647aeb3f28beaab51cc7c`  
		Last Modified: Tue, 12 Jun 2018 11:58:26 GMT  
		Size: 85.1 MB (85078149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea796dce0719530c5b842f9db18eeb00dfc3cf4174aaca8ad48ebcd5ebba32fd`  
		Last Modified: Tue, 12 Jun 2018 11:58:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.8`

```console
$ docker pull redmine@sha256:bc1d1c2c5fb7ce8edaa3525e99d8e83265fec1e55ec743b4b23e6e0fab0a236e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `redmine:3.3.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:2b1340ddc009454062e3be410ae302a18b075f4772b527768a83707439b9bb07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234188448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d423b882c9d563ddf7a1e42d62ab8f5d5b05b00b431c232d8ae52229d1d9d4a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:50:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:50:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 12:10:57 GMT
ENV RUBY_MAJOR=2.3
# Sat, 28 Apr 2018 12:10:58 GMT
ENV RUBY_VERSION=2.3.7
# Sat, 28 Apr 2018 12:10:58 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Thu, 24 May 2018 11:17:12 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 11:17:12 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 11:21:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 11:21:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:10:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:10:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:10:53 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:10:53 GMT
CMD ["irb"]
# Sat, 26 May 2018 10:11:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 10:12:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:12:02 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 10:12:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 10:12:05 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 10:12:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 10:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:12:52 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 10:12:52 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:19:56 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 09:19:57 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 09:20:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:24:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:24:39 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:24:39 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:24:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:24:39 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:24:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2119f18fa6f270436c891e0c459923ae24657bf4a8be20cfcfe964e7aa64b7b2`  
		Last Modified: Sat, 28 Apr 2018 12:31:30 GMT  
		Size: 9.1 MB (9119888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757db9404a98c26c96cb6b65e8c7893c1e1b5ea9774a5786abe9ec88468cf3`  
		Last Modified: Sat, 28 Apr 2018 12:31:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65104c91b9394bb23a8afc0395aec5f928cef61120d6d7944e1f0081d2d231f2`  
		Last Modified: Thu, 24 May 2018 11:32:45 GMT  
		Size: 32.8 MB (32753332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c955480d3d1a7c63c64c0454f707a6515b7b8686a525442b2406c4c615cdcb0`  
		Last Modified: Fri, 25 May 2018 09:20:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ad0ba38abaac1a64d49025488f6bc460bf3105f79cae5793dab1ffe9fc05d`  
		Last Modified: Sat, 26 May 2018 10:19:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0908f49977601b24ae47a6cd030bb728e452c6f92053f8681bc335b2ef3be6`  
		Last Modified: Sat, 26 May 2018 10:19:21 GMT  
		Size: 12.8 MB (12772579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dd8d7f14e3d1ed9c471b63cb02d01ca2b1817e9b7baec789f437aabcd66756`  
		Last Modified: Sat, 26 May 2018 10:19:18 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1e4c5939feb4934132090f2eedf5491a004f003896731e342ad80523b4f1b4`  
		Last Modified: Sat, 26 May 2018 10:19:17 GMT  
		Size: 7.8 KB (7850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f6fe42dc9bf1e2059860d8611c0b751eed522e4c2831857b68a24f79547e5a`  
		Last Modified: Sat, 26 May 2018 10:19:30 GMT  
		Size: 42.5 MB (42450355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c159330867d2dc96e21ab926d675e5d9b156488f913037bb96235644b05e2f6`  
		Last Modified: Sat, 26 May 2018 10:19:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09783fc2fb86cc2f0533b5c1bfcd56f3653c913adfaa10d58ce141aba4b928f4`  
		Last Modified: Tue, 12 Jun 2018 09:25:39 GMT  
		Size: 2.4 MB (2394452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba974e8a88963f5a32d22de0b21dc7a78e43e874674aa6d34a95896fcacf72d`  
		Last Modified: Tue, 12 Jun 2018 09:25:57 GMT  
		Size: 81.7 MB (81738384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b74c1ce1e3fadd8157d9ecaa88161d8d889934e321a895ea94b1f7c6c027ed`  
		Last Modified: Tue, 12 Jun 2018 09:25:37 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm variant v7

```console
$ docker pull redmine@sha256:3f8e4998578a793a81a2db25118755f45bc9be2b0cfed346058489be06bf2626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228686067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327df7b60fc93540bb208ead7f91117e9bebeb81d76f5d18f37356f7a381c253`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:40:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 16:01:00 GMT
ENV RUBY_MAJOR=2.3
# Sat, 28 Apr 2018 16:01:00 GMT
ENV RUBY_VERSION=2.3.7
# Sat, 28 Apr 2018 16:01:00 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Thu, 24 May 2018 13:32:45 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:32:45 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:36:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:36:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 12:28:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 12:28:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 12:28:59 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 12:28:59 GMT
CMD ["irb"]
# Sat, 26 May 2018 12:31:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 12:31:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:31:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 12:31:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 12:31:55 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 12:31:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 12:32:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:32:41 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 12:32:41 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 12:10:29 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 12:10:29 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 12:10:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 12:15:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 12:15:10 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 12:15:10 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 12:15:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 12:15:11 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 12:15:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cc82e3a61290e4bfc39b7ec615f84e7782d645852ff04b0f1077ba3a8d6c85`  
		Last Modified: Sat, 28 Apr 2018 16:21:20 GMT  
		Size: 8.8 MB (8777726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60d4b7c236d855ddd6a1f286ece09d909ea721b8959a806142de215e84ad242`  
		Last Modified: Sat, 28 Apr 2018 16:21:17 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c49f5f68f7c6a9010b9b38fea693855a4635ca6d5d986d01420ea8d013c707`  
		Last Modified: Thu, 24 May 2018 13:55:41 GMT  
		Size: 32.5 MB (32542173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934dc94129d4496ffd10875a2c6058f6396f3efb21926efaaae7ad971facf665`  
		Last Modified: Fri, 25 May 2018 12:43:45 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa9a3c5fc967f8b658a66e0ae779ea381e13bc89289dbf72795bb49791fca5b`  
		Last Modified: Sat, 26 May 2018 12:39:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b38fd1d46fe67fb5d158cd8c269017e89f4f63f7a5a9d014e13f159ce8a079f`  
		Last Modified: Sat, 26 May 2018 12:39:07 GMT  
		Size: 12.6 MB (12629394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd3f2473b5fd66ce61544076766f578a5b58b36b084154675e2dbf55ffc5fa0`  
		Last Modified: Sat, 26 May 2018 12:39:03 GMT  
		Size: 475.3 KB (475271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f96c619c7aac443df9ee910d0b0eeeafc84458e098f4695326b3a45537298b`  
		Last Modified: Sat, 26 May 2018 12:39:02 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6659b3afd25113b35c1316230581b1607bd710d4572c92b746b36d85e38a025`  
		Last Modified: Sat, 26 May 2018 12:39:15 GMT  
		Size: 41.0 MB (40994047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dd2a2a1c2430e6e429f3df884ced0b908bb88e7a05d72e722ef97f88630cf1`  
		Last Modified: Sat, 26 May 2018 12:39:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3ec287e721ef5a50ab180a46773d1522f04c4fd5787f4f9c44868ed74beca5`  
		Last Modified: Tue, 12 Jun 2018 12:16:24 GMT  
		Size: 2.4 MB (2394458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33314214a774f644983b9c87c98e269fc355bfbaf305c9ddeaed4c625ffa8c0c`  
		Last Modified: Tue, 12 Jun 2018 12:16:41 GMT  
		Size: 80.7 MB (80665543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc90ac18595dcb398f943cf5f49242093b8047bddcc3720520bd88996a711a3`  
		Last Modified: Tue, 12 Jun 2018 12:16:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:517a05b34312a5299be31e54fbe9a80df633cf09fbbab17a0c3bd850bfbfe939
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234185350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d46b25bbdde3676e35e2894f278bdd2ddc290564dff2b6b96fbcb6542d8dd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:41:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 May 2018 09:21:51 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 May 2018 09:21:51 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 01 May 2018 09:21:52 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Fri, 25 May 2018 17:42:54 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 25 May 2018 17:42:55 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 25 May 2018 17:50:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 25 May 2018 17:50:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 17:50:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 17:50:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 17:50:37 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 17:50:38 GMT
CMD ["irb"]
# Fri, 25 May 2018 21:57:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 25 May 2018 21:57:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:57:33 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 21:57:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 21:57:37 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 May 2018 21:57:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 May 2018 21:58:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:58:54 GMT
ENV RAILS_ENV=production
# Fri, 25 May 2018 21:58:55 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 10:05:30 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 10:05:33 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 10:05:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 10:19:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 10:19:35 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 10:19:36 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 10:19:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 10:19:37 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 10:19:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aeaeeebfa7e2a1e6c69a484a7648b6313aff4bf219767667e43bbfc42bb40d9`  
		Last Modified: Tue, 01 May 2018 09:53:45 GMT  
		Size: 9.3 MB (9343083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b78cb3f4882a2b3bf1ecb4fdbe1e145a3ddb80ce1fde62a33ada1beaf12daf8`  
		Last Modified: Tue, 01 May 2018 09:53:41 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed306b6b25ea2954c71b5a7a802e55dd849a0c4f9d9348974dfcf0aa3a3f4360`  
		Last Modified: Fri, 25 May 2018 18:12:58 GMT  
		Size: 34.0 MB (34023340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29958525b6f0d099361441683b4546e9a8fa17728f43cb8cefb616e936646278`  
		Last Modified: Fri, 25 May 2018 18:12:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dfdd87d35bfc527d1e1fa6e6765f3c543c6bcca388e3ccc197aeea1a620a7d`  
		Last Modified: Fri, 25 May 2018 22:13:20 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c84422c38a6db49dd44b5227afbaac45429fcf4544ea28aaa3549413795c55`  
		Last Modified: Fri, 25 May 2018 22:13:25 GMT  
		Size: 12.9 MB (12940754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f73061b438fd37a1444decd7254737e1c3eec6b552718eed4d0bca7956927e3`  
		Last Modified: Fri, 25 May 2018 22:13:19 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6169a236f22bae25d63b6d3a1628842abb147c2260fa1ff414f6840e55a9c4`  
		Last Modified: Fri, 25 May 2018 22:13:19 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a8b281ec695fe605f5c8fdb39363d7557b0d07c6616bde18c3386c38af37d`  
		Last Modified: Fri, 25 May 2018 22:13:35 GMT  
		Size: 42.4 MB (42358873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2128f2827cd190dfad492f91001ce38740849df71b036da92907b509f2ea6a4`  
		Last Modified: Fri, 25 May 2018 22:13:16 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46e82aadd10fc804f6ae4ce84746c0e8dc3fe92763cb5348fc91bdec58f5eff`  
		Last Modified: Tue, 12 Jun 2018 10:21:08 GMT  
		Size: 2.4 MB (2394060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7ee4f140dafbd8d13d0d77237c2068e73d11813e8a6da487df232bc1520191`  
		Last Modified: Tue, 12 Jun 2018 10:21:29 GMT  
		Size: 81.2 MB (81197141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12a1ad2b6f374c764906ed0612de5b4e6808948adbe7f088cdd95dcc2bfaea2`  
		Last Modified: Tue, 12 Jun 2018 10:21:06 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; 386

```console
$ docker pull redmine@sha256:69651607eaa727b08ee3cdbdbbe09187f25b60cafde5e9ab2ed62de3efa72f7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243938889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151fb511c3dce508fa41e5d6210a07d8608bcc14087a85bf9ecbb2e7416cb35e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 14:56:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 14:56:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 01 Jun 2018 15:31:48 GMT
ENV RUBY_MAJOR=2.3
# Fri, 01 Jun 2018 15:31:48 GMT
ENV RUBY_VERSION=2.3.7
# Fri, 01 Jun 2018 15:31:48 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Fri, 01 Jun 2018 15:31:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 01 Jun 2018 15:31:48 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 01 Jun 2018 15:37:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 01 Jun 2018 15:37:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 01 Jun 2018 15:37:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 01 Jun 2018 15:37:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 15:37:56 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 01 Jun 2018 15:37:56 GMT
CMD ["irb"]
# Fri, 01 Jun 2018 17:21:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 01 Jun 2018 17:22:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:22:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Jun 2018 17:22:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Jun 2018 17:22:55 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 01 Jun 2018 17:22:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 01 Jun 2018 17:24:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:24:21 GMT
ENV RAILS_ENV=production
# Fri, 01 Jun 2018 17:24:21 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 11:06:55 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 11:06:55 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 11:07:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:13:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:13:28 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:13:28 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:13:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:13:29 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:13:29 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6891754f33e4c1f328ba0f4530fdb8383be81d86d518c6967565db3d8a7d3f`  
		Last Modified: Fri, 01 Jun 2018 15:49:54 GMT  
		Size: 14.9 MB (14942131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089cb9bb407565a3373144a74a72a2345d043f8423185a11fe236787bfc2d617`  
		Last Modified: Fri, 01 Jun 2018 15:49:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8115b1e634948c41f632ab946ef11b82c36946e3400f38fdf3d7dd4859d47d0e`  
		Last Modified: Fri, 01 Jun 2018 15:53:49 GMT  
		Size: 31.2 MB (31159508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540caa681d0f094e7be3241a456e97e445472d53b9431fb5e59ade8a71be700f`  
		Last Modified: Fri, 01 Jun 2018 15:53:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cfdf83ac422932a67b6ed1ce96a3fa7172fdf95d4535c181c37cb05a0260bb`  
		Last Modified: Fri, 01 Jun 2018 17:32:53 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b6f451d4b864c82c5b14ad4abe587aeaf6c83e221686868b73d9f5bcfb6fb`  
		Last Modified: Fri, 01 Jun 2018 17:32:57 GMT  
		Size: 13.1 MB (13103058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d217113ffe8b8cfc32044872c625cc67a4cb9c2f5c8942898aba04d724ff9941`  
		Last Modified: Fri, 01 Jun 2018 17:32:50 GMT  
		Size: 480.6 KB (480577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9574eda8f6842775047763a6a61375169bd3730b604a896917d234e733fdc541`  
		Last Modified: Fri, 01 Jun 2018 17:32:48 GMT  
		Size: 8.6 KB (8568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898105d5c328b01b030d88048235a8637212013aac933f80f2641948b26c1da1`  
		Last Modified: Fri, 01 Jun 2018 17:33:08 GMT  
		Size: 45.5 MB (45458063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfdb170854f61a1221deb1059767b9b9e54079930914d4bb776d7b3ec65033c`  
		Last Modified: Fri, 01 Jun 2018 17:32:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9be43a91d8161433d6df6a5754d9030e04875a8efa59afd23e503ae88decae`  
		Last Modified: Tue, 12 Jun 2018 11:15:07 GMT  
		Size: 2.4 MB (2394070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d5b91455c1a7f43b6b1a58ceb59a8db53efe399b6a6df67d398a17aeca0060`  
		Last Modified: Tue, 12 Jun 2018 11:15:34 GMT  
		Size: 81.9 MB (81901755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3546964a75843bafd2a22093e242dd0481c9d30aa0d2fa6426731c40c7d00aa6`  
		Last Modified: Tue, 12 Jun 2018 11:15:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; ppc64le

```console
$ docker pull redmine@sha256:183b9b26f585f7c254276deefd525510eff395105d55bd3cae511fe7aa4020b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (241022093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e4d6ea5b57bc4618b0239e0e62a9a40e8d8b976c0c1119213a3ad2f8d587553`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:24:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:24:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:47:05 GMT
ENV RUBY_MAJOR=2.3
# Sat, 28 Apr 2018 11:47:06 GMT
ENV RUBY_VERSION=2.3.7
# Sat, 28 Apr 2018 11:47:06 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Thu, 24 May 2018 11:25:04 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 11:25:05 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 11:31:17 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 11:31:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:22:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:22:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:22:33 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:22:38 GMT
CMD ["irb"]
# Sat, 26 May 2018 10:00:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 10:01:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:01:18 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 10:01:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 10:01:26 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 10:01:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 10:03:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:03:18 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 10:03:23 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:27:36 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 09:27:37 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 09:27:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:40:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:40:55 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:40:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:41:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:41:04 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:41:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab444779be019b7a69946ce8e93e0062d82eedfe747470714b266730847305b0`  
		Last Modified: Sat, 28 Apr 2018 12:15:08 GMT  
		Size: 10.1 MB (10137971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bfab4f27e54de1711e2752ce393ce141c20aef64a8cd42d95a20585d28fa73`  
		Last Modified: Sat, 28 Apr 2018 12:15:04 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427cea24f278c9fb59c1f03139f4faacc225e025e81c234b072a9be00d7303b9`  
		Last Modified: Thu, 24 May 2018 11:47:28 GMT  
		Size: 35.0 MB (34990674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9b55c0bcd4e1cd34161e4082c080b6406cb9d2a5356f6372aa7aef7419c1fd`  
		Last Modified: Fri, 25 May 2018 09:34:57 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d097d01cbc428cafdec3f56751d05f3cff334f5f8d610985b33656cd96659ce0`  
		Last Modified: Sat, 26 May 2018 10:29:47 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f5223afc6c5aee4dac4d6916f3de788e99fdaa39e3a3972fcbc563b8b58e85`  
		Last Modified: Sat, 26 May 2018 10:29:49 GMT  
		Size: 13.1 MB (13113543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e2ae7242f7589196ea140019067ffef32ac76d1f22843f1d2427c6dc25044a`  
		Last Modified: Sat, 26 May 2018 10:29:45 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684692c2a7707c733b3abc86089324168108f8e6fc848dcbc75959ecf1fe2b3e`  
		Last Modified: Sat, 26 May 2018 10:29:44 GMT  
		Size: 8.6 KB (8643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a395dcaf30027d6758d7128c0a0bfb8d875ff8076d3ca8e1a97afd63ba326a`  
		Last Modified: Sat, 26 May 2018 10:29:54 GMT  
		Size: 44.2 MB (44177169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0641bf01cf6f2471f901f0f242f69d62e371d08f770e314d911869283130dc69`  
		Last Modified: Sat, 26 May 2018 10:29:41 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5811265b1231da8e2b62de9dc67c4c6d675df34065af1a0979a4175f03d0f6`  
		Last Modified: Tue, 12 Jun 2018 09:42:39 GMT  
		Size: 2.4 MB (2394459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ada27676faf511a2e25ea4891a2fc916b232abea821498caf40d3259eb0065d`  
		Last Modified: Tue, 12 Jun 2018 09:42:54 GMT  
		Size: 82.3 MB (82332518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b615cb125b671692de23cea58287a25cc1f72d9d6c4dcf4338cf628287aa100`  
		Last Modified: Tue, 12 Jun 2018 09:42:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; s390x

```console
$ docker pull redmine@sha256:2395cbc7c16314831238189dd87560a819635430e9877b5ead339a2031323930
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248239299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8503d313372f25dada50f32be1a4811d4cc65fc929e9b4da7e8358ae6a9225e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:34:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:34:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:46:52 GMT
ENV RUBY_MAJOR=2.3
# Sat, 28 Apr 2018 15:46:52 GMT
ENV RUBY_VERSION=2.3.7
# Sat, 28 Apr 2018 15:46:52 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Thu, 24 May 2018 13:34:21 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:34:21 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:36:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:36:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 11:59:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 11:59:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 11:59:38 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 11:59:38 GMT
CMD ["irb"]
# Sat, 26 May 2018 13:30:39 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 13:30:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:30:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 13:30:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 13:30:52 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 13:30:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 13:31:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:31:15 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 13:31:15 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 11:54:46 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 12 Jun 2018 11:54:46 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 12 Jun 2018 11:54:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:57:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:57:29 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:57:29 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:57:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:57:29 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:57:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61347f1daff97305b17924679d0a40043c3c68c04ecd38580c03a9f5f14cc025`  
		Last Modified: Sat, 28 Apr 2018 16:00:45 GMT  
		Size: 10.0 MB (9963110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4516576626d0afc4ce307a23343efc17d8fa199788465d6fb1966c6e38405270`  
		Last Modified: Sat, 28 Apr 2018 16:00:42 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688703125c86a49bcd0cb37f53b8cac626f9955a87e6b53ea276458c812556a5`  
		Last Modified: Thu, 24 May 2018 13:53:06 GMT  
		Size: 37.8 MB (37834362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efaa249cd8ff410a3388bda85a23d5cbb433c832a6d8d48f9ea2657e4bf3fc74`  
		Last Modified: Fri, 25 May 2018 12:11:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94de6c1f93af7a53a7462885f531826d15d58754eb2331e74481ca1feb375240`  
		Last Modified: Sat, 26 May 2018 13:35:04 GMT  
		Size: 2.1 KB (2108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7717f21c5fe51d9b4a0431eb42177a38a55ce86b8a91baf6844a2494316fc`  
		Last Modified: Sat, 26 May 2018 13:35:06 GMT  
		Size: 13.1 MB (13130026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801facac889b0875723265ee31a416dd8d2ebe6319baa73274d5e95735f61768`  
		Last Modified: Sat, 26 May 2018 13:35:03 GMT  
		Size: 486.8 KB (486830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcfe324efe956c80846c306ea43e06cd3a7ecae28bd7083b7ffd7164f74a6b0`  
		Last Modified: Sat, 26 May 2018 13:35:03 GMT  
		Size: 8.6 KB (8629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f414c39855c2661d42471c9a950643f0641f2e03fa94186f7aaeac714562dc38`  
		Last Modified: Sat, 26 May 2018 13:35:11 GMT  
		Size: 44.9 MB (44873884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d09ebeaf8ff1d4b5f4e650c0f2cfaddd28a587049acb2d2ff9dab5e6f75896`  
		Last Modified: Sat, 26 May 2018 13:35:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8040a9869c94ea8e95abe2335fb35fae6a69f93c84989ccebb048641603f575c`  
		Last Modified: Tue, 12 Jun 2018 11:58:14 GMT  
		Size: 2.4 MB (2394059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28191076641cd764bcf06e08c670ead359111cf61b7647aeb3f28beaab51cc7c`  
		Last Modified: Tue, 12 Jun 2018 11:58:26 GMT  
		Size: 85.1 MB (85078149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea796dce0719530c5b842f9db18eeb00dfc3cf4174aaca8ad48ebcd5ebba32fd`  
		Last Modified: Tue, 12 Jun 2018 11:58:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.8-passenger`

```console
$ docker pull redmine@sha256:25767f965f066b95e7be683b43c17ae9c62a9f4368247f3d613936e3b1be627a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:938c4320259aa63741c2e258cd17991cd8ca5ac5941ca70aeb4664065162815a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265196065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9beacc1b1b8c55864bdb9b73904946d9606cf887367d31324c709c39981725`
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
# Mon, 18 Jun 2018 23:42:40 GMT
ENV PASSENGER_VERSION=5.3.2
# Mon, 18 Jun 2018 23:43:42 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Jun 2018 23:43:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 18 Jun 2018 23:43:44 GMT
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
	-	`sha256:c2081de61b686cdaf4bf15692dc1051e5c31d91a1a9563c116bd876816e50217`  
		Last Modified: Mon, 18 Jun 2018 23:44:56 GMT  
		Size: 18.8 MB (18767268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24f51ef78eca2d38ab220a4d2998897f6cd1dc965118d4b3665fe1a544360f6`  
		Last Modified: Mon, 18 Jun 2018 23:44:51 GMT  
		Size: 4.5 MB (4484752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:25767f965f066b95e7be683b43c17ae9c62a9f4368247f3d613936e3b1be627a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:938c4320259aa63741c2e258cd17991cd8ca5ac5941ca70aeb4664065162815a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265196065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9beacc1b1b8c55864bdb9b73904946d9606cf887367d31324c709c39981725`
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
# Mon, 18 Jun 2018 23:42:40 GMT
ENV PASSENGER_VERSION=5.3.2
# Mon, 18 Jun 2018 23:43:42 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Jun 2018 23:43:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 18 Jun 2018 23:43:44 GMT
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
	-	`sha256:c2081de61b686cdaf4bf15692dc1051e5c31d91a1a9563c116bd876816e50217`  
		Last Modified: Mon, 18 Jun 2018 23:44:56 GMT  
		Size: 18.8 MB (18767268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24f51ef78eca2d38ab220a4d2998897f6cd1dc965118d4b3665fe1a544360f6`  
		Last Modified: Mon, 18 Jun 2018 23:44:51 GMT  
		Size: 4.5 MB (4484752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:5a3c9c6eda314464af863c4c87d1a544ea7f0ba7b7356fee591880d3412f93e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e962d9290cb34b3357abfa87fb86e1c1247fc78cddaf9fee7426cd1e3418cf49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241173944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e0fae75a774afc664cfeed804c9b82cef3f5fdb89bb3c119aadb2b369c6dab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:50:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:50:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 10:56:19 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 10:56:19 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 11:02:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 11:02:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:09:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:09:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:09:46 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:09:47 GMT
CMD ["irb"]
# Sat, 26 May 2018 10:03:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 10:04:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:04:04 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 10:04:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 10:04:06 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 10:04:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 10:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:04:59 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 10:05:00 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:13:20 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:13:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:13:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:19:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:19:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:19:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:19:47 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:19:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2119f18fa6f270436c891e0c459923ae24657bf4a8be20cfcfe964e7aa64b7b2`  
		Last Modified: Sat, 28 Apr 2018 12:31:30 GMT  
		Size: 9.1 MB (9119888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757db9404a98c26c96cb6b65e8c7893c1e1b5ea9774a5786abe9ec88468cf3`  
		Last Modified: Sat, 28 Apr 2018 12:31:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe38be652b02d310bce0a19598fe366080a17713f114eeb33355e15f6bf8c0`  
		Last Modified: Thu, 24 May 2018 11:29:31 GMT  
		Size: 21.1 MB (21074760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fc7f9b6584b1727a86e7d2130c3f4129978990791d89d6af0f9950997cc782`  
		Last Modified: Fri, 25 May 2018 09:17:51 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf4bf93be2e977124205e4f60ae3ba2a2f880c269a494237a056a419343587`  
		Last Modified: Sat, 26 May 2018 10:18:09 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b6a7f079c3c2475a4ae64a2f970ab18867099384ac59e88b28b14c37d777fc`  
		Last Modified: Sat, 26 May 2018 10:18:11 GMT  
		Size: 12.8 MB (12772572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fbc82bebefed415e0d99d95c2199ccefd11254cfbefe0cb44e5c4235a80dbc`  
		Last Modified: Sat, 26 May 2018 10:18:06 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494ed27bef31be226f9bb0b7dde7a3de53fee37d4a9defca95c65999a45bf288`  
		Last Modified: Sat, 26 May 2018 10:18:06 GMT  
		Size: 7.8 KB (7850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f35f04356acdd34ae2b420f4291d29a25391dab380d222d3d41d90f2397e32`  
		Last Modified: Sat, 26 May 2018 10:18:20 GMT  
		Size: 42.4 MB (42447740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d09e6d2bf37126451e274f656bcb7c1051070bf7c2b61040e77e0d24b38b685`  
		Last Modified: Sat, 26 May 2018 10:18:05 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae35dc032fece0c362f9840d1c3ed25d1ce3a740e5bcfd4e2d14c0ad0d31ba1`  
		Last Modified: Tue, 12 Jun 2018 09:24:52 GMT  
		Size: 2.5 MB (2457581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b505efdc435bd1754d4c55ae48dbd8a98af443ccc33094251493e4d7162d274`  
		Last Modified: Tue, 12 Jun 2018 09:25:18 GMT  
		Size: 100.3 MB (100341947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0761c8683eeab1a2bd4fc06f471663549f65482fd69d9c400724127e130f4bbe`  
		Last Modified: Tue, 12 Jun 2018 09:24:50 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:766183fc3065c6e4fe9c40393a089fbbab12a190c838b50415fa5024799f601f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235515414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b454e6204c51e2aee81fc587761a2be07692a67453b941d335582b6b1ebaa9c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:40:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:40:56 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 13:13:30 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:13:31 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:18:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 12:27:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 12:27:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 12:27:43 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 12:27:43 GMT
CMD ["irb"]
# Sat, 26 May 2018 12:23:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 12:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:24:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 12:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 12:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 12:24:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 12:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:25:12 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 12:25:13 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 12:04:22 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 12:04:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 12:04:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 12:10:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 12:10:19 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 12:10:20 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 12:10:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 12:10:20 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 12:10:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cc82e3a61290e4bfc39b7ec615f84e7782d645852ff04b0f1077ba3a8d6c85`  
		Last Modified: Sat, 28 Apr 2018 16:21:20 GMT  
		Size: 8.8 MB (8777726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60d4b7c236d855ddd6a1f286ece09d909ea721b8959a806142de215e84ad242`  
		Last Modified: Sat, 28 Apr 2018 16:21:17 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd714148500451500a2957112b77e7e1feb9b7fa3095266d84623a097aa9935b`  
		Last Modified: Thu, 24 May 2018 13:51:44 GMT  
		Size: 20.9 MB (20939873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b699e7e8d225b3c8087b29914345882f41c75520d205595171039ab1e0c856`  
		Last Modified: Fri, 25 May 2018 12:40:08 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e957186fb243adf5019585383bf19defaa1d82b4636998b537528235dd777f2`  
		Last Modified: Sat, 26 May 2018 12:37:45 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e22cb6dff3aef6e6185c86a85889793c9f7fff65d461c749557bc8884b9624`  
		Last Modified: Sat, 26 May 2018 12:37:50 GMT  
		Size: 12.6 MB (12629462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9726b5b13c21e003fe07315e1e1f21db27480310aa0606a5699f7435f62801cf`  
		Last Modified: Sat, 26 May 2018 12:37:45 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3784a11f9e4def9da3250391267c9bcffd3edd695febdb607895c2fa1524e923`  
		Last Modified: Sat, 26 May 2018 12:37:44 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aafb8c66421b2f5119eff1c096e049166c2dd3e873985a18c7b590c7ebb4b56`  
		Last Modified: Sat, 26 May 2018 12:37:57 GMT  
		Size: 41.0 MB (40993906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f353039d82ae39a8615ecd9501661245dea169886f89cdde578befb2a12df48e`  
		Last Modified: Sat, 26 May 2018 12:37:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9852e9c4fd4e0a4ffc37c9887171273f21a9ae2e883d870b16cb289d908af6`  
		Last Modified: Tue, 12 Jun 2018 12:15:26 GMT  
		Size: 2.5 MB (2457573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739668640609f602f6ec969ba7f6d3fda002b797ba555e34567c2129be396c87`  
		Last Modified: Tue, 12 Jun 2018 12:15:52 GMT  
		Size: 99.0 MB (99034155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8737fb16725b95759118365c028451f6e4be176a964bd87e6896f3d2c163537b`  
		Last Modified: Tue, 12 Jun 2018 12:15:24 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:772cbf15c35ef40dd1b9b61b5d27210401cdc6ca11df41c47862c66be01f192b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240322105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff87f79bed5d4e2326e799b5ce09455b176a252f2cc6a7506d5ad298db072c71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:41:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 May 2018 08:41:42 GMT
ENV RUBY_MAJOR=2.4
# Tue, 01 May 2018 08:41:44 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 01 May 2018 08:41:46 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 25 May 2018 16:57:16 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 25 May 2018 16:57:17 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 25 May 2018 17:06:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 25 May 2018 17:06:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 17:06:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 17:06:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 17:06:36 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 17:06:37 GMT
CMD ["irb"]
# Fri, 25 May 2018 21:43:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 25 May 2018 21:43:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:43:38 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 21:43:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 21:43:44 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 May 2018 21:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 May 2018 21:45:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:45:02 GMT
ENV RAILS_ENV=production
# Fri, 25 May 2018 21:45:03 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:50:34 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:50:35 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:50:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 10:04:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 10:05:10 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 10:05:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 10:05:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 10:05:13 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 10:05:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aeaeeebfa7e2a1e6c69a484a7648b6313aff4bf219767667e43bbfc42bb40d9`  
		Last Modified: Tue, 01 May 2018 09:53:45 GMT  
		Size: 9.3 MB (9343083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b78cb3f4882a2b3bf1ecb4fdbe1e145a3ddb80ce1fde62a33ada1beaf12daf8`  
		Last Modified: Tue, 01 May 2018 09:53:41 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18547e3cbea8ccf1a7ca22515077049b202d0f12cac441573f4edf1f9b567209`  
		Last Modified: Fri, 25 May 2018 18:07:21 GMT  
		Size: 21.3 MB (21265153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d550606a490752c05952acf272ef8a1e4df8e3a8be58f37f50260160a5b11`  
		Last Modified: Fri, 25 May 2018 18:07:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548893d753de4a74e5a64d26225a85691cfd2ad2b0546591161f46916ea1229f`  
		Last Modified: Fri, 25 May 2018 22:12:00 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecd4fc430347071a2c164435746340e018f58d8037eabf8dd5665ad1b0dff6`  
		Last Modified: Fri, 25 May 2018 22:12:03 GMT  
		Size: 12.9 MB (12940690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc6b9486743d7946d7922a4c47f0cc78876f91c3db011553f4f9a25a1dc96e2`  
		Last Modified: Fri, 25 May 2018 22:11:58 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f19d3b246e0490714656220e538767a6b0f47ae8f43c10cc32017687ae3114`  
		Last Modified: Fri, 25 May 2018 22:11:58 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c410f031f3a0caf03a8f292b3e8ef6c78c56aaa50043798b0c103969c61e7b3c`  
		Last Modified: Fri, 25 May 2018 22:12:12 GMT  
		Size: 42.4 MB (42359426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e4e23070b0c3156b98a799e22611cab9513b73ad6bc028c8267c993a6c11ad`  
		Last Modified: Fri, 25 May 2018 22:11:55 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357d119f0121b33c71c8d0285a400943f7e5a196087dc12787f728e94e48f84a`  
		Last Modified: Tue, 12 Jun 2018 10:20:01 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a70982daf566bed573f58ec650c9937184e454a116357bb6813d16a38a1953`  
		Last Modified: Tue, 12 Jun 2018 10:20:33 GMT  
		Size: 100.0 MB (100028736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e3e7ee1c808f80c1faece53239fb5490f188001a6883e8a7af41baf1abf0dd`  
		Last Modified: Tue, 12 Jun 2018 10:19:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:764345190def03c4ab83754fda33c0d76a683281f96ffbec18c3f6348dc9041b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250839130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad132521ba2255b2dd8b5d6f8181aa63ae397b0d9725980182fa8f29788f464`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 14:56:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 14:56:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_MAJOR=2.4
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_VERSION=2.4.4
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 01 Jun 2018 14:56:42 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 01 Jun 2018 15:04:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 01 Jun 2018 15:04:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 01 Jun 2018 15:04:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 01 Jun 2018 15:04:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 15:04:07 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 01 Jun 2018 15:04:07 GMT
CMD ["irb"]
# Fri, 01 Jun 2018 17:09:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 01 Jun 2018 17:10:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:10:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Jun 2018 17:10:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Jun 2018 17:10:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 01 Jun 2018 17:10:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 01 Jun 2018 17:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:12:33 GMT
ENV RAILS_ENV=production
# Fri, 01 Jun 2018 17:12:33 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 10:58:22 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 10:58:22 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 10:58:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:06:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:06:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:06:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:06:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:06:44 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:06:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6891754f33e4c1f328ba0f4530fdb8383be81d86d518c6967565db3d8a7d3f`  
		Last Modified: Fri, 01 Jun 2018 15:49:54 GMT  
		Size: 14.9 MB (14942131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089cb9bb407565a3373144a74a72a2345d043f8423185a11fe236787bfc2d617`  
		Last Modified: Fri, 01 Jun 2018 15:49:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b853b205add0f75c6d80bbdfcfd40d09d2435262eb1076c603fd5a6ffff58a15`  
		Last Modified: Fri, 01 Jun 2018 15:49:56 GMT  
		Size: 20.3 MB (20303639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7911295bc17916b28653d7cd6782d5eaede8fbbd7814f157a445829de1488cc8`  
		Last Modified: Fri, 01 Jun 2018 15:49:47 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f80ba1db311f9d427a674563c28a8673d1b2941bcf25116f71c8446c382a3b4`  
		Last Modified: Fri, 01 Jun 2018 17:31:18 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff801544c3611060c1d01382b678c4ae46af418e380369f5ebe1d34b0f29d77e`  
		Last Modified: Fri, 01 Jun 2018 17:31:27 GMT  
		Size: 13.1 MB (13103088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e57a3fcd9a49a1c8880a39b935633a3041926c55a56be8bd38c07adff2c4fa`  
		Last Modified: Fri, 01 Jun 2018 17:31:16 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351ff4ecba98d1064a87e597d3a72a277f456c7c8c5ca2c5d3232ee7d9ac7a5`  
		Last Modified: Fri, 01 Jun 2018 17:31:14 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a39a98e6e8a62ba33f9f31994bb9ec3ad114859cc7f7b8ca5826f709a638afe`  
		Last Modified: Fri, 01 Jun 2018 17:31:36 GMT  
		Size: 45.5 MB (45457639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b70809786ee4d1eb9cf95a13d81bc67933fe7a6a708c62b538781cdb68f550`  
		Last Modified: Fri, 01 Jun 2018 17:31:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a14fb52b6627cb9d4f52af269fe74bf7bf7d995fe198613b7b7cf50d671946`  
		Last Modified: Tue, 12 Jun 2018 11:13:47 GMT  
		Size: 2.5 MB (2456913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffec7b0744e9a0d95607305eb95910f629ae84141bf51751d86f687089c0c9e`  
		Last Modified: Tue, 12 Jun 2018 11:14:20 GMT  
		Size: 99.6 MB (99595433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c377f30ade0b425cc2dfc7f74f7a7c6b266135838922baf65570ca5aa9ddcc`  
		Last Modified: Tue, 12 Jun 2018 11:13:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:a5be41150eb4c43ed7abff82bb2f05a09603909724f7465c026dc6eb907d81ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246914671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390c80135916077ca2dfe9540434a4158af86bccb9a9afdadb86aa7ac911e6f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:24:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:24:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:24:08 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 11:24:08 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 11:24:09 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 10:50:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 10:50:50 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 10:58:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 10:58:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:19:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:19:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:19:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:19:11 GMT
CMD ["irb"]
# Sat, 26 May 2018 09:41:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 09:42:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:42:51 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 09:43:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 09:43:11 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 09:43:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 09:46:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:46:46 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 09:46:47 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:16:20 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:16:21 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:16:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:27:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:27:17 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:27:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:27:19 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:27:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab444779be019b7a69946ce8e93e0062d82eedfe747470714b266730847305b0`  
		Last Modified: Sat, 28 Apr 2018 12:15:08 GMT  
		Size: 10.1 MB (10137971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bfab4f27e54de1711e2752ce393ce141c20aef64a8cd42d95a20585d28fa73`  
		Last Modified: Sat, 28 Apr 2018 12:15:04 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15968d0ad41cd76cb81ece13f4d2ca5a0d8d6e4579ae1e619f8ddd2ad295c2`  
		Last Modified: Thu, 24 May 2018 11:43:15 GMT  
		Size: 21.8 MB (21757239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351a7ed5b215a7bd4c196ac77237a20aec73a9a6665d2224deead4283218f7d6`  
		Last Modified: Fri, 25 May 2018 09:32:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd39d3e6422d52b16dfac40b0f9fd915fe70de5266ff6e1c6a545538a617171`  
		Last Modified: Sat, 26 May 2018 10:28:52 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b890c32c8a35b49718465b739aa29851ea5d09645363047bcfd2646d0c7e59d2`  
		Last Modified: Sat, 26 May 2018 10:28:53 GMT  
		Size: 13.1 MB (13113602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2678fca66b07491a24dbcff3ff476be318e02d27a9fa400cad6b5f547dd076`  
		Last Modified: Sat, 26 May 2018 10:28:49 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a046b512a788097cb981ae07112f3acf9a3a7e482327497e84752c042b0e3d`  
		Last Modified: Sat, 26 May 2018 10:28:49 GMT  
		Size: 8.6 KB (8645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5051d2f3490817f1eaed4f1b50bd48d01d6c0b2434009909e37de36881604f25`  
		Last Modified: Sat, 26 May 2018 10:28:50 GMT  
		Size: 44.2 MB (44177337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddccebb5e83708991e95d69bbc9c1887b2ce6ad04108983330e3886ae9437580`  
		Last Modified: Sat, 26 May 2018 10:28:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaddb2a29953018da0b8c38dbb1b823521fefd3ac8c73e5af76ffdbd728ebe6`  
		Last Modified: Tue, 12 Jun 2018 09:41:47 GMT  
		Size: 2.5 MB (2457555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24a723fe54e0eb9fa8b9e32ad8b31f5e37054bc8bcb635a761218cefc34cc57`  
		Last Modified: Tue, 12 Jun 2018 09:42:07 GMT  
		Size: 101.4 MB (101395186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9bd308c3fa7faf7b34e3700d72fba3b5b75885111b57ab88e671b11cfcb57f`  
		Last Modified: Tue, 12 Jun 2018 09:41:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:f0c0a85271a2b46c950241072cbb49066910b1363a49e1b18321711acc42e356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251863499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3c2445619478fc2c537f8e73ff76d04033bb6cefa125ed381194c48601ac5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:34:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:34:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 13:16:30 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:16:30 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:19:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:19:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 11:58:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 11:58:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 11:58:17 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 11:58:18 GMT
CMD ["irb"]
# Sat, 26 May 2018 13:25:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 13:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:26:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 13:26:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 13:26:12 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 13:26:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 13:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:26:41 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 13:26:41 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 11:50:56 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 11:50:56 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 11:51:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:54:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:54:39 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:54:39 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:54:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:54:39 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:54:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61347f1daff97305b17924679d0a40043c3c68c04ecd38580c03a9f5f14cc025`  
		Last Modified: Sat, 28 Apr 2018 16:00:45 GMT  
		Size: 10.0 MB (9963110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4516576626d0afc4ce307a23343efc17d8fa199788465d6fb1966c6e38405270`  
		Last Modified: Sat, 28 Apr 2018 16:00:42 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db3c4bbb862bf979405dbf70d32620b3868872a06f125c0636aa2ca5d9a8118`  
		Last Modified: Thu, 24 May 2018 13:48:49 GMT  
		Size: 21.7 MB (21709046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc118bcf2202904ad8addf51827feb3eb0be972ee9912cfef0c03d939af4af5d`  
		Last Modified: Fri, 25 May 2018 12:08:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bedd5671d7bb05f77a136f485548dd94b826bcaeca59790f44d37972cac966c`  
		Last Modified: Sat, 26 May 2018 13:34:13 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0ad57d1afd283e6ea7a12a3fdb17282925a2ac6c8fc1e0b18594b70f4860d8`  
		Last Modified: Sat, 26 May 2018 13:34:15 GMT  
		Size: 13.1 MB (13130009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f941c2e8a178296eb5ef00af421a44bd40170e8b4535faf85b8c0f669e4127`  
		Last Modified: Sat, 26 May 2018 13:34:13 GMT  
		Size: 486.8 KB (486831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b65703d4fed12215b832fd6eb431e15ec6df3ea624470903495fa95675645b2`  
		Last Modified: Sat, 26 May 2018 13:34:11 GMT  
		Size: 8.6 KB (8628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917531cd746a6193f114fee86d51a4d4350e303ad3cd7397c0b6ce37b64b6fd3`  
		Last Modified: Sat, 26 May 2018 13:34:20 GMT  
		Size: 44.9 MB (44873258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eef527ad946ff40e56c84cc6b522a36ae762231ff206d25c8d7e8a2990ed6a5`  
		Last Modified: Sat, 26 May 2018 13:34:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65af06afa7570607311e05e896bafe81b5b71cab0ea3342263accce957bfb9a`  
		Last Modified: Tue, 12 Jun 2018 11:57:40 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de68e1636122528bca68ce45fd594efda99455c4d62484f6a367d2e63490be0a`  
		Last Modified: Tue, 12 Jun 2018 11:57:56 GMT  
		Size: 104.8 MB (104765451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef47d9b5f1472baf043c35c65038ca20350e724ae713d3f337f44ecb7f52f4cc`  
		Last Modified: Tue, 12 Jun 2018 11:57:40 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.6`

```console
$ docker pull redmine@sha256:5a3c9c6eda314464af863c4c87d1a544ea7f0ba7b7356fee591880d3412f93e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `redmine:3.4.6` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e962d9290cb34b3357abfa87fb86e1c1247fc78cddaf9fee7426cd1e3418cf49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241173944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e0fae75a774afc664cfeed804c9b82cef3f5fdb89bb3c119aadb2b369c6dab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:50:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:50:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 10:56:19 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 10:56:19 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 11:02:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 11:02:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:09:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:09:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:09:46 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:09:47 GMT
CMD ["irb"]
# Sat, 26 May 2018 10:03:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 10:04:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:04:04 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 10:04:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 10:04:06 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 10:04:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 10:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:04:59 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 10:05:00 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:13:20 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:13:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:13:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:19:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:19:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:19:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:19:47 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:19:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2119f18fa6f270436c891e0c459923ae24657bf4a8be20cfcfe964e7aa64b7b2`  
		Last Modified: Sat, 28 Apr 2018 12:31:30 GMT  
		Size: 9.1 MB (9119888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757db9404a98c26c96cb6b65e8c7893c1e1b5ea9774a5786abe9ec88468cf3`  
		Last Modified: Sat, 28 Apr 2018 12:31:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe38be652b02d310bce0a19598fe366080a17713f114eeb33355e15f6bf8c0`  
		Last Modified: Thu, 24 May 2018 11:29:31 GMT  
		Size: 21.1 MB (21074760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fc7f9b6584b1727a86e7d2130c3f4129978990791d89d6af0f9950997cc782`  
		Last Modified: Fri, 25 May 2018 09:17:51 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf4bf93be2e977124205e4f60ae3ba2a2f880c269a494237a056a419343587`  
		Last Modified: Sat, 26 May 2018 10:18:09 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b6a7f079c3c2475a4ae64a2f970ab18867099384ac59e88b28b14c37d777fc`  
		Last Modified: Sat, 26 May 2018 10:18:11 GMT  
		Size: 12.8 MB (12772572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fbc82bebefed415e0d99d95c2199ccefd11254cfbefe0cb44e5c4235a80dbc`  
		Last Modified: Sat, 26 May 2018 10:18:06 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494ed27bef31be226f9bb0b7dde7a3de53fee37d4a9defca95c65999a45bf288`  
		Last Modified: Sat, 26 May 2018 10:18:06 GMT  
		Size: 7.8 KB (7850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f35f04356acdd34ae2b420f4291d29a25391dab380d222d3d41d90f2397e32`  
		Last Modified: Sat, 26 May 2018 10:18:20 GMT  
		Size: 42.4 MB (42447740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d09e6d2bf37126451e274f656bcb7c1051070bf7c2b61040e77e0d24b38b685`  
		Last Modified: Sat, 26 May 2018 10:18:05 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae35dc032fece0c362f9840d1c3ed25d1ce3a740e5bcfd4e2d14c0ad0d31ba1`  
		Last Modified: Tue, 12 Jun 2018 09:24:52 GMT  
		Size: 2.5 MB (2457581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b505efdc435bd1754d4c55ae48dbd8a98af443ccc33094251493e4d7162d274`  
		Last Modified: Tue, 12 Jun 2018 09:25:18 GMT  
		Size: 100.3 MB (100341947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0761c8683eeab1a2bd4fc06f471663549f65482fd69d9c400724127e130f4bbe`  
		Last Modified: Tue, 12 Jun 2018 09:24:50 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm variant v7

```console
$ docker pull redmine@sha256:766183fc3065c6e4fe9c40393a089fbbab12a190c838b50415fa5024799f601f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235515414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b454e6204c51e2aee81fc587761a2be07692a67453b941d335582b6b1ebaa9c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:40:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:40:56 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 13:13:30 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:13:31 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:18:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 12:27:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 12:27:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 12:27:43 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 12:27:43 GMT
CMD ["irb"]
# Sat, 26 May 2018 12:23:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 12:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:24:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 12:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 12:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 12:24:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 12:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:25:12 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 12:25:13 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 12:04:22 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 12:04:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 12:04:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 12:10:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 12:10:19 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 12:10:20 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 12:10:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 12:10:20 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 12:10:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cc82e3a61290e4bfc39b7ec615f84e7782d645852ff04b0f1077ba3a8d6c85`  
		Last Modified: Sat, 28 Apr 2018 16:21:20 GMT  
		Size: 8.8 MB (8777726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60d4b7c236d855ddd6a1f286ece09d909ea721b8959a806142de215e84ad242`  
		Last Modified: Sat, 28 Apr 2018 16:21:17 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd714148500451500a2957112b77e7e1feb9b7fa3095266d84623a097aa9935b`  
		Last Modified: Thu, 24 May 2018 13:51:44 GMT  
		Size: 20.9 MB (20939873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b699e7e8d225b3c8087b29914345882f41c75520d205595171039ab1e0c856`  
		Last Modified: Fri, 25 May 2018 12:40:08 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e957186fb243adf5019585383bf19defaa1d82b4636998b537528235dd777f2`  
		Last Modified: Sat, 26 May 2018 12:37:45 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e22cb6dff3aef6e6185c86a85889793c9f7fff65d461c749557bc8884b9624`  
		Last Modified: Sat, 26 May 2018 12:37:50 GMT  
		Size: 12.6 MB (12629462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9726b5b13c21e003fe07315e1e1f21db27480310aa0606a5699f7435f62801cf`  
		Last Modified: Sat, 26 May 2018 12:37:45 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3784a11f9e4def9da3250391267c9bcffd3edd695febdb607895c2fa1524e923`  
		Last Modified: Sat, 26 May 2018 12:37:44 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aafb8c66421b2f5119eff1c096e049166c2dd3e873985a18c7b590c7ebb4b56`  
		Last Modified: Sat, 26 May 2018 12:37:57 GMT  
		Size: 41.0 MB (40993906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f353039d82ae39a8615ecd9501661245dea169886f89cdde578befb2a12df48e`  
		Last Modified: Sat, 26 May 2018 12:37:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9852e9c4fd4e0a4ffc37c9887171273f21a9ae2e883d870b16cb289d908af6`  
		Last Modified: Tue, 12 Jun 2018 12:15:26 GMT  
		Size: 2.5 MB (2457573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739668640609f602f6ec969ba7f6d3fda002b797ba555e34567c2129be396c87`  
		Last Modified: Tue, 12 Jun 2018 12:15:52 GMT  
		Size: 99.0 MB (99034155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8737fb16725b95759118365c028451f6e4be176a964bd87e6896f3d2c163537b`  
		Last Modified: Tue, 12 Jun 2018 12:15:24 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:772cbf15c35ef40dd1b9b61b5d27210401cdc6ca11df41c47862c66be01f192b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240322105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff87f79bed5d4e2326e799b5ce09455b176a252f2cc6a7506d5ad298db072c71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:41:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 May 2018 08:41:42 GMT
ENV RUBY_MAJOR=2.4
# Tue, 01 May 2018 08:41:44 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 01 May 2018 08:41:46 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 25 May 2018 16:57:16 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 25 May 2018 16:57:17 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 25 May 2018 17:06:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 25 May 2018 17:06:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 17:06:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 17:06:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 17:06:36 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 17:06:37 GMT
CMD ["irb"]
# Fri, 25 May 2018 21:43:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 25 May 2018 21:43:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:43:38 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 21:43:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 21:43:44 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 May 2018 21:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 May 2018 21:45:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:45:02 GMT
ENV RAILS_ENV=production
# Fri, 25 May 2018 21:45:03 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:50:34 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:50:35 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:50:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 10:04:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 10:05:10 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 10:05:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 10:05:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 10:05:13 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 10:05:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aeaeeebfa7e2a1e6c69a484a7648b6313aff4bf219767667e43bbfc42bb40d9`  
		Last Modified: Tue, 01 May 2018 09:53:45 GMT  
		Size: 9.3 MB (9343083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b78cb3f4882a2b3bf1ecb4fdbe1e145a3ddb80ce1fde62a33ada1beaf12daf8`  
		Last Modified: Tue, 01 May 2018 09:53:41 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18547e3cbea8ccf1a7ca22515077049b202d0f12cac441573f4edf1f9b567209`  
		Last Modified: Fri, 25 May 2018 18:07:21 GMT  
		Size: 21.3 MB (21265153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d550606a490752c05952acf272ef8a1e4df8e3a8be58f37f50260160a5b11`  
		Last Modified: Fri, 25 May 2018 18:07:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548893d753de4a74e5a64d26225a85691cfd2ad2b0546591161f46916ea1229f`  
		Last Modified: Fri, 25 May 2018 22:12:00 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecd4fc430347071a2c164435746340e018f58d8037eabf8dd5665ad1b0dff6`  
		Last Modified: Fri, 25 May 2018 22:12:03 GMT  
		Size: 12.9 MB (12940690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc6b9486743d7946d7922a4c47f0cc78876f91c3db011553f4f9a25a1dc96e2`  
		Last Modified: Fri, 25 May 2018 22:11:58 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f19d3b246e0490714656220e538767a6b0f47ae8f43c10cc32017687ae3114`  
		Last Modified: Fri, 25 May 2018 22:11:58 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c410f031f3a0caf03a8f292b3e8ef6c78c56aaa50043798b0c103969c61e7b3c`  
		Last Modified: Fri, 25 May 2018 22:12:12 GMT  
		Size: 42.4 MB (42359426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e4e23070b0c3156b98a799e22611cab9513b73ad6bc028c8267c993a6c11ad`  
		Last Modified: Fri, 25 May 2018 22:11:55 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357d119f0121b33c71c8d0285a400943f7e5a196087dc12787f728e94e48f84a`  
		Last Modified: Tue, 12 Jun 2018 10:20:01 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a70982daf566bed573f58ec650c9937184e454a116357bb6813d16a38a1953`  
		Last Modified: Tue, 12 Jun 2018 10:20:33 GMT  
		Size: 100.0 MB (100028736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e3e7ee1c808f80c1faece53239fb5490f188001a6883e8a7af41baf1abf0dd`  
		Last Modified: Tue, 12 Jun 2018 10:19:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; 386

```console
$ docker pull redmine@sha256:764345190def03c4ab83754fda33c0d76a683281f96ffbec18c3f6348dc9041b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250839130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad132521ba2255b2dd8b5d6f8181aa63ae397b0d9725980182fa8f29788f464`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 14:56:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 14:56:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_MAJOR=2.4
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_VERSION=2.4.4
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 01 Jun 2018 14:56:42 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 01 Jun 2018 15:04:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 01 Jun 2018 15:04:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 01 Jun 2018 15:04:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 01 Jun 2018 15:04:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 15:04:07 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 01 Jun 2018 15:04:07 GMT
CMD ["irb"]
# Fri, 01 Jun 2018 17:09:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 01 Jun 2018 17:10:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:10:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Jun 2018 17:10:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Jun 2018 17:10:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 01 Jun 2018 17:10:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 01 Jun 2018 17:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:12:33 GMT
ENV RAILS_ENV=production
# Fri, 01 Jun 2018 17:12:33 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 10:58:22 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 10:58:22 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 10:58:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:06:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:06:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:06:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:06:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:06:44 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:06:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6891754f33e4c1f328ba0f4530fdb8383be81d86d518c6967565db3d8a7d3f`  
		Last Modified: Fri, 01 Jun 2018 15:49:54 GMT  
		Size: 14.9 MB (14942131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089cb9bb407565a3373144a74a72a2345d043f8423185a11fe236787bfc2d617`  
		Last Modified: Fri, 01 Jun 2018 15:49:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b853b205add0f75c6d80bbdfcfd40d09d2435262eb1076c603fd5a6ffff58a15`  
		Last Modified: Fri, 01 Jun 2018 15:49:56 GMT  
		Size: 20.3 MB (20303639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7911295bc17916b28653d7cd6782d5eaede8fbbd7814f157a445829de1488cc8`  
		Last Modified: Fri, 01 Jun 2018 15:49:47 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f80ba1db311f9d427a674563c28a8673d1b2941bcf25116f71c8446c382a3b4`  
		Last Modified: Fri, 01 Jun 2018 17:31:18 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff801544c3611060c1d01382b678c4ae46af418e380369f5ebe1d34b0f29d77e`  
		Last Modified: Fri, 01 Jun 2018 17:31:27 GMT  
		Size: 13.1 MB (13103088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e57a3fcd9a49a1c8880a39b935633a3041926c55a56be8bd38c07adff2c4fa`  
		Last Modified: Fri, 01 Jun 2018 17:31:16 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351ff4ecba98d1064a87e597d3a72a277f456c7c8c5ca2c5d3232ee7d9ac7a5`  
		Last Modified: Fri, 01 Jun 2018 17:31:14 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a39a98e6e8a62ba33f9f31994bb9ec3ad114859cc7f7b8ca5826f709a638afe`  
		Last Modified: Fri, 01 Jun 2018 17:31:36 GMT  
		Size: 45.5 MB (45457639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b70809786ee4d1eb9cf95a13d81bc67933fe7a6a708c62b538781cdb68f550`  
		Last Modified: Fri, 01 Jun 2018 17:31:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a14fb52b6627cb9d4f52af269fe74bf7bf7d995fe198613b7b7cf50d671946`  
		Last Modified: Tue, 12 Jun 2018 11:13:47 GMT  
		Size: 2.5 MB (2456913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffec7b0744e9a0d95607305eb95910f629ae84141bf51751d86f687089c0c9e`  
		Last Modified: Tue, 12 Jun 2018 11:14:20 GMT  
		Size: 99.6 MB (99595433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c377f30ade0b425cc2dfc7f74f7a7c6b266135838922baf65570ca5aa9ddcc`  
		Last Modified: Tue, 12 Jun 2018 11:13:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; ppc64le

```console
$ docker pull redmine@sha256:a5be41150eb4c43ed7abff82bb2f05a09603909724f7465c026dc6eb907d81ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246914671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390c80135916077ca2dfe9540434a4158af86bccb9a9afdadb86aa7ac911e6f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:24:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:24:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:24:08 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 11:24:08 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 11:24:09 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 10:50:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 10:50:50 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 10:58:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 10:58:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:19:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:19:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:19:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:19:11 GMT
CMD ["irb"]
# Sat, 26 May 2018 09:41:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 09:42:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:42:51 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 09:43:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 09:43:11 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 09:43:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 09:46:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:46:46 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 09:46:47 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:16:20 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:16:21 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:16:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:27:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:27:17 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:27:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:27:19 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:27:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab444779be019b7a69946ce8e93e0062d82eedfe747470714b266730847305b0`  
		Last Modified: Sat, 28 Apr 2018 12:15:08 GMT  
		Size: 10.1 MB (10137971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bfab4f27e54de1711e2752ce393ce141c20aef64a8cd42d95a20585d28fa73`  
		Last Modified: Sat, 28 Apr 2018 12:15:04 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15968d0ad41cd76cb81ece13f4d2ca5a0d8d6e4579ae1e619f8ddd2ad295c2`  
		Last Modified: Thu, 24 May 2018 11:43:15 GMT  
		Size: 21.8 MB (21757239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351a7ed5b215a7bd4c196ac77237a20aec73a9a6665d2224deead4283218f7d6`  
		Last Modified: Fri, 25 May 2018 09:32:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd39d3e6422d52b16dfac40b0f9fd915fe70de5266ff6e1c6a545538a617171`  
		Last Modified: Sat, 26 May 2018 10:28:52 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b890c32c8a35b49718465b739aa29851ea5d09645363047bcfd2646d0c7e59d2`  
		Last Modified: Sat, 26 May 2018 10:28:53 GMT  
		Size: 13.1 MB (13113602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2678fca66b07491a24dbcff3ff476be318e02d27a9fa400cad6b5f547dd076`  
		Last Modified: Sat, 26 May 2018 10:28:49 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a046b512a788097cb981ae07112f3acf9a3a7e482327497e84752c042b0e3d`  
		Last Modified: Sat, 26 May 2018 10:28:49 GMT  
		Size: 8.6 KB (8645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5051d2f3490817f1eaed4f1b50bd48d01d6c0b2434009909e37de36881604f25`  
		Last Modified: Sat, 26 May 2018 10:28:50 GMT  
		Size: 44.2 MB (44177337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddccebb5e83708991e95d69bbc9c1887b2ce6ad04108983330e3886ae9437580`  
		Last Modified: Sat, 26 May 2018 10:28:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaddb2a29953018da0b8c38dbb1b823521fefd3ac8c73e5af76ffdbd728ebe6`  
		Last Modified: Tue, 12 Jun 2018 09:41:47 GMT  
		Size: 2.5 MB (2457555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24a723fe54e0eb9fa8b9e32ad8b31f5e37054bc8bcb635a761218cefc34cc57`  
		Last Modified: Tue, 12 Jun 2018 09:42:07 GMT  
		Size: 101.4 MB (101395186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9bd308c3fa7faf7b34e3700d72fba3b5b75885111b57ab88e671b11cfcb57f`  
		Last Modified: Tue, 12 Jun 2018 09:41:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; s390x

```console
$ docker pull redmine@sha256:f0c0a85271a2b46c950241072cbb49066910b1363a49e1b18321711acc42e356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251863499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3c2445619478fc2c537f8e73ff76d04033bb6cefa125ed381194c48601ac5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:34:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:34:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 13:16:30 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:16:30 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:19:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:19:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 11:58:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 11:58:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 11:58:17 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 11:58:18 GMT
CMD ["irb"]
# Sat, 26 May 2018 13:25:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 13:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:26:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 13:26:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 13:26:12 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 13:26:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 13:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:26:41 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 13:26:41 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 11:50:56 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 11:50:56 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 11:51:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:54:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:54:39 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:54:39 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:54:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:54:39 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:54:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61347f1daff97305b17924679d0a40043c3c68c04ecd38580c03a9f5f14cc025`  
		Last Modified: Sat, 28 Apr 2018 16:00:45 GMT  
		Size: 10.0 MB (9963110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4516576626d0afc4ce307a23343efc17d8fa199788465d6fb1966c6e38405270`  
		Last Modified: Sat, 28 Apr 2018 16:00:42 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db3c4bbb862bf979405dbf70d32620b3868872a06f125c0636aa2ca5d9a8118`  
		Last Modified: Thu, 24 May 2018 13:48:49 GMT  
		Size: 21.7 MB (21709046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc118bcf2202904ad8addf51827feb3eb0be972ee9912cfef0c03d939af4af5d`  
		Last Modified: Fri, 25 May 2018 12:08:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bedd5671d7bb05f77a136f485548dd94b826bcaeca59790f44d37972cac966c`  
		Last Modified: Sat, 26 May 2018 13:34:13 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0ad57d1afd283e6ea7a12a3fdb17282925a2ac6c8fc1e0b18594b70f4860d8`  
		Last Modified: Sat, 26 May 2018 13:34:15 GMT  
		Size: 13.1 MB (13130009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f941c2e8a178296eb5ef00af421a44bd40170e8b4535faf85b8c0f669e4127`  
		Last Modified: Sat, 26 May 2018 13:34:13 GMT  
		Size: 486.8 KB (486831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b65703d4fed12215b832fd6eb431e15ec6df3ea624470903495fa95675645b2`  
		Last Modified: Sat, 26 May 2018 13:34:11 GMT  
		Size: 8.6 KB (8628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917531cd746a6193f114fee86d51a4d4350e303ad3cd7397c0b6ce37b64b6fd3`  
		Last Modified: Sat, 26 May 2018 13:34:20 GMT  
		Size: 44.9 MB (44873258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eef527ad946ff40e56c84cc6b522a36ae762231ff206d25c8d7e8a2990ed6a5`  
		Last Modified: Sat, 26 May 2018 13:34:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65af06afa7570607311e05e896bafe81b5b71cab0ea3342263accce957bfb9a`  
		Last Modified: Tue, 12 Jun 2018 11:57:40 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de68e1636122528bca68ce45fd594efda99455c4d62484f6a367d2e63490be0a`  
		Last Modified: Tue, 12 Jun 2018 11:57:56 GMT  
		Size: 104.8 MB (104765451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef47d9b5f1472baf043c35c65038ca20350e724ae713d3f337f44ecb7f52f4cc`  
		Last Modified: Tue, 12 Jun 2018 11:57:40 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.6-passenger`

```console
$ docker pull redmine@sha256:48dee2fa7bc77c87a3edd734bae97e6da58773e5b4e8a15511b2c287d3e19432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.6-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:fbec50b9cc4a96fcff4d7c064db4d353338ef2ec65b44c8bcdbae7b737749d08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271182834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7a19c83a5a41cd5c14544a3e4510e5e00c52e4f4aacd902f7888a466e0753`
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
# Mon, 18 Jun 2018 23:41:37 GMT
ENV PASSENGER_VERSION=5.3.2
# Mon, 18 Jun 2018 23:42:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Jun 2018 23:42:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 18 Jun 2018 23:42:25 GMT
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
	-	`sha256:d9eb7172a27feb19e4c483f63453d362f4f096e8ea81cd19791709de10251603`  
		Last Modified: Mon, 18 Jun 2018 23:44:11 GMT  
		Size: 18.8 MB (18766511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e2567f7fc34130ded1744a8a90b8cc2f1e5b3f0affaa55f9c2cb1a4df9b20d`  
		Last Modified: Mon, 18 Jun 2018 23:44:10 GMT  
		Size: 4.5 MB (4484749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:48dee2fa7bc77c87a3edd734bae97e6da58773e5b4e8a15511b2c287d3e19432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:fbec50b9cc4a96fcff4d7c064db4d353338ef2ec65b44c8bcdbae7b737749d08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271182834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7a19c83a5a41cd5c14544a3e4510e5e00c52e4f4aacd902f7888a466e0753`
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
# Mon, 18 Jun 2018 23:41:37 GMT
ENV PASSENGER_VERSION=5.3.2
# Mon, 18 Jun 2018 23:42:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Jun 2018 23:42:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 18 Jun 2018 23:42:25 GMT
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
	-	`sha256:d9eb7172a27feb19e4c483f63453d362f4f096e8ea81cd19791709de10251603`  
		Last Modified: Mon, 18 Jun 2018 23:44:11 GMT  
		Size: 18.8 MB (18766511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e2567f7fc34130ded1744a8a90b8cc2f1e5b3f0affaa55f9c2cb1a4df9b20d`  
		Last Modified: Mon, 18 Jun 2018 23:44:10 GMT  
		Size: 4.5 MB (4484749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:48dee2fa7bc77c87a3edd734bae97e6da58773e5b4e8a15511b2c287d3e19432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:fbec50b9cc4a96fcff4d7c064db4d353338ef2ec65b44c8bcdbae7b737749d08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271182834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7a19c83a5a41cd5c14544a3e4510e5e00c52e4f4aacd902f7888a466e0753`
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
# Mon, 18 Jun 2018 23:41:37 GMT
ENV PASSENGER_VERSION=5.3.2
# Mon, 18 Jun 2018 23:42:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Jun 2018 23:42:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 18 Jun 2018 23:42:25 GMT
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
	-	`sha256:d9eb7172a27feb19e4c483f63453d362f4f096e8ea81cd19791709de10251603`  
		Last Modified: Mon, 18 Jun 2018 23:44:11 GMT  
		Size: 18.8 MB (18766511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e2567f7fc34130ded1744a8a90b8cc2f1e5b3f0affaa55f9c2cb1a4df9b20d`  
		Last Modified: Mon, 18 Jun 2018 23:44:10 GMT  
		Size: 4.5 MB (4484749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:5a3c9c6eda314464af863c4c87d1a544ea7f0ba7b7356fee591880d3412f93e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e962d9290cb34b3357abfa87fb86e1c1247fc78cddaf9fee7426cd1e3418cf49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241173944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e0fae75a774afc664cfeed804c9b82cef3f5fdb89bb3c119aadb2b369c6dab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:50:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:50:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 10:56:19 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 10:56:19 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 11:02:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 11:02:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:09:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:09:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:09:46 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:09:47 GMT
CMD ["irb"]
# Sat, 26 May 2018 10:03:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 10:04:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:04:04 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 10:04:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 10:04:06 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 10:04:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 10:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 10:04:59 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 10:05:00 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:13:20 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:13:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:13:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:19:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:19:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:19:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:19:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:19:47 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:19:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2119f18fa6f270436c891e0c459923ae24657bf4a8be20cfcfe964e7aa64b7b2`  
		Last Modified: Sat, 28 Apr 2018 12:31:30 GMT  
		Size: 9.1 MB (9119888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51757db9404a98c26c96cb6b65e8c7893c1e1b5ea9774a5786abe9ec88468cf3`  
		Last Modified: Sat, 28 Apr 2018 12:31:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe38be652b02d310bce0a19598fe366080a17713f114eeb33355e15f6bf8c0`  
		Last Modified: Thu, 24 May 2018 11:29:31 GMT  
		Size: 21.1 MB (21074760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fc7f9b6584b1727a86e7d2130c3f4129978990791d89d6af0f9950997cc782`  
		Last Modified: Fri, 25 May 2018 09:17:51 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf4bf93be2e977124205e4f60ae3ba2a2f880c269a494237a056a419343587`  
		Last Modified: Sat, 26 May 2018 10:18:09 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b6a7f079c3c2475a4ae64a2f970ab18867099384ac59e88b28b14c37d777fc`  
		Last Modified: Sat, 26 May 2018 10:18:11 GMT  
		Size: 12.8 MB (12772572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fbc82bebefed415e0d99d95c2199ccefd11254cfbefe0cb44e5c4235a80dbc`  
		Last Modified: Sat, 26 May 2018 10:18:06 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494ed27bef31be226f9bb0b7dde7a3de53fee37d4a9defca95c65999a45bf288`  
		Last Modified: Sat, 26 May 2018 10:18:06 GMT  
		Size: 7.8 KB (7850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f35f04356acdd34ae2b420f4291d29a25391dab380d222d3d41d90f2397e32`  
		Last Modified: Sat, 26 May 2018 10:18:20 GMT  
		Size: 42.4 MB (42447740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d09e6d2bf37126451e274f656bcb7c1051070bf7c2b61040e77e0d24b38b685`  
		Last Modified: Sat, 26 May 2018 10:18:05 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae35dc032fece0c362f9840d1c3ed25d1ce3a740e5bcfd4e2d14c0ad0d31ba1`  
		Last Modified: Tue, 12 Jun 2018 09:24:52 GMT  
		Size: 2.5 MB (2457581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b505efdc435bd1754d4c55ae48dbd8a98af443ccc33094251493e4d7162d274`  
		Last Modified: Tue, 12 Jun 2018 09:25:18 GMT  
		Size: 100.3 MB (100341947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0761c8683eeab1a2bd4fc06f471663549f65482fd69d9c400724127e130f4bbe`  
		Last Modified: Tue, 12 Jun 2018 09:24:50 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:766183fc3065c6e4fe9c40393a089fbbab12a190c838b50415fa5024799f601f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235515414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b454e6204c51e2aee81fc587761a2be07692a67453b941d335582b6b1ebaa9c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:40:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:40:56 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 13:13:30 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:13:31 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:18:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:18:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 12:27:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 12:27:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 12:27:43 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 12:27:43 GMT
CMD ["irb"]
# Sat, 26 May 2018 12:23:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 12:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:24:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 12:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 12:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 12:24:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 12:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:25:12 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 12:25:13 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 12:04:22 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 12:04:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 12:04:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 12:10:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 12:10:19 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 12:10:20 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 12:10:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 12:10:20 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 12:10:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cc82e3a61290e4bfc39b7ec615f84e7782d645852ff04b0f1077ba3a8d6c85`  
		Last Modified: Sat, 28 Apr 2018 16:21:20 GMT  
		Size: 8.8 MB (8777726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60d4b7c236d855ddd6a1f286ece09d909ea721b8959a806142de215e84ad242`  
		Last Modified: Sat, 28 Apr 2018 16:21:17 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd714148500451500a2957112b77e7e1feb9b7fa3095266d84623a097aa9935b`  
		Last Modified: Thu, 24 May 2018 13:51:44 GMT  
		Size: 20.9 MB (20939873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b699e7e8d225b3c8087b29914345882f41c75520d205595171039ab1e0c856`  
		Last Modified: Fri, 25 May 2018 12:40:08 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e957186fb243adf5019585383bf19defaa1d82b4636998b537528235dd777f2`  
		Last Modified: Sat, 26 May 2018 12:37:45 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e22cb6dff3aef6e6185c86a85889793c9f7fff65d461c749557bc8884b9624`  
		Last Modified: Sat, 26 May 2018 12:37:50 GMT  
		Size: 12.6 MB (12629462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9726b5b13c21e003fe07315e1e1f21db27480310aa0606a5699f7435f62801cf`  
		Last Modified: Sat, 26 May 2018 12:37:45 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3784a11f9e4def9da3250391267c9bcffd3edd695febdb607895c2fa1524e923`  
		Last Modified: Sat, 26 May 2018 12:37:44 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aafb8c66421b2f5119eff1c096e049166c2dd3e873985a18c7b590c7ebb4b56`  
		Last Modified: Sat, 26 May 2018 12:37:57 GMT  
		Size: 41.0 MB (40993906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f353039d82ae39a8615ecd9501661245dea169886f89cdde578befb2a12df48e`  
		Last Modified: Sat, 26 May 2018 12:37:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9852e9c4fd4e0a4ffc37c9887171273f21a9ae2e883d870b16cb289d908af6`  
		Last Modified: Tue, 12 Jun 2018 12:15:26 GMT  
		Size: 2.5 MB (2457573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739668640609f602f6ec969ba7f6d3fda002b797ba555e34567c2129be396c87`  
		Last Modified: Tue, 12 Jun 2018 12:15:52 GMT  
		Size: 99.0 MB (99034155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8737fb16725b95759118365c028451f6e4be176a964bd87e6896f3d2c163537b`  
		Last Modified: Tue, 12 Jun 2018 12:15:24 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:772cbf15c35ef40dd1b9b61b5d27210401cdc6ca11df41c47862c66be01f192b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240322105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff87f79bed5d4e2326e799b5ce09455b176a252f2cc6a7506d5ad298db072c71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:41:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 May 2018 08:41:42 GMT
ENV RUBY_MAJOR=2.4
# Tue, 01 May 2018 08:41:44 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 01 May 2018 08:41:46 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 25 May 2018 16:57:16 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 25 May 2018 16:57:17 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 25 May 2018 17:06:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 25 May 2018 17:06:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 17:06:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 17:06:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 17:06:36 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 17:06:37 GMT
CMD ["irb"]
# Fri, 25 May 2018 21:43:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 25 May 2018 21:43:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:43:38 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 21:43:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 25 May 2018 21:43:44 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 25 May 2018 21:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 25 May 2018 21:45:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 21:45:02 GMT
ENV RAILS_ENV=production
# Fri, 25 May 2018 21:45:03 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:50:34 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:50:35 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:50:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 10:04:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 10:05:10 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 10:05:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 10:05:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 10:05:13 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 10:05:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aeaeeebfa7e2a1e6c69a484a7648b6313aff4bf219767667e43bbfc42bb40d9`  
		Last Modified: Tue, 01 May 2018 09:53:45 GMT  
		Size: 9.3 MB (9343083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b78cb3f4882a2b3bf1ecb4fdbe1e145a3ddb80ce1fde62a33ada1beaf12daf8`  
		Last Modified: Tue, 01 May 2018 09:53:41 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18547e3cbea8ccf1a7ca22515077049b202d0f12cac441573f4edf1f9b567209`  
		Last Modified: Fri, 25 May 2018 18:07:21 GMT  
		Size: 21.3 MB (21265153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d550606a490752c05952acf272ef8a1e4df8e3a8be58f37f50260160a5b11`  
		Last Modified: Fri, 25 May 2018 18:07:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548893d753de4a74e5a64d26225a85691cfd2ad2b0546591161f46916ea1229f`  
		Last Modified: Fri, 25 May 2018 22:12:00 GMT  
		Size: 2.1 KB (2113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecd4fc430347071a2c164435746340e018f58d8037eabf8dd5665ad1b0dff6`  
		Last Modified: Fri, 25 May 2018 22:12:03 GMT  
		Size: 12.9 MB (12940690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc6b9486743d7946d7922a4c47f0cc78876f91c3db011553f4f9a25a1dc96e2`  
		Last Modified: Fri, 25 May 2018 22:11:58 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f19d3b246e0490714656220e538767a6b0f47ae8f43c10cc32017687ae3114`  
		Last Modified: Fri, 25 May 2018 22:11:58 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c410f031f3a0caf03a8f292b3e8ef6c78c56aaa50043798b0c103969c61e7b3c`  
		Last Modified: Fri, 25 May 2018 22:12:12 GMT  
		Size: 42.4 MB (42359426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e4e23070b0c3156b98a799e22611cab9513b73ad6bc028c8267c993a6c11ad`  
		Last Modified: Fri, 25 May 2018 22:11:55 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357d119f0121b33c71c8d0285a400943f7e5a196087dc12787f728e94e48f84a`  
		Last Modified: Tue, 12 Jun 2018 10:20:01 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a70982daf566bed573f58ec650c9937184e454a116357bb6813d16a38a1953`  
		Last Modified: Tue, 12 Jun 2018 10:20:33 GMT  
		Size: 100.0 MB (100028736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e3e7ee1c808f80c1faece53239fb5490f188001a6883e8a7af41baf1abf0dd`  
		Last Modified: Tue, 12 Jun 2018 10:19:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:764345190def03c4ab83754fda33c0d76a683281f96ffbec18c3f6348dc9041b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250839130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad132521ba2255b2dd8b5d6f8181aa63ae397b0d9725980182fa8f29788f464`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 14:56:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 14:56:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_MAJOR=2.4
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_VERSION=2.4.4
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Fri, 01 Jun 2018 14:56:42 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 01 Jun 2018 14:56:42 GMT
ENV BUNDLER_VERSION=1.16.2
# Fri, 01 Jun 2018 15:04:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 01 Jun 2018 15:04:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 01 Jun 2018 15:04:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 01 Jun 2018 15:04:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 15:04:07 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 01 Jun 2018 15:04:07 GMT
CMD ["irb"]
# Fri, 01 Jun 2018 17:09:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 01 Jun 2018 17:10:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:10:49 GMT
ENV GOSU_VERSION=1.10
# Fri, 01 Jun 2018 17:10:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 01 Jun 2018 17:10:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 01 Jun 2018 17:10:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 01 Jun 2018 17:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 17:12:33 GMT
ENV RAILS_ENV=production
# Fri, 01 Jun 2018 17:12:33 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 10:58:22 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 10:58:22 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 10:58:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:06:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:06:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:06:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:06:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:06:44 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:06:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6891754f33e4c1f328ba0f4530fdb8383be81d86d518c6967565db3d8a7d3f`  
		Last Modified: Fri, 01 Jun 2018 15:49:54 GMT  
		Size: 14.9 MB (14942131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089cb9bb407565a3373144a74a72a2345d043f8423185a11fe236787bfc2d617`  
		Last Modified: Fri, 01 Jun 2018 15:49:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b853b205add0f75c6d80bbdfcfd40d09d2435262eb1076c603fd5a6ffff58a15`  
		Last Modified: Fri, 01 Jun 2018 15:49:56 GMT  
		Size: 20.3 MB (20303639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7911295bc17916b28653d7cd6782d5eaede8fbbd7814f157a445829de1488cc8`  
		Last Modified: Fri, 01 Jun 2018 15:49:47 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f80ba1db311f9d427a674563c28a8673d1b2941bcf25116f71c8446c382a3b4`  
		Last Modified: Fri, 01 Jun 2018 17:31:18 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff801544c3611060c1d01382b678c4ae46af418e380369f5ebe1d34b0f29d77e`  
		Last Modified: Fri, 01 Jun 2018 17:31:27 GMT  
		Size: 13.1 MB (13103088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e57a3fcd9a49a1c8880a39b935633a3041926c55a56be8bd38c07adff2c4fa`  
		Last Modified: Fri, 01 Jun 2018 17:31:16 GMT  
		Size: 480.6 KB (480563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0351ff4ecba98d1064a87e597d3a72a277f456c7c8c5ca2c5d3232ee7d9ac7a5`  
		Last Modified: Fri, 01 Jun 2018 17:31:14 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a39a98e6e8a62ba33f9f31994bb9ec3ad114859cc7f7b8ca5826f709a638afe`  
		Last Modified: Fri, 01 Jun 2018 17:31:36 GMT  
		Size: 45.5 MB (45457639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b70809786ee4d1eb9cf95a13d81bc67933fe7a6a708c62b538781cdb68f550`  
		Last Modified: Fri, 01 Jun 2018 17:31:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a14fb52b6627cb9d4f52af269fe74bf7bf7d995fe198613b7b7cf50d671946`  
		Last Modified: Tue, 12 Jun 2018 11:13:47 GMT  
		Size: 2.5 MB (2456913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffec7b0744e9a0d95607305eb95910f629ae84141bf51751d86f687089c0c9e`  
		Last Modified: Tue, 12 Jun 2018 11:14:20 GMT  
		Size: 99.6 MB (99595433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c377f30ade0b425cc2dfc7f74f7a7c6b266135838922baf65570ca5aa9ddcc`  
		Last Modified: Tue, 12 Jun 2018 11:13:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:a5be41150eb4c43ed7abff82bb2f05a09603909724f7465c026dc6eb907d81ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246914671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390c80135916077ca2dfe9540434a4158af86bccb9a9afdadb86aa7ac911e6f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:24:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:24:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:24:08 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 11:24:08 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 11:24:09 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 10:50:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 10:50:50 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 10:58:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 10:58:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 09:19:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 09:19:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 09:19:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 09:19:11 GMT
CMD ["irb"]
# Sat, 26 May 2018 09:41:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 09:42:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:42:51 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 09:43:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 09:43:11 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 09:43:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 09:46:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:46:46 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 09:46:47 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 09:16:20 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 09:16:21 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 09:16:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 09:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 09:27:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 09:27:17 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 09:27:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:27:19 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 09:27:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab444779be019b7a69946ce8e93e0062d82eedfe747470714b266730847305b0`  
		Last Modified: Sat, 28 Apr 2018 12:15:08 GMT  
		Size: 10.1 MB (10137971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bfab4f27e54de1711e2752ce393ce141c20aef64a8cd42d95a20585d28fa73`  
		Last Modified: Sat, 28 Apr 2018 12:15:04 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15968d0ad41cd76cb81ece13f4d2ca5a0d8d6e4579ae1e619f8ddd2ad295c2`  
		Last Modified: Thu, 24 May 2018 11:43:15 GMT  
		Size: 21.8 MB (21757239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351a7ed5b215a7bd4c196ac77237a20aec73a9a6665d2224deead4283218f7d6`  
		Last Modified: Fri, 25 May 2018 09:32:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd39d3e6422d52b16dfac40b0f9fd915fe70de5266ff6e1c6a545538a617171`  
		Last Modified: Sat, 26 May 2018 10:28:52 GMT  
		Size: 2.1 KB (2122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b890c32c8a35b49718465b739aa29851ea5d09645363047bcfd2646d0c7e59d2`  
		Last Modified: Sat, 26 May 2018 10:28:53 GMT  
		Size: 13.1 MB (13113602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2678fca66b07491a24dbcff3ff476be318e02d27a9fa400cad6b5f547dd076`  
		Last Modified: Sat, 26 May 2018 10:28:49 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a046b512a788097cb981ae07112f3acf9a3a7e482327497e84752c042b0e3d`  
		Last Modified: Sat, 26 May 2018 10:28:49 GMT  
		Size: 8.6 KB (8645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5051d2f3490817f1eaed4f1b50bd48d01d6c0b2434009909e37de36881604f25`  
		Last Modified: Sat, 26 May 2018 10:28:50 GMT  
		Size: 44.2 MB (44177337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddccebb5e83708991e95d69bbc9c1887b2ce6ad04108983330e3886ae9437580`  
		Last Modified: Sat, 26 May 2018 10:28:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaddb2a29953018da0b8c38dbb1b823521fefd3ac8c73e5af76ffdbd728ebe6`  
		Last Modified: Tue, 12 Jun 2018 09:41:47 GMT  
		Size: 2.5 MB (2457555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24a723fe54e0eb9fa8b9e32ad8b31f5e37054bc8bcb635a761218cefc34cc57`  
		Last Modified: Tue, 12 Jun 2018 09:42:07 GMT  
		Size: 101.4 MB (101395186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9bd308c3fa7faf7b34e3700d72fba3b5b75885111b57ab88e671b11cfcb57f`  
		Last Modified: Tue, 12 Jun 2018 09:41:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:f0c0a85271a2b46c950241072cbb49066910b1363a49e1b18321711acc42e356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251863499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3c2445619478fc2c537f8e73ff76d04033bb6cefa125ed381194c48601ac5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:34:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:34:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 15:34:24 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 24 May 2018 13:16:30 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 13:16:30 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 13:19:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 13:19:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 25 May 2018 11:58:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 25 May 2018 11:58:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 May 2018 11:58:17 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 25 May 2018 11:58:18 GMT
CMD ["irb"]
# Sat, 26 May 2018 13:25:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 May 2018 13:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:26:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 May 2018 13:26:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 26 May 2018 13:26:12 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 26 May 2018 13:26:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 26 May 2018 13:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 13:26:41 GMT
ENV RAILS_ENV=production
# Sat, 26 May 2018 13:26:41 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Jun 2018 11:50:56 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 12 Jun 2018 11:50:56 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 12 Jun 2018 11:51:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Jun 2018 11:54:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 12 Jun 2018 11:54:39 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Jun 2018 11:54:39 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 12 Jun 2018 11:54:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 11:54:39 GMT
EXPOSE 3000/tcp
# Tue, 12 Jun 2018 11:54:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61347f1daff97305b17924679d0a40043c3c68c04ecd38580c03a9f5f14cc025`  
		Last Modified: Sat, 28 Apr 2018 16:00:45 GMT  
		Size: 10.0 MB (9963110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4516576626d0afc4ce307a23343efc17d8fa199788465d6fb1966c6e38405270`  
		Last Modified: Sat, 28 Apr 2018 16:00:42 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db3c4bbb862bf979405dbf70d32620b3868872a06f125c0636aa2ca5d9a8118`  
		Last Modified: Thu, 24 May 2018 13:48:49 GMT  
		Size: 21.7 MB (21709046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc118bcf2202904ad8addf51827feb3eb0be972ee9912cfef0c03d939af4af5d`  
		Last Modified: Fri, 25 May 2018 12:08:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bedd5671d7bb05f77a136f485548dd94b826bcaeca59790f44d37972cac966c`  
		Last Modified: Sat, 26 May 2018 13:34:13 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0ad57d1afd283e6ea7a12a3fdb17282925a2ac6c8fc1e0b18594b70f4860d8`  
		Last Modified: Sat, 26 May 2018 13:34:15 GMT  
		Size: 13.1 MB (13130009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f941c2e8a178296eb5ef00af421a44bd40170e8b4535faf85b8c0f669e4127`  
		Last Modified: Sat, 26 May 2018 13:34:13 GMT  
		Size: 486.8 KB (486831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b65703d4fed12215b832fd6eb431e15ec6df3ea624470903495fa95675645b2`  
		Last Modified: Sat, 26 May 2018 13:34:11 GMT  
		Size: 8.6 KB (8628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917531cd746a6193f114fee86d51a4d4350e303ad3cd7397c0b6ce37b64b6fd3`  
		Last Modified: Sat, 26 May 2018 13:34:20 GMT  
		Size: 44.9 MB (44873258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eef527ad946ff40e56c84cc6b522a36ae762231ff206d25c8d7e8a2990ed6a5`  
		Last Modified: Sat, 26 May 2018 13:34:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65af06afa7570607311e05e896bafe81b5b71cab0ea3342263accce957bfb9a`  
		Last Modified: Tue, 12 Jun 2018 11:57:40 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de68e1636122528bca68ce45fd594efda99455c4d62484f6a367d2e63490be0a`  
		Last Modified: Tue, 12 Jun 2018 11:57:56 GMT  
		Size: 104.8 MB (104765451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef47d9b5f1472baf043c35c65038ca20350e724ae713d3f337f44ecb7f52f4cc`  
		Last Modified: Tue, 12 Jun 2018 11:57:40 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:48dee2fa7bc77c87a3edd734bae97e6da58773e5b4e8a15511b2c287d3e19432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:fbec50b9cc4a96fcff4d7c064db4d353338ef2ec65b44c8bcdbae7b737749d08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271182834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7a19c83a5a41cd5c14544a3e4510e5e00c52e4f4aacd902f7888a466e0753`
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
# Mon, 18 Jun 2018 23:41:37 GMT
ENV PASSENGER_VERSION=5.3.2
# Mon, 18 Jun 2018 23:42:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 18 Jun 2018 23:42:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 18 Jun 2018 23:42:25 GMT
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
	-	`sha256:d9eb7172a27feb19e4c483f63453d362f4f096e8ea81cd19791709de10251603`  
		Last Modified: Mon, 18 Jun 2018 23:44:11 GMT  
		Size: 18.8 MB (18766511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e2567f7fc34130ded1744a8a90b8cc2f1e5b3f0affaa55f9c2cb1a4df9b20d`  
		Last Modified: Mon, 18 Jun 2018 23:44:10 GMT  
		Size: 4.5 MB (4484749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
