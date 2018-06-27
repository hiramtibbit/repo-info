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
$ docker pull redmine@sha256:a47418eb7e05137b545590ed42d20c75cb4cccf963edeb6a763d724f180c27e0
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
$ docker pull redmine@sha256:21a6f39f8d4a54c391b49f2e8035d670a314909d0810f8f5d6482b6884443b7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249052523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36305366e7ed479b5eb1bd68f0b8c93eb4e1119b1a31ef76da2b5754ea5a0720`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 02:43:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 02:50:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 02:50:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:50:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 02:50:05 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:18:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:19:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:19:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:19:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:20:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:56 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:20:56 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 10:21:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:27:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:27:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:27:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:27:53 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:27:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5b7570c14686a3dfb8d138a3c87f61935b8dcab5ebad8fab6c7d3fc5adc13`  
		Last Modified: Wed, 27 Jun 2018 03:14:38 GMT  
		Size: 21.3 MB (21306627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc66d7f32eb09a662bd20852b06e8794dab71ef36126f366bd6d9a7201c113d`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273f202161a785c9a5698c3a3a45f57238fd3b2a44c140f6fb515960a857844a`  
		Last Modified: Wed, 27 Jun 2018 10:38:39 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c015acbbce3628986ded3d25eebe294f39636c6c0f027549787d5e29a84ca`  
		Last Modified: Wed, 27 Jun 2018 10:38:41 GMT  
		Size: 13.0 MB (12967892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc0e847209a792f5dacba66df94724d617de6734d16e1fb4434f28cbb96947`  
		Last Modified: Wed, 27 Jun 2018 10:38:36 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68107099fb8b472e5c4a7a767e28ef4727589b146581d6071190093d739288`  
		Last Modified: Wed, 27 Jun 2018 10:38:34 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2cb8e499b79664f1b19a375272bd7adedc0a3734b4206c1d519e09cbe3fa80`  
		Last Modified: Wed, 27 Jun 2018 10:38:55 GMT  
		Size: 58.0 MB (58002590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27242abea96f6f3ac858acffd7ed3b88dd0faa974974b3472d8bab3fccf4f089`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278d9efc1670a760b13c2fd7bfb6895a2960bcfe8a316ff4cc9deac5cbf3a73`  
		Last Modified: Wed, 27 Jun 2018 10:38:33 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c70b5650565c4c63e36f7a6e9bd9da9dcf6abff70e3950ceaa1bebe06670`  
		Last Modified: Wed, 27 Jun 2018 10:38:58 GMT  
		Size: 89.4 MB (89370329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39803a1108a119f8f3e3fdb99c680727029b18731c106107a9acaafd68d21a1b`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e4fb19272e14f98cef9f9ddcd5785ed87fe90ffe1cf09ce03c4c86932b6fa071
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242620163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f0c867a40cd2d82495155338e34db502cc3257ba0d40acfa71a018586d6f5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:50:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:50:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 11:50:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 11:50:28 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 11:56:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 11:56:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 11:56:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 11:56:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:56:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 11:56:29 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 14:24:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 14:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:25:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 14:25:03 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 14:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:26:10 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 14:26:10 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 14:26:10 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 14:26:10 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 14:26:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 14:33:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 14:33:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 14:33:16 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 14:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:33:17 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 14:33:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f98906fae67dfd0e40891444119fee686218e619a229f63d78cd5dc796f5813`  
		Last Modified: Wed, 27 Jun 2018 12:21:16 GMT  
		Size: 9.1 MB (9134326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642f0a356d3beae53c7a5b2ae2e7208975a4058d565aa54b5b26f668755b0100`  
		Last Modified: Wed, 27 Jun 2018 12:21:13 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23acf77ea1fa346796eb2fd343a4d7843f03d32c75044b641746b0eb391faa22`  
		Last Modified: Wed, 27 Jun 2018 12:21:21 GMT  
		Size: 21.1 MB (21075011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd5d6f694a7b53e7ea556a913f30d7f486381f10e16440b089b66f874cc5e65`  
		Last Modified: Wed, 27 Jun 2018 12:21:13 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c80cc98f90fa70ca12419ea0f834e782660bded9ea2a36d3aaabe4d1ea2913`  
		Last Modified: Wed, 27 Jun 2018 14:40:29 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d71f6fed31923994d84664349e79622adb7254a59552da18f1ef287ae88fc23`  
		Last Modified: Wed, 27 Jun 2018 14:40:32 GMT  
		Size: 12.8 MB (12772560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61073d761d31d5adbe7e0db434f8549e19d69e8fe04bf291f769555a1cb9411`  
		Last Modified: Wed, 27 Jun 2018 14:40:28 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a2a8fad387861a974f8d71a2c4db15db82655f8f9d83c739b602efe923eef6`  
		Last Modified: Wed, 27 Jun 2018 14:40:26 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961cd33098a1f29e0cb59a11d0a9359c8e041656ed17d81ad23d70493dbba6e1`  
		Last Modified: Wed, 27 Jun 2018 14:40:52 GMT  
		Size: 55.4 MB (55400544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed6fe830585ff5bf3d3d7ff3a5f2acba733f03f41bc439d538e213d1fd5ebce`  
		Last Modified: Wed, 27 Jun 2018 14:40:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250fbcf2b8c74eeb0b794778caa0f41bcffebae1d5ef5795ba8e0da82de7f3f8`  
		Last Modified: Wed, 27 Jun 2018 14:40:27 GMT  
		Size: 2.5 MB (2457564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b4d47d74f749950c75a914b70959fb9826e8cb6265d87e784f8ed00f14cb81`  
		Last Modified: Wed, 27 Jun 2018 14:41:02 GMT  
		Size: 88.8 MB (88828349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f98bedb0a50102fc0cbb3fbc65264f6d4cbd71f1e0990358e04f31afdc9230`  
		Last Modified: Wed, 27 Jun 2018 14:40:25 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:df7144a1137742adc5e4e11125da5e4d18e517fe491950489f2f97452b2522bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238431615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f661101282a8e3e492241307b1e3a098dbc6f66588f65c554e6267e3fa781492`
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
# Thu, 21 Jun 2018 12:06:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 12:06:34 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 12:06:34 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 12:06:35 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 12:06:35 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 12:06:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 12:12:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 12:12:25 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 12:12:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 12:12:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 12:12:26 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 12:12:26 GMT
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
	-	`sha256:1374393c860f34b65841b3158be787bc2df985c718b0bd332c8d8c7428a83e52`  
		Last Modified: Thu, 21 Jun 2018 12:18:49 GMT  
		Size: 54.7 MB (54698588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db57f6861effae6af53fac1d6db5790da8afb4d14f64a0f0f22aba5649080e`  
		Last Modified: Thu, 21 Jun 2018 12:18:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590497ab77d278095f81c2e419971e26ef0d6483e14a0b97ed13f8ec94a76f83`  
		Last Modified: Thu, 21 Jun 2018 12:18:34 GMT  
		Size: 2.5 MB (2457572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3918493345313d19d0cbd4c26bd6142b71be53be71d3976bbd956e00a1c7da8`  
		Last Modified: Thu, 21 Jun 2018 12:18:57 GMT  
		Size: 88.2 MB (88245671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e118f56902617fa8db9f49493a8d0039c3a90976f6506cf6df565557e09560af`  
		Last Modified: Thu, 21 Jun 2018 12:18:32 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:988df7496fea7b7cc53d5210dd1bd832b8d22cbf82fb0b9f6a7d61c366de95c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243226684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795f00ab797d1fb1e0e03e8ea4d2c01f3f953b9df56a7da35adfd390546f65a6`
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
# Thu, 21 Jun 2018 16:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 16:59:12 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 16:59:13 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 16:59:13 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 16:59:14 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 16:59:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 17:12:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 17:12:14 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 17:12:14 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 17:12:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 17:12:16 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 17:12:17 GMT
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
	-	`sha256:33f179dd0cce7b503211ff6d22a331d47169a234442ac5b0f6d11519eb3ead53`  
		Last Modified: Thu, 21 Jun 2018 17:27:27 GMT  
		Size: 56.2 MB (56166767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00c8c2de88468ac5d8b2af1848ffa502eded4adfd3a7e8e3859a57018eaace6`  
		Last Modified: Thu, 21 Jun 2018 17:27:04 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95eb29922954e0efbb03fb3ca6512c8ce0d257303fc9a551e8d52455bef6d5b1`  
		Last Modified: Thu, 21 Jun 2018 17:27:07 GMT  
		Size: 2.5 MB (2456916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bfa5dcbc83e5d3cd044dfbc3d81faa5b22a07684e60e5ca7cc0c8f4c76a57f`  
		Last Modified: Thu, 21 Jun 2018 17:27:35 GMT  
		Size: 89.1 MB (89125967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f3ad7cc3086c71f467f0eee89ca821bc6f3aae7bd05ce85b8eb78d72e15a94`  
		Last Modified: Thu, 21 Jun 2018 17:27:04 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:3e0378142a38be556e5b326797b2b40d6df2166040fef3a3556e8d095c147a4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251905216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8a85e0ccb47343b6f39f393063672f59feac95b8d8ec473a791ae40243f2a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:47:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:47:23 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 14:47:24 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 14:53:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 14:53:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 14:53:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 14:53:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:53:44 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 14:53:44 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 16:42:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 16:43:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:43:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 16:43:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 16:43:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 16:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 16:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:45:04 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 16:45:04 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 16:45:05 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 16:45:05 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 16:45:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 16:52:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 16:52:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 16:52:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 16:52:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 16:52:56 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 16:52:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b289a13ed74ce3f9f091ea432c69aa4570f8ff74b86d057cc234f5ddb7b72453`  
		Last Modified: Wed, 27 Jun 2018 15:05:51 GMT  
		Size: 14.6 MB (14649674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1350c4cb0128495d6c832cd343c879c72641a66361eb59a4a2d268e66fe5260a`  
		Last Modified: Wed, 27 Jun 2018 15:05:43 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3df271f17f5aa9ebe7f9aff1ad11d62f3365c8308539af1f64417109324157`  
		Last Modified: Wed, 27 Jun 2018 15:05:53 GMT  
		Size: 20.3 MB (20303492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4896aa3439f3b59320045be1d21d81cb62f3013f85438aff5f605fa5f03e44`  
		Last Modified: Wed, 27 Jun 2018 15:05:43 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8e2da882fa96e0160363ea1addb474c78ba396339ce62a0eddb95bef6aac0c`  
		Last Modified: Wed, 27 Jun 2018 17:02:56 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556109851b46a9d55a936427cf1aba43b7b02767a76970b5a7dfd2bafad3a990`  
		Last Modified: Wed, 27 Jun 2018 17:03:00 GMT  
		Size: 13.1 MB (13102802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7603aff6ebae3d567efd7913993bb6e98e967c53595173a643d94a6f4094f`  
		Last Modified: Wed, 27 Jun 2018 17:02:54 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f58dceb318f4ca0fa42e7a92340b1180679094e00d645abbde7df146c4557c3`  
		Last Modified: Wed, 27 Jun 2018 17:02:54 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45aebb14e4c4d63df5cdf67ee860f4fffd8ecc419d33ec84c513c5f237135106`  
		Last Modified: Wed, 27 Jun 2018 17:03:17 GMT  
		Size: 58.8 MB (58828813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f0052ff19733420ecf1effca07e7c76705db1c62bae928c0ec3f8301543c12`  
		Last Modified: Wed, 27 Jun 2018 17:02:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ef258e9bb99f4cc235d82b37e1472ce507197c2056fb0cd09437b7fd17829`  
		Last Modified: Wed, 27 Jun 2018 17:02:53 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9609b2462619a0661cc96ed7bffd396573e9f81ff0dace171a7833cabb13e86`  
		Last Modified: Wed, 27 Jun 2018 17:03:21 GMT  
		Size: 87.6 MB (87586161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2785ce363a4489468ae0bded19f1d20a6da7d04471224bf069c1cda38f8b7ba0`  
		Last Modified: Wed, 27 Jun 2018 17:02:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:907c86f110cb9245f282d9daeb30d2fef6fe5073bc1c78cea57bc0f4c745dc1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249907098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0de66b8b9f108221b0d577f34253c4482d759cf811a688bfc94660b4c03cb28`
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
# Thu, 21 Jun 2018 09:57:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 09:57:57 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 09:57:58 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 09:57:58 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 09:57:59 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 09:58:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 10:09:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 10:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 10:09:12 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 10:09:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 10:09:15 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 10:09:19 GMT
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
	-	`sha256:bbb5e064795a21c6fe2b678532828599dfeca38475f384ae401a3452917112a2`  
		Last Modified: Thu, 21 Jun 2018 10:24:26 GMT  
		Size: 58.6 MB (58565791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a889f049e1545e24c2d4646d29bf7b0a3e0f72f2d286d8c219dbe346c08efb9`  
		Last Modified: Thu, 21 Jun 2018 10:24:09 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da14007fe0da424adf4a75292ded9fae229448fbca2f31fd9be25d875290f85`  
		Last Modified: Thu, 21 Jun 2018 10:24:10 GMT  
		Size: 2.5 MB (2457580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc76284d5a2c5b70dc71348dd65954b145b82b10252ae4c34b4960f37e90b86`  
		Last Modified: Thu, 21 Jun 2018 10:24:30 GMT  
		Size: 90.0 MB (89999138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f957288162825d819debf1f6f7c10ee1f44c5bd0d99f411380a51626910bda76`  
		Last Modified: Thu, 21 Jun 2018 10:24:10 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:30b50ca230b2b96668f067c3aa64f4ab650c5d0f58b705b9475e8eb036d65f63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254937140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924bf921e4b13986dd1234309bc076c1a40bf4134fc02b23ec26aac9448fc0e1`
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
# Thu, 21 Jun 2018 13:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 13:40:20 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 13:40:20 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 13:40:20 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 13:40:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 13:40:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 13:43:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 13:43:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 13:43:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 13:43:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 13:43:57 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 13:43:57 GMT
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
	-	`sha256:147ee1fc1b1a421958c0c5f1e52aa1fcd3bb3db7c6b68f6c4c69b8daa4356bdd`  
		Last Modified: Thu, 21 Jun 2018 13:47:39 GMT  
		Size: 59.5 MB (59533196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fc24964afaca53a8f69b089f296f90016a97249c28644192e99669d94ca950`  
		Last Modified: Thu, 21 Jun 2018 13:47:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95937785bb16f99b2d94476fe49fab2418fd81f458a9214d61406057d60561f7`  
		Last Modified: Thu, 21 Jun 2018 13:47:27 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5621a26308c9d8073f8ef0d18bc14689e45b96da0d71fe09658c0311b4578690`  
		Last Modified: Thu, 21 Jun 2018 13:47:43 GMT  
		Size: 93.2 MB (93179163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff10f665c615aa7ed26b1dd97eec9db4674eb2affa120fb7b23dc95d1b52b7c`  
		Last Modified: Thu, 21 Jun 2018 13:47:26 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:e04531804beee3d392cd90fb8fbdb0a2daa12726eb24046f7d917a6b2377a430
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
$ docker pull redmine@sha256:272bdca69ad934a2a7edd3a82021c31cc6c7960e17463cbc0581f0ce17a2c2fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.0 MB (243025915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa4dcba1aae3dc05a7ed182209e5d5eb39b513abc6455333c3693dfb6e6382a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_MAJOR=2.3
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 03:04:00 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 03:08:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 03:08:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 03:08:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 03:08:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 03:08:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 03:08:16 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:29:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:30:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:30:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:30:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:30:14 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:30:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:31:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:31:25 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:31:25 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:31:25 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 27 Jun 2018 10:31:26 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 27 Jun 2018 10:31:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:36:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:36:44 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:36:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:36:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:36:45 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:36:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2321a2b502d518e32c5b0354d0ccb872059126e20902f8961218b6ef9cae8b50`  
		Last Modified: Wed, 27 Jun 2018 03:17:18 GMT  
		Size: 33.9 MB (33927093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7d3c81da28b00e5503276ec9cafcae8cc703bae82e2f3f8690a9d7bd000441`  
		Last Modified: Wed, 27 Jun 2018 03:17:05 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9261d20bf71a0a44adf529dd1f6b078bd96368d09277a2db0b70bf65c58aadbb`  
		Last Modified: Wed, 27 Jun 2018 10:41:06 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b915054b97509d91b9e2f00642eafcfdca4cd92b659b585b7e8ffafff0f6e7b3`  
		Last Modified: Wed, 27 Jun 2018 10:41:10 GMT  
		Size: 13.0 MB (12967815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314d9ff7c344d950b95e6eee885f162a4b1e7c2b29a7cdad7fc87cb8d849ff12`  
		Last Modified: Wed, 27 Jun 2018 10:41:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8828ff90009a7332057f54b3d584ee091ce0f977ed7af97f1050bccf871f07`  
		Last Modified: Wed, 27 Jun 2018 10:41:04 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b298dee095f5639d37369dfafe8b1347a349881134adbbc0298752b65c35d0`  
		Last Modified: Wed, 27 Jun 2018 10:41:22 GMT  
		Size: 58.0 MB (58002742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6853239500b0c1a4eff75c441486f7e1ed3e961c26d695c120a457599e52c7`  
		Last Modified: Wed, 27 Jun 2018 10:41:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fd85f2a4ebed0db48c36173f9b7bfbfc5851610e8baba30e07d2169c454e3`  
		Last Modified: Wed, 27 Jun 2018 10:41:03 GMT  
		Size: 2.4 MB (2394067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dab39061dc97d1165cc48c951afe540534e62a8d47691cd0ca4ec06e544e84`  
		Last Modified: Wed, 27 Jun 2018 10:41:18 GMT  
		Size: 70.8 MB (70786034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a29a08409ff3611f411fbc68cda0a6fd0e72b1c887d1773fe7abcef193a40d`  
		Last Modified: Wed, 27 Jun 2018 10:41:02 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:57599f96e3f93d1280db0afa2749135098a40d78d2af143335ef484b1b575e67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235612867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7110187f9e1dca935b761b92c1780d159e873b945fdd5edd8f03b0df2719529`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:50:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:50:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 12:11:18 GMT
ENV RUBY_MAJOR=2.3
# Wed, 27 Jun 2018 12:11:18 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 27 Jun 2018 12:11:18 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 27 Jun 2018 12:11:19 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 12:11:19 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 12:16:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 12:16:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 12:16:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 12:16:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:16:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 12:16:10 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 14:33:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 14:33:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:33:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:33:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 14:33:58 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 14:34:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 14:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:34:51 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 14:34:51 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 14:34:52 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 27 Jun 2018 14:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 27 Jun 2018 14:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 14:39:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 14:39:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 14:39:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 14:39:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:39:59 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 14:39:59 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f98906fae67dfd0e40891444119fee686218e619a229f63d78cd5dc796f5813`  
		Last Modified: Wed, 27 Jun 2018 12:21:16 GMT  
		Size: 9.1 MB (9134326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642f0a356d3beae53c7a5b2ae2e7208975a4058d565aa54b5b26f668755b0100`  
		Last Modified: Wed, 27 Jun 2018 12:21:13 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bab831301eac5d70a67be2c0e0049c52765c59d07f600e4ca6be57fd85ca0f`  
		Last Modified: Wed, 27 Jun 2018 12:23:34 GMT  
		Size: 32.8 MB (32753382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe10a7e6d193c272ab1ebfb446a8b865b6a57225a88bb608adcb99242fce043`  
		Last Modified: Wed, 27 Jun 2018 12:23:23 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca12a4a4068a98d9353cf10199ceaf19995558f35aa173db2c338317b3e29a3`  
		Last Modified: Wed, 27 Jun 2018 14:41:32 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8597469e3195bb3363349a828f658595320199426ee0eaa5733a4ef8126c27`  
		Last Modified: Wed, 27 Jun 2018 14:41:36 GMT  
		Size: 12.8 MB (12772565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:539d5c40fe4738f0af166ef5b9a4af56e3fa44ee8abde62eaefd5bc996478961`  
		Last Modified: Wed, 27 Jun 2018 14:41:33 GMT  
		Size: 491.1 KB (491122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a029873e1df3a142968f8522ff262b26fa1f03d285a3e0cb390367a5bfdc32`  
		Last Modified: Wed, 27 Jun 2018 14:41:31 GMT  
		Size: 7.8 KB (7845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b32825a6b885e65637ca07af0086ede73890cb3a292e8dfe545eeb55ba30cde`  
		Last Modified: Wed, 27 Jun 2018 14:41:48 GMT  
		Size: 55.4 MB (55401005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5bdbaf5a72fbc1548a6128f45118181197b145b17ea7b0e45cd4cc8bea74137`  
		Last Modified: Wed, 27 Jun 2018 14:41:31 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57fed90002050216af24805598e8d9ce16bb1a143aabde61c9cdd96c309ce14`  
		Last Modified: Wed, 27 Jun 2018 14:41:31 GMT  
		Size: 2.4 MB (2394455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a551dbaa5289003606c9a664b788574b4e8d337c4e113e089cb1f14d259c381a`  
		Last Modified: Wed, 27 Jun 2018 14:41:47 GMT  
		Size: 70.2 MB (70205324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752d9d2db358a76e8ab4abb2f536d49f76b4f7adf8bfa401a51e9f7597f7579a`  
		Last Modified: Wed, 27 Jun 2018 14:41:30 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:0fc15bf64eac635c89adadd3806ff5afe8bc04610823ca1d50fe6ba086a7537e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 MB (231578856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b991834c05d7380cb1d103a1b162a258700c1d7c6a10b67c2997ff15714b8c`
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
# Thu, 21 Jun 2018 12:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 12:13:24 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 12:13:24 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 12:13:25 GMT
ENV REDMINE_VERSION=3.3.8
# Thu, 21 Jun 2018 12:13:25 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Thu, 21 Jun 2018 12:13:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 12:18:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 12:18:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 12:18:08 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 12:18:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 12:18:09 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 12:18:09 GMT
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
	-	`sha256:36e4ee90ace2e64cbcc2a2d3e280ad8d331131458bb72bd020c2fa5ecfb82d40`  
		Last Modified: Thu, 21 Jun 2018 12:19:37 GMT  
		Size: 54.7 MB (54698433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b85c9b67cd8f1ce20a9c1d3923ed89433a632918570e1d48bbcee0ddfd0aae1`  
		Last Modified: Thu, 21 Jun 2018 12:19:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d037d38862bafc6fd4f24ca7dfe5d9ca8faf2aeb76bfd10979335acf56806c`  
		Last Modified: Thu, 21 Jun 2018 12:19:22 GMT  
		Size: 2.4 MB (2394445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430bc271235e2ac890d803fb99d2fbcf46c6c451e1c64e8d7b496c43f2b3c5d4`  
		Last Modified: Thu, 21 Jun 2018 12:19:36 GMT  
		Size: 69.9 MB (69853959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b845da62bdc2c86bf4bcd0ffe10678696982dfa0fbbfc2a8211b67fe46a4d3`  
		Last Modified: Thu, 21 Jun 2018 12:19:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:1f509a8d15a70a347b6a315b32a672a35f031d10a3f3269882be031ae423b951
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237077303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79089a322c6f8fe1d38c00e7c0875658f5e1e0f112487af5e3394e40d9a15da`
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
# Thu, 21 Jun 2018 17:15:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 17:15:35 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 17:15:35 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 17:15:36 GMT
ENV REDMINE_VERSION=3.3.8
# Thu, 21 Jun 2018 17:15:37 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Thu, 21 Jun 2018 17:15:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 17:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 17:26:44 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 17:26:45 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 17:26:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 17:26:47 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 17:26:47 GMT
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
	-	`sha256:398742b41291631bc6f968c8cae2468ddd14b9b852af94083d96869eff6854f4`  
		Last Modified: Thu, 21 Jun 2018 17:28:41 GMT  
		Size: 56.2 MB (56167018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9c2b611faef911068e185b9abd88ef0c5b6bdfecb029be9fe7ad4392ab6d45`  
		Last Modified: Thu, 21 Jun 2018 17:28:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9acd59689fde9ce96612b78c07d99cdd4eb733d59dd9f750b2524453a81ce`  
		Last Modified: Thu, 21 Jun 2018 17:28:20 GMT  
		Size: 2.4 MB (2394066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd8816d2648d1b0ddd291371cbd9a4c8907dcf114e58191a995f158ff215658`  
		Last Modified: Thu, 21 Jun 2018 17:28:39 GMT  
		Size: 70.3 MB (70280940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5617e5c727381aa5b1aa4acd6061c0b23e79d70c5cea5169d6949554524713`  
		Last Modified: Thu, 21 Jun 2018 17:28:19 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:5ce7cb2d9fd7edd96f1b44d63502d01ca88ba1f1e08cd2c0db2c0da8d23eea5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (247027540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b022a1e4e32c7eb479bf6553e707e7fcaf60ec92e49a579cb9e5b558ca135b09`
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
# Thu, 21 Jun 2018 11:09:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 11:09:16 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 11:09:16 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 11:09:16 GMT
ENV REDMINE_VERSION=3.3.8
# Thu, 21 Jun 2018 11:09:17 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Thu, 21 Jun 2018 11:09:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 11:14:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 11:14:21 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 11:14:21 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 11:14:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 11:14:21 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 11:14:21 GMT
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
	-	`sha256:8c2654f85f5b7f668e683128adac1f725054af819ea55c6f7bde0e9cbf4f3a9c`  
		Last Modified: Thu, 21 Jun 2018 11:16:33 GMT  
		Size: 60.6 MB (60580201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c5d16d908b5bbb9dc42ac5c42fbcb38e0339a5e8cccdc517d407fc2d9299c3`  
		Last Modified: Thu, 21 Jun 2018 11:16:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f02cd2bfa1aa35131d3ec3b391ed666e1c005709b4efde7af0c199606201ca`  
		Last Modified: Thu, 21 Jun 2018 11:16:06 GMT  
		Size: 2.4 MB (2394062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de0d5a78758a9d99af5f32a815f02e58d8960b1360797b02b0ccc7d614b1383`  
		Last Modified: Thu, 21 Jun 2018 11:16:27 GMT  
		Size: 69.9 MB (69868276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cce7d0a9ac71218e5f6253327d12ad23d12b93d2f5ad9aa9cbe763647a28798`  
		Last Modified: Thu, 21 Jun 2018 11:16:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:7b3d314b8d89c31112ed2f34d9253010dbae03fb53229956cabd127be0615bde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244005336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ab9e257d92288192fa7cc584c2c2f9a8641dc51f48b6c033165025237cf80e`
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
# Thu, 21 Jun 2018 10:13:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 10:13:02 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 10:13:02 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 10:13:03 GMT
ENV REDMINE_VERSION=3.3.8
# Thu, 21 Jun 2018 10:13:04 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Thu, 21 Jun 2018 10:13:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 10:23:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 10:23:39 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 10:23:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 10:23:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 10:23:48 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 10:23:52 GMT
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
	-	`sha256:42c79d69aae34e53499a21afea2693b4bc013077028d74b0b5e30d95c4105f34`  
		Last Modified: Thu, 21 Jun 2018 10:25:20 GMT  
		Size: 58.6 MB (58566683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb1e9e94ddcd0a664c099e296f3fb45d031da33a37bd806e710b1816d91e0c9`  
		Last Modified: Thu, 21 Jun 2018 10:25:04 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40aeae3af6a508ff0f1e24b567dc752b887f1b87d9a60edb589858ec5222f10`  
		Last Modified: Thu, 21 Jun 2018 10:25:05 GMT  
		Size: 2.4 MB (2394466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164e6a8521582589d2cbc4a3909a075fafa9145a5628e972124540e0781d4ab4`  
		Last Modified: Thu, 21 Jun 2018 10:25:18 GMT  
		Size: 70.9 MB (70926240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518b0c78f3135cc2397f5518e13c56787bf4a42976bbfd520ec9ef66009e4149`  
		Last Modified: Thu, 21 Jun 2018 10:25:04 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:028d5b0ca4cf97269aee1871190b401d8228a1927768549ad602c3bf1151b37d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251229131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac71d9197cf213eea8005de46c01f8589f639a2eb5a1b2c73aaefef5ef483ab`
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
# Thu, 21 Jun 2018 13:44:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 13:44:34 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 13:44:34 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 13:44:34 GMT
ENV REDMINE_VERSION=3.3.8
# Thu, 21 Jun 2018 13:44:35 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Thu, 21 Jun 2018 13:44:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 13:47:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 13:47:12 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 13:47:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 13:47:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 13:47:14 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 13:47:14 GMT
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
	-	`sha256:eadd5af9bd5bd5e656cec7e9a9b27e84d8b168bbad3e06d90f5e18b1b7f71aff`  
		Last Modified: Thu, 21 Jun 2018 13:48:18 GMT  
		Size: 59.5 MB (59533442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e764ca1a11cc27db3156d1dff72273d8e154ac5e070d472388d461ae4f0a93`  
		Last Modified: Thu, 21 Jun 2018 13:48:01 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd7e5240971a254b02cde3d738278621464164066f0f44fc13df12d4753d41e`  
		Last Modified: Thu, 21 Jun 2018 13:48:02 GMT  
		Size: 2.4 MB (2394068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8c82c24194cfc982368473f00ebb8ab401c4ac53c7d36d9cf339250812dd45`  
		Last Modified: Thu, 21 Jun 2018 13:48:18 GMT  
		Size: 73.4 MB (73408413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ba76ad79cc8fb20b6bb09792cfb6e98126a9e63f108db51c97d67bcf079c24`  
		Last Modified: Thu, 21 Jun 2018 13:48:01 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.8`

```console
$ docker pull redmine@sha256:e04531804beee3d392cd90fb8fbdb0a2daa12726eb24046f7d917a6b2377a430
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
$ docker pull redmine@sha256:272bdca69ad934a2a7edd3a82021c31cc6c7960e17463cbc0581f0ce17a2c2fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.0 MB (243025915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa4dcba1aae3dc05a7ed182209e5d5eb39b513abc6455333c3693dfb6e6382a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_MAJOR=2.3
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 03:04:00 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 03:08:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 03:08:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 03:08:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 03:08:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 03:08:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 03:08:16 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:29:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:30:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:30:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:30:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:30:14 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:30:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:31:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:31:25 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:31:25 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:31:25 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 27 Jun 2018 10:31:26 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 27 Jun 2018 10:31:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:36:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:36:44 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:36:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:36:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:36:45 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:36:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2321a2b502d518e32c5b0354d0ccb872059126e20902f8961218b6ef9cae8b50`  
		Last Modified: Wed, 27 Jun 2018 03:17:18 GMT  
		Size: 33.9 MB (33927093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7d3c81da28b00e5503276ec9cafcae8cc703bae82e2f3f8690a9d7bd000441`  
		Last Modified: Wed, 27 Jun 2018 03:17:05 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9261d20bf71a0a44adf529dd1f6b078bd96368d09277a2db0b70bf65c58aadbb`  
		Last Modified: Wed, 27 Jun 2018 10:41:06 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b915054b97509d91b9e2f00642eafcfdca4cd92b659b585b7e8ffafff0f6e7b3`  
		Last Modified: Wed, 27 Jun 2018 10:41:10 GMT  
		Size: 13.0 MB (12967815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314d9ff7c344d950b95e6eee885f162a4b1e7c2b29a7cdad7fc87cb8d849ff12`  
		Last Modified: Wed, 27 Jun 2018 10:41:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8828ff90009a7332057f54b3d584ee091ce0f977ed7af97f1050bccf871f07`  
		Last Modified: Wed, 27 Jun 2018 10:41:04 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b298dee095f5639d37369dfafe8b1347a349881134adbbc0298752b65c35d0`  
		Last Modified: Wed, 27 Jun 2018 10:41:22 GMT  
		Size: 58.0 MB (58002742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6853239500b0c1a4eff75c441486f7e1ed3e961c26d695c120a457599e52c7`  
		Last Modified: Wed, 27 Jun 2018 10:41:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fd85f2a4ebed0db48c36173f9b7bfbfc5851610e8baba30e07d2169c454e3`  
		Last Modified: Wed, 27 Jun 2018 10:41:03 GMT  
		Size: 2.4 MB (2394067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dab39061dc97d1165cc48c951afe540534e62a8d47691cd0ca4ec06e544e84`  
		Last Modified: Wed, 27 Jun 2018 10:41:18 GMT  
		Size: 70.8 MB (70786034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a29a08409ff3611f411fbc68cda0a6fd0e72b1c887d1773fe7abcef193a40d`  
		Last Modified: Wed, 27 Jun 2018 10:41:02 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:57599f96e3f93d1280db0afa2749135098a40d78d2af143335ef484b1b575e67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235612867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7110187f9e1dca935b761b92c1780d159e873b945fdd5edd8f03b0df2719529`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:50:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:50:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 12:11:18 GMT
ENV RUBY_MAJOR=2.3
# Wed, 27 Jun 2018 12:11:18 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 27 Jun 2018 12:11:18 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 27 Jun 2018 12:11:19 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 12:11:19 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 12:16:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 12:16:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 12:16:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 12:16:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:16:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 12:16:10 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 14:33:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 14:33:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:33:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:33:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 14:33:58 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 14:34:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 14:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:34:51 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 14:34:51 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 14:34:52 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 27 Jun 2018 14:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 27 Jun 2018 14:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 14:39:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 14:39:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 14:39:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 14:39:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:39:59 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 14:39:59 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f98906fae67dfd0e40891444119fee686218e619a229f63d78cd5dc796f5813`  
		Last Modified: Wed, 27 Jun 2018 12:21:16 GMT  
		Size: 9.1 MB (9134326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642f0a356d3beae53c7a5b2ae2e7208975a4058d565aa54b5b26f668755b0100`  
		Last Modified: Wed, 27 Jun 2018 12:21:13 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bab831301eac5d70a67be2c0e0049c52765c59d07f600e4ca6be57fd85ca0f`  
		Last Modified: Wed, 27 Jun 2018 12:23:34 GMT  
		Size: 32.8 MB (32753382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe10a7e6d193c272ab1ebfb446a8b865b6a57225a88bb608adcb99242fce043`  
		Last Modified: Wed, 27 Jun 2018 12:23:23 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca12a4a4068a98d9353cf10199ceaf19995558f35aa173db2c338317b3e29a3`  
		Last Modified: Wed, 27 Jun 2018 14:41:32 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8597469e3195bb3363349a828f658595320199426ee0eaa5733a4ef8126c27`  
		Last Modified: Wed, 27 Jun 2018 14:41:36 GMT  
		Size: 12.8 MB (12772565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:539d5c40fe4738f0af166ef5b9a4af56e3fa44ee8abde62eaefd5bc996478961`  
		Last Modified: Wed, 27 Jun 2018 14:41:33 GMT  
		Size: 491.1 KB (491122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a029873e1df3a142968f8522ff262b26fa1f03d285a3e0cb390367a5bfdc32`  
		Last Modified: Wed, 27 Jun 2018 14:41:31 GMT  
		Size: 7.8 KB (7845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b32825a6b885e65637ca07af0086ede73890cb3a292e8dfe545eeb55ba30cde`  
		Last Modified: Wed, 27 Jun 2018 14:41:48 GMT  
		Size: 55.4 MB (55401005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5bdbaf5a72fbc1548a6128f45118181197b145b17ea7b0e45cd4cc8bea74137`  
		Last Modified: Wed, 27 Jun 2018 14:41:31 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57fed90002050216af24805598e8d9ce16bb1a143aabde61c9cdd96c309ce14`  
		Last Modified: Wed, 27 Jun 2018 14:41:31 GMT  
		Size: 2.4 MB (2394455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a551dbaa5289003606c9a664b788574b4e8d337c4e113e089cb1f14d259c381a`  
		Last Modified: Wed, 27 Jun 2018 14:41:47 GMT  
		Size: 70.2 MB (70205324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752d9d2db358a76e8ab4abb2f536d49f76b4f7adf8bfa401a51e9f7597f7579a`  
		Last Modified: Wed, 27 Jun 2018 14:41:30 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm variant v7

```console
$ docker pull redmine@sha256:0fc15bf64eac635c89adadd3806ff5afe8bc04610823ca1d50fe6ba086a7537e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 MB (231578856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b991834c05d7380cb1d103a1b162a258700c1d7c6a10b67c2997ff15714b8c`
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
# Thu, 21 Jun 2018 12:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 12:13:24 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 12:13:24 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 12:13:25 GMT
ENV REDMINE_VERSION=3.3.8
# Thu, 21 Jun 2018 12:13:25 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Thu, 21 Jun 2018 12:13:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 12:18:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 12:18:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 12:18:08 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 12:18:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 12:18:09 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 12:18:09 GMT
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
	-	`sha256:36e4ee90ace2e64cbcc2a2d3e280ad8d331131458bb72bd020c2fa5ecfb82d40`  
		Last Modified: Thu, 21 Jun 2018 12:19:37 GMT  
		Size: 54.7 MB (54698433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b85c9b67cd8f1ce20a9c1d3923ed89433a632918570e1d48bbcee0ddfd0aae1`  
		Last Modified: Thu, 21 Jun 2018 12:19:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d037d38862bafc6fd4f24ca7dfe5d9ca8faf2aeb76bfd10979335acf56806c`  
		Last Modified: Thu, 21 Jun 2018 12:19:22 GMT  
		Size: 2.4 MB (2394445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430bc271235e2ac890d803fb99d2fbcf46c6c451e1c64e8d7b496c43f2b3c5d4`  
		Last Modified: Thu, 21 Jun 2018 12:19:36 GMT  
		Size: 69.9 MB (69853959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b845da62bdc2c86bf4bcd0ffe10678696982dfa0fbbfc2a8211b67fe46a4d3`  
		Last Modified: Thu, 21 Jun 2018 12:19:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:1f509a8d15a70a347b6a315b32a672a35f031d10a3f3269882be031ae423b951
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237077303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79089a322c6f8fe1d38c00e7c0875658f5e1e0f112487af5e3394e40d9a15da`
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
# Thu, 21 Jun 2018 17:15:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 17:15:35 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 17:15:35 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 17:15:36 GMT
ENV REDMINE_VERSION=3.3.8
# Thu, 21 Jun 2018 17:15:37 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Thu, 21 Jun 2018 17:15:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 17:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 17:26:44 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 17:26:45 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 17:26:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 17:26:47 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 17:26:47 GMT
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
	-	`sha256:398742b41291631bc6f968c8cae2468ddd14b9b852af94083d96869eff6854f4`  
		Last Modified: Thu, 21 Jun 2018 17:28:41 GMT  
		Size: 56.2 MB (56167018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9c2b611faef911068e185b9abd88ef0c5b6bdfecb029be9fe7ad4392ab6d45`  
		Last Modified: Thu, 21 Jun 2018 17:28:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9acd59689fde9ce96612b78c07d99cdd4eb733d59dd9f750b2524453a81ce`  
		Last Modified: Thu, 21 Jun 2018 17:28:20 GMT  
		Size: 2.4 MB (2394066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd8816d2648d1b0ddd291371cbd9a4c8907dcf114e58191a995f158ff215658`  
		Last Modified: Thu, 21 Jun 2018 17:28:39 GMT  
		Size: 70.3 MB (70280940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5617e5c727381aa5b1aa4acd6061c0b23e79d70c5cea5169d6949554524713`  
		Last Modified: Thu, 21 Jun 2018 17:28:19 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; 386

```console
$ docker pull redmine@sha256:5ce7cb2d9fd7edd96f1b44d63502d01ca88ba1f1e08cd2c0db2c0da8d23eea5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (247027540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b022a1e4e32c7eb479bf6553e707e7fcaf60ec92e49a579cb9e5b558ca135b09`
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
# Thu, 21 Jun 2018 11:09:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 11:09:16 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 11:09:16 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 11:09:16 GMT
ENV REDMINE_VERSION=3.3.8
# Thu, 21 Jun 2018 11:09:17 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Thu, 21 Jun 2018 11:09:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 11:14:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 11:14:21 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 11:14:21 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 11:14:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 11:14:21 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 11:14:21 GMT
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
	-	`sha256:8c2654f85f5b7f668e683128adac1f725054af819ea55c6f7bde0e9cbf4f3a9c`  
		Last Modified: Thu, 21 Jun 2018 11:16:33 GMT  
		Size: 60.6 MB (60580201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c5d16d908b5bbb9dc42ac5c42fbcb38e0339a5e8cccdc517d407fc2d9299c3`  
		Last Modified: Thu, 21 Jun 2018 11:16:04 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f02cd2bfa1aa35131d3ec3b391ed666e1c005709b4efde7af0c199606201ca`  
		Last Modified: Thu, 21 Jun 2018 11:16:06 GMT  
		Size: 2.4 MB (2394062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de0d5a78758a9d99af5f32a815f02e58d8960b1360797b02b0ccc7d614b1383`  
		Last Modified: Thu, 21 Jun 2018 11:16:27 GMT  
		Size: 69.9 MB (69868276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cce7d0a9ac71218e5f6253327d12ad23d12b93d2f5ad9aa9cbe763647a28798`  
		Last Modified: Thu, 21 Jun 2018 11:16:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; ppc64le

```console
$ docker pull redmine@sha256:7b3d314b8d89c31112ed2f34d9253010dbae03fb53229956cabd127be0615bde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244005336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ab9e257d92288192fa7cc584c2c2f9a8641dc51f48b6c033165025237cf80e`
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
# Thu, 21 Jun 2018 10:13:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 10:13:02 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 10:13:02 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 10:13:03 GMT
ENV REDMINE_VERSION=3.3.8
# Thu, 21 Jun 2018 10:13:04 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Thu, 21 Jun 2018 10:13:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 10:23:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 10:23:39 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 10:23:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 10:23:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 10:23:48 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 10:23:52 GMT
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
	-	`sha256:42c79d69aae34e53499a21afea2693b4bc013077028d74b0b5e30d95c4105f34`  
		Last Modified: Thu, 21 Jun 2018 10:25:20 GMT  
		Size: 58.6 MB (58566683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb1e9e94ddcd0a664c099e296f3fb45d031da33a37bd806e710b1816d91e0c9`  
		Last Modified: Thu, 21 Jun 2018 10:25:04 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40aeae3af6a508ff0f1e24b567dc752b887f1b87d9a60edb589858ec5222f10`  
		Last Modified: Thu, 21 Jun 2018 10:25:05 GMT  
		Size: 2.4 MB (2394466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164e6a8521582589d2cbc4a3909a075fafa9145a5628e972124540e0781d4ab4`  
		Last Modified: Thu, 21 Jun 2018 10:25:18 GMT  
		Size: 70.9 MB (70926240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518b0c78f3135cc2397f5518e13c56787bf4a42976bbfd520ec9ef66009e4149`  
		Last Modified: Thu, 21 Jun 2018 10:25:04 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; s390x

```console
$ docker pull redmine@sha256:028d5b0ca4cf97269aee1871190b401d8228a1927768549ad602c3bf1151b37d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251229131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac71d9197cf213eea8005de46c01f8589f639a2eb5a1b2c73aaefef5ef483ab`
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
# Thu, 21 Jun 2018 13:44:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 13:44:34 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 13:44:34 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 13:44:34 GMT
ENV REDMINE_VERSION=3.3.8
# Thu, 21 Jun 2018 13:44:35 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Thu, 21 Jun 2018 13:44:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 13:47:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 13:47:12 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 13:47:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 13:47:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 13:47:14 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 13:47:14 GMT
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
	-	`sha256:eadd5af9bd5bd5e656cec7e9a9b27e84d8b168bbad3e06d90f5e18b1b7f71aff`  
		Last Modified: Thu, 21 Jun 2018 13:48:18 GMT  
		Size: 59.5 MB (59533442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e764ca1a11cc27db3156d1dff72273d8e154ac5e070d472388d461ae4f0a93`  
		Last Modified: Thu, 21 Jun 2018 13:48:01 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd7e5240971a254b02cde3d738278621464164066f0f44fc13df12d4753d41e`  
		Last Modified: Thu, 21 Jun 2018 13:48:02 GMT  
		Size: 2.4 MB (2394068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8c82c24194cfc982368473f00ebb8ab401c4ac53c7d36d9cf339250812dd45`  
		Last Modified: Thu, 21 Jun 2018 13:48:18 GMT  
		Size: 73.4 MB (73408413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ba76ad79cc8fb20b6bb09792cfb6e98126a9e63f108db51c97d67bcf079c24`  
		Last Modified: Thu, 21 Jun 2018 13:48:01 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.8-passenger`

```console
$ docker pull redmine@sha256:dfb8bd71dec6a6a4dfd792f9426e6dea6ddaf39152214eb3c7e53db9cf768a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:10c42ebf3a93280669dcb80235c891ce6ba843c5d979b69e0ffa012111cdfc6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266281166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6bf12f6aaa0088b2f08ba81794467706b615735587dae6d3d93d6f834035b50`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_MAJOR=2.3
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 03:04:00 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 03:08:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 03:08:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 03:08:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 03:08:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 03:08:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 03:08:16 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:29:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:30:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:30:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:30:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:30:14 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:30:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:31:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:31:25 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:31:25 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:31:25 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 27 Jun 2018 10:31:26 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 27 Jun 2018 10:31:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:36:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:36:44 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:36:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:36:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:36:45 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:36:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 27 Jun 2018 10:37:14 GMT
ENV PASSENGER_VERSION=5.3.2
# Wed, 27 Jun 2018 10:38:02 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:38:04 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 27 Jun 2018 10:38:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2321a2b502d518e32c5b0354d0ccb872059126e20902f8961218b6ef9cae8b50`  
		Last Modified: Wed, 27 Jun 2018 03:17:18 GMT  
		Size: 33.9 MB (33927093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7d3c81da28b00e5503276ec9cafcae8cc703bae82e2f3f8690a9d7bd000441`  
		Last Modified: Wed, 27 Jun 2018 03:17:05 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9261d20bf71a0a44adf529dd1f6b078bd96368d09277a2db0b70bf65c58aadbb`  
		Last Modified: Wed, 27 Jun 2018 10:41:06 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b915054b97509d91b9e2f00642eafcfdca4cd92b659b585b7e8ffafff0f6e7b3`  
		Last Modified: Wed, 27 Jun 2018 10:41:10 GMT  
		Size: 13.0 MB (12967815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314d9ff7c344d950b95e6eee885f162a4b1e7c2b29a7cdad7fc87cb8d849ff12`  
		Last Modified: Wed, 27 Jun 2018 10:41:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8828ff90009a7332057f54b3d584ee091ce0f977ed7af97f1050bccf871f07`  
		Last Modified: Wed, 27 Jun 2018 10:41:04 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b298dee095f5639d37369dfafe8b1347a349881134adbbc0298752b65c35d0`  
		Last Modified: Wed, 27 Jun 2018 10:41:22 GMT  
		Size: 58.0 MB (58002742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6853239500b0c1a4eff75c441486f7e1ed3e961c26d695c120a457599e52c7`  
		Last Modified: Wed, 27 Jun 2018 10:41:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fd85f2a4ebed0db48c36173f9b7bfbfc5851610e8baba30e07d2169c454e3`  
		Last Modified: Wed, 27 Jun 2018 10:41:03 GMT  
		Size: 2.4 MB (2394067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dab39061dc97d1165cc48c951afe540534e62a8d47691cd0ca4ec06e544e84`  
		Last Modified: Wed, 27 Jun 2018 10:41:18 GMT  
		Size: 70.8 MB (70786034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a29a08409ff3611f411fbc68cda0a6fd0e72b1c887d1773fe7abcef193a40d`  
		Last Modified: Wed, 27 Jun 2018 10:41:02 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331dcb4cd14f22b287c60f4187d55cf63664901176148b1fcf51a469eeb31625`  
		Last Modified: Wed, 27 Jun 2018 10:41:58 GMT  
		Size: 18.8 MB (18770496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a47216f9b25975c9275a100b3626bd1064084b6aa07bfe44d31e0e1b9d94e2`  
		Last Modified: Wed, 27 Jun 2018 10:41:54 GMT  
		Size: 4.5 MB (4484755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:dfb8bd71dec6a6a4dfd792f9426e6dea6ddaf39152214eb3c7e53db9cf768a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:10c42ebf3a93280669dcb80235c891ce6ba843c5d979b69e0ffa012111cdfc6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266281166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6bf12f6aaa0088b2f08ba81794467706b615735587dae6d3d93d6f834035b50`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_MAJOR=2.3
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 27 Jun 2018 03:04:00 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 03:04:00 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 03:08:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 03:08:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 03:08:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 03:08:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 03:08:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 03:08:16 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:29:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:30:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:30:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:30:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:30:14 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:30:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:31:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:31:25 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:31:25 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:31:25 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 27 Jun 2018 10:31:26 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 27 Jun 2018 10:31:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:36:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:36:44 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:36:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:36:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:36:45 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:36:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 27 Jun 2018 10:37:14 GMT
ENV PASSENGER_VERSION=5.3.2
# Wed, 27 Jun 2018 10:38:02 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:38:04 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 27 Jun 2018 10:38:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2321a2b502d518e32c5b0354d0ccb872059126e20902f8961218b6ef9cae8b50`  
		Last Modified: Wed, 27 Jun 2018 03:17:18 GMT  
		Size: 33.9 MB (33927093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7d3c81da28b00e5503276ec9cafcae8cc703bae82e2f3f8690a9d7bd000441`  
		Last Modified: Wed, 27 Jun 2018 03:17:05 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9261d20bf71a0a44adf529dd1f6b078bd96368d09277a2db0b70bf65c58aadbb`  
		Last Modified: Wed, 27 Jun 2018 10:41:06 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b915054b97509d91b9e2f00642eafcfdca4cd92b659b585b7e8ffafff0f6e7b3`  
		Last Modified: Wed, 27 Jun 2018 10:41:10 GMT  
		Size: 13.0 MB (12967815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314d9ff7c344d950b95e6eee885f162a4b1e7c2b29a7cdad7fc87cb8d849ff12`  
		Last Modified: Wed, 27 Jun 2018 10:41:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8828ff90009a7332057f54b3d584ee091ce0f977ed7af97f1050bccf871f07`  
		Last Modified: Wed, 27 Jun 2018 10:41:04 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b298dee095f5639d37369dfafe8b1347a349881134adbbc0298752b65c35d0`  
		Last Modified: Wed, 27 Jun 2018 10:41:22 GMT  
		Size: 58.0 MB (58002742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6853239500b0c1a4eff75c441486f7e1ed3e961c26d695c120a457599e52c7`  
		Last Modified: Wed, 27 Jun 2018 10:41:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1fd85f2a4ebed0db48c36173f9b7bfbfc5851610e8baba30e07d2169c454e3`  
		Last Modified: Wed, 27 Jun 2018 10:41:03 GMT  
		Size: 2.4 MB (2394067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dab39061dc97d1165cc48c951afe540534e62a8d47691cd0ca4ec06e544e84`  
		Last Modified: Wed, 27 Jun 2018 10:41:18 GMT  
		Size: 70.8 MB (70786034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a29a08409ff3611f411fbc68cda0a6fd0e72b1c887d1773fe7abcef193a40d`  
		Last Modified: Wed, 27 Jun 2018 10:41:02 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331dcb4cd14f22b287c60f4187d55cf63664901176148b1fcf51a469eeb31625`  
		Last Modified: Wed, 27 Jun 2018 10:41:58 GMT  
		Size: 18.8 MB (18770496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a47216f9b25975c9275a100b3626bd1064084b6aa07bfe44d31e0e1b9d94e2`  
		Last Modified: Wed, 27 Jun 2018 10:41:54 GMT  
		Size: 4.5 MB (4484755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:a47418eb7e05137b545590ed42d20c75cb4cccf963edeb6a763d724f180c27e0
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
$ docker pull redmine@sha256:21a6f39f8d4a54c391b49f2e8035d670a314909d0810f8f5d6482b6884443b7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249052523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36305366e7ed479b5eb1bd68f0b8c93eb4e1119b1a31ef76da2b5754ea5a0720`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 02:43:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 02:50:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 02:50:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:50:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 02:50:05 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:18:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:19:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:19:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:19:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:20:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:56 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:20:56 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 10:21:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:27:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:27:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:27:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:27:53 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:27:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5b7570c14686a3dfb8d138a3c87f61935b8dcab5ebad8fab6c7d3fc5adc13`  
		Last Modified: Wed, 27 Jun 2018 03:14:38 GMT  
		Size: 21.3 MB (21306627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc66d7f32eb09a662bd20852b06e8794dab71ef36126f366bd6d9a7201c113d`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273f202161a785c9a5698c3a3a45f57238fd3b2a44c140f6fb515960a857844a`  
		Last Modified: Wed, 27 Jun 2018 10:38:39 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c015acbbce3628986ded3d25eebe294f39636c6c0f027549787d5e29a84ca`  
		Last Modified: Wed, 27 Jun 2018 10:38:41 GMT  
		Size: 13.0 MB (12967892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc0e847209a792f5dacba66df94724d617de6734d16e1fb4434f28cbb96947`  
		Last Modified: Wed, 27 Jun 2018 10:38:36 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68107099fb8b472e5c4a7a767e28ef4727589b146581d6071190093d739288`  
		Last Modified: Wed, 27 Jun 2018 10:38:34 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2cb8e499b79664f1b19a375272bd7adedc0a3734b4206c1d519e09cbe3fa80`  
		Last Modified: Wed, 27 Jun 2018 10:38:55 GMT  
		Size: 58.0 MB (58002590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27242abea96f6f3ac858acffd7ed3b88dd0faa974974b3472d8bab3fccf4f089`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278d9efc1670a760b13c2fd7bfb6895a2960bcfe8a316ff4cc9deac5cbf3a73`  
		Last Modified: Wed, 27 Jun 2018 10:38:33 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c70b5650565c4c63e36f7a6e9bd9da9dcf6abff70e3950ceaa1bebe06670`  
		Last Modified: Wed, 27 Jun 2018 10:38:58 GMT  
		Size: 89.4 MB (89370329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39803a1108a119f8f3e3fdb99c680727029b18731c106107a9acaafd68d21a1b`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e4fb19272e14f98cef9f9ddcd5785ed87fe90ffe1cf09ce03c4c86932b6fa071
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242620163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f0c867a40cd2d82495155338e34db502cc3257ba0d40acfa71a018586d6f5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:50:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:50:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 11:50:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 11:50:28 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 11:56:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 11:56:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 11:56:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 11:56:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:56:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 11:56:29 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 14:24:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 14:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:25:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 14:25:03 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 14:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:26:10 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 14:26:10 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 14:26:10 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 14:26:10 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 14:26:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 14:33:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 14:33:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 14:33:16 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 14:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:33:17 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 14:33:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f98906fae67dfd0e40891444119fee686218e619a229f63d78cd5dc796f5813`  
		Last Modified: Wed, 27 Jun 2018 12:21:16 GMT  
		Size: 9.1 MB (9134326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642f0a356d3beae53c7a5b2ae2e7208975a4058d565aa54b5b26f668755b0100`  
		Last Modified: Wed, 27 Jun 2018 12:21:13 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23acf77ea1fa346796eb2fd343a4d7843f03d32c75044b641746b0eb391faa22`  
		Last Modified: Wed, 27 Jun 2018 12:21:21 GMT  
		Size: 21.1 MB (21075011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd5d6f694a7b53e7ea556a913f30d7f486381f10e16440b089b66f874cc5e65`  
		Last Modified: Wed, 27 Jun 2018 12:21:13 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c80cc98f90fa70ca12419ea0f834e782660bded9ea2a36d3aaabe4d1ea2913`  
		Last Modified: Wed, 27 Jun 2018 14:40:29 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d71f6fed31923994d84664349e79622adb7254a59552da18f1ef287ae88fc23`  
		Last Modified: Wed, 27 Jun 2018 14:40:32 GMT  
		Size: 12.8 MB (12772560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61073d761d31d5adbe7e0db434f8549e19d69e8fe04bf291f769555a1cb9411`  
		Last Modified: Wed, 27 Jun 2018 14:40:28 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a2a8fad387861a974f8d71a2c4db15db82655f8f9d83c739b602efe923eef6`  
		Last Modified: Wed, 27 Jun 2018 14:40:26 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961cd33098a1f29e0cb59a11d0a9359c8e041656ed17d81ad23d70493dbba6e1`  
		Last Modified: Wed, 27 Jun 2018 14:40:52 GMT  
		Size: 55.4 MB (55400544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed6fe830585ff5bf3d3d7ff3a5f2acba733f03f41bc439d538e213d1fd5ebce`  
		Last Modified: Wed, 27 Jun 2018 14:40:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250fbcf2b8c74eeb0b794778caa0f41bcffebae1d5ef5795ba8e0da82de7f3f8`  
		Last Modified: Wed, 27 Jun 2018 14:40:27 GMT  
		Size: 2.5 MB (2457564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b4d47d74f749950c75a914b70959fb9826e8cb6265d87e784f8ed00f14cb81`  
		Last Modified: Wed, 27 Jun 2018 14:41:02 GMT  
		Size: 88.8 MB (88828349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f98bedb0a50102fc0cbb3fbc65264f6d4cbd71f1e0990358e04f31afdc9230`  
		Last Modified: Wed, 27 Jun 2018 14:40:25 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:df7144a1137742adc5e4e11125da5e4d18e517fe491950489f2f97452b2522bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238431615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f661101282a8e3e492241307b1e3a098dbc6f66588f65c554e6267e3fa781492`
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
# Thu, 21 Jun 2018 12:06:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 12:06:34 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 12:06:34 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 12:06:35 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 12:06:35 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 12:06:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 12:12:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 12:12:25 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 12:12:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 12:12:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 12:12:26 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 12:12:26 GMT
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
	-	`sha256:1374393c860f34b65841b3158be787bc2df985c718b0bd332c8d8c7428a83e52`  
		Last Modified: Thu, 21 Jun 2018 12:18:49 GMT  
		Size: 54.7 MB (54698588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db57f6861effae6af53fac1d6db5790da8afb4d14f64a0f0f22aba5649080e`  
		Last Modified: Thu, 21 Jun 2018 12:18:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590497ab77d278095f81c2e419971e26ef0d6483e14a0b97ed13f8ec94a76f83`  
		Last Modified: Thu, 21 Jun 2018 12:18:34 GMT  
		Size: 2.5 MB (2457572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3918493345313d19d0cbd4c26bd6142b71be53be71d3976bbd956e00a1c7da8`  
		Last Modified: Thu, 21 Jun 2018 12:18:57 GMT  
		Size: 88.2 MB (88245671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e118f56902617fa8db9f49493a8d0039c3a90976f6506cf6df565557e09560af`  
		Last Modified: Thu, 21 Jun 2018 12:18:32 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:988df7496fea7b7cc53d5210dd1bd832b8d22cbf82fb0b9f6a7d61c366de95c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243226684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795f00ab797d1fb1e0e03e8ea4d2c01f3f953b9df56a7da35adfd390546f65a6`
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
# Thu, 21 Jun 2018 16:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 16:59:12 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 16:59:13 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 16:59:13 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 16:59:14 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 16:59:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 17:12:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 17:12:14 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 17:12:14 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 17:12:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 17:12:16 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 17:12:17 GMT
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
	-	`sha256:33f179dd0cce7b503211ff6d22a331d47169a234442ac5b0f6d11519eb3ead53`  
		Last Modified: Thu, 21 Jun 2018 17:27:27 GMT  
		Size: 56.2 MB (56166767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00c8c2de88468ac5d8b2af1848ffa502eded4adfd3a7e8e3859a57018eaace6`  
		Last Modified: Thu, 21 Jun 2018 17:27:04 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95eb29922954e0efbb03fb3ca6512c8ce0d257303fc9a551e8d52455bef6d5b1`  
		Last Modified: Thu, 21 Jun 2018 17:27:07 GMT  
		Size: 2.5 MB (2456916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bfa5dcbc83e5d3cd044dfbc3d81faa5b22a07684e60e5ca7cc0c8f4c76a57f`  
		Last Modified: Thu, 21 Jun 2018 17:27:35 GMT  
		Size: 89.1 MB (89125967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f3ad7cc3086c71f467f0eee89ca821bc6f3aae7bd05ce85b8eb78d72e15a94`  
		Last Modified: Thu, 21 Jun 2018 17:27:04 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:3e0378142a38be556e5b326797b2b40d6df2166040fef3a3556e8d095c147a4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251905216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8a85e0ccb47343b6f39f393063672f59feac95b8d8ec473a791ae40243f2a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:47:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:47:23 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 14:47:24 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 14:53:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 14:53:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 14:53:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 14:53:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:53:44 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 14:53:44 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 16:42:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 16:43:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:43:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 16:43:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 16:43:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 16:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 16:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:45:04 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 16:45:04 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 16:45:05 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 16:45:05 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 16:45:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 16:52:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 16:52:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 16:52:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 16:52:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 16:52:56 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 16:52:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b289a13ed74ce3f9f091ea432c69aa4570f8ff74b86d057cc234f5ddb7b72453`  
		Last Modified: Wed, 27 Jun 2018 15:05:51 GMT  
		Size: 14.6 MB (14649674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1350c4cb0128495d6c832cd343c879c72641a66361eb59a4a2d268e66fe5260a`  
		Last Modified: Wed, 27 Jun 2018 15:05:43 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3df271f17f5aa9ebe7f9aff1ad11d62f3365c8308539af1f64417109324157`  
		Last Modified: Wed, 27 Jun 2018 15:05:53 GMT  
		Size: 20.3 MB (20303492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4896aa3439f3b59320045be1d21d81cb62f3013f85438aff5f605fa5f03e44`  
		Last Modified: Wed, 27 Jun 2018 15:05:43 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8e2da882fa96e0160363ea1addb474c78ba396339ce62a0eddb95bef6aac0c`  
		Last Modified: Wed, 27 Jun 2018 17:02:56 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556109851b46a9d55a936427cf1aba43b7b02767a76970b5a7dfd2bafad3a990`  
		Last Modified: Wed, 27 Jun 2018 17:03:00 GMT  
		Size: 13.1 MB (13102802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7603aff6ebae3d567efd7913993bb6e98e967c53595173a643d94a6f4094f`  
		Last Modified: Wed, 27 Jun 2018 17:02:54 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f58dceb318f4ca0fa42e7a92340b1180679094e00d645abbde7df146c4557c3`  
		Last Modified: Wed, 27 Jun 2018 17:02:54 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45aebb14e4c4d63df5cdf67ee860f4fffd8ecc419d33ec84c513c5f237135106`  
		Last Modified: Wed, 27 Jun 2018 17:03:17 GMT  
		Size: 58.8 MB (58828813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f0052ff19733420ecf1effca07e7c76705db1c62bae928c0ec3f8301543c12`  
		Last Modified: Wed, 27 Jun 2018 17:02:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ef258e9bb99f4cc235d82b37e1472ce507197c2056fb0cd09437b7fd17829`  
		Last Modified: Wed, 27 Jun 2018 17:02:53 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9609b2462619a0661cc96ed7bffd396573e9f81ff0dace171a7833cabb13e86`  
		Last Modified: Wed, 27 Jun 2018 17:03:21 GMT  
		Size: 87.6 MB (87586161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2785ce363a4489468ae0bded19f1d20a6da7d04471224bf069c1cda38f8b7ba0`  
		Last Modified: Wed, 27 Jun 2018 17:02:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:907c86f110cb9245f282d9daeb30d2fef6fe5073bc1c78cea57bc0f4c745dc1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249907098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0de66b8b9f108221b0d577f34253c4482d759cf811a688bfc94660b4c03cb28`
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
# Thu, 21 Jun 2018 09:57:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 09:57:57 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 09:57:58 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 09:57:58 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 09:57:59 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 09:58:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 10:09:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 10:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 10:09:12 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 10:09:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 10:09:15 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 10:09:19 GMT
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
	-	`sha256:bbb5e064795a21c6fe2b678532828599dfeca38475f384ae401a3452917112a2`  
		Last Modified: Thu, 21 Jun 2018 10:24:26 GMT  
		Size: 58.6 MB (58565791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a889f049e1545e24c2d4646d29bf7b0a3e0f72f2d286d8c219dbe346c08efb9`  
		Last Modified: Thu, 21 Jun 2018 10:24:09 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da14007fe0da424adf4a75292ded9fae229448fbca2f31fd9be25d875290f85`  
		Last Modified: Thu, 21 Jun 2018 10:24:10 GMT  
		Size: 2.5 MB (2457580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc76284d5a2c5b70dc71348dd65954b145b82b10252ae4c34b4960f37e90b86`  
		Last Modified: Thu, 21 Jun 2018 10:24:30 GMT  
		Size: 90.0 MB (89999138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f957288162825d819debf1f6f7c10ee1f44c5bd0d99f411380a51626910bda76`  
		Last Modified: Thu, 21 Jun 2018 10:24:10 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:30b50ca230b2b96668f067c3aa64f4ab650c5d0f58b705b9475e8eb036d65f63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254937140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924bf921e4b13986dd1234309bc076c1a40bf4134fc02b23ec26aac9448fc0e1`
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
# Thu, 21 Jun 2018 13:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 13:40:20 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 13:40:20 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 13:40:20 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 13:40:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 13:40:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 13:43:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 13:43:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 13:43:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 13:43:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 13:43:57 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 13:43:57 GMT
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
	-	`sha256:147ee1fc1b1a421958c0c5f1e52aa1fcd3bb3db7c6b68f6c4c69b8daa4356bdd`  
		Last Modified: Thu, 21 Jun 2018 13:47:39 GMT  
		Size: 59.5 MB (59533196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fc24964afaca53a8f69b089f296f90016a97249c28644192e99669d94ca950`  
		Last Modified: Thu, 21 Jun 2018 13:47:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95937785bb16f99b2d94476fe49fab2418fd81f458a9214d61406057d60561f7`  
		Last Modified: Thu, 21 Jun 2018 13:47:27 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5621a26308c9d8073f8ef0d18bc14689e45b96da0d71fe09658c0311b4578690`  
		Last Modified: Thu, 21 Jun 2018 13:47:43 GMT  
		Size: 93.2 MB (93179163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff10f665c615aa7ed26b1dd97eec9db4674eb2affa120fb7b23dc95d1b52b7c`  
		Last Modified: Thu, 21 Jun 2018 13:47:26 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.6`

```console
$ docker pull redmine@sha256:a47418eb7e05137b545590ed42d20c75cb4cccf963edeb6a763d724f180c27e0
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
$ docker pull redmine@sha256:21a6f39f8d4a54c391b49f2e8035d670a314909d0810f8f5d6482b6884443b7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249052523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36305366e7ed479b5eb1bd68f0b8c93eb4e1119b1a31ef76da2b5754ea5a0720`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 02:43:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 02:50:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 02:50:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:50:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 02:50:05 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:18:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:19:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:19:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:19:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:20:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:56 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:20:56 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 10:21:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:27:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:27:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:27:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:27:53 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:27:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5b7570c14686a3dfb8d138a3c87f61935b8dcab5ebad8fab6c7d3fc5adc13`  
		Last Modified: Wed, 27 Jun 2018 03:14:38 GMT  
		Size: 21.3 MB (21306627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc66d7f32eb09a662bd20852b06e8794dab71ef36126f366bd6d9a7201c113d`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273f202161a785c9a5698c3a3a45f57238fd3b2a44c140f6fb515960a857844a`  
		Last Modified: Wed, 27 Jun 2018 10:38:39 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c015acbbce3628986ded3d25eebe294f39636c6c0f027549787d5e29a84ca`  
		Last Modified: Wed, 27 Jun 2018 10:38:41 GMT  
		Size: 13.0 MB (12967892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc0e847209a792f5dacba66df94724d617de6734d16e1fb4434f28cbb96947`  
		Last Modified: Wed, 27 Jun 2018 10:38:36 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68107099fb8b472e5c4a7a767e28ef4727589b146581d6071190093d739288`  
		Last Modified: Wed, 27 Jun 2018 10:38:34 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2cb8e499b79664f1b19a375272bd7adedc0a3734b4206c1d519e09cbe3fa80`  
		Last Modified: Wed, 27 Jun 2018 10:38:55 GMT  
		Size: 58.0 MB (58002590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27242abea96f6f3ac858acffd7ed3b88dd0faa974974b3472d8bab3fccf4f089`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278d9efc1670a760b13c2fd7bfb6895a2960bcfe8a316ff4cc9deac5cbf3a73`  
		Last Modified: Wed, 27 Jun 2018 10:38:33 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c70b5650565c4c63e36f7a6e9bd9da9dcf6abff70e3950ceaa1bebe06670`  
		Last Modified: Wed, 27 Jun 2018 10:38:58 GMT  
		Size: 89.4 MB (89370329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39803a1108a119f8f3e3fdb99c680727029b18731c106107a9acaafd68d21a1b`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e4fb19272e14f98cef9f9ddcd5785ed87fe90ffe1cf09ce03c4c86932b6fa071
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242620163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f0c867a40cd2d82495155338e34db502cc3257ba0d40acfa71a018586d6f5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:50:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:50:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 11:50:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 11:50:28 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 11:56:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 11:56:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 11:56:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 11:56:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:56:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 11:56:29 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 14:24:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 14:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:25:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 14:25:03 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 14:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:26:10 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 14:26:10 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 14:26:10 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 14:26:10 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 14:26:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 14:33:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 14:33:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 14:33:16 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 14:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:33:17 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 14:33:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f98906fae67dfd0e40891444119fee686218e619a229f63d78cd5dc796f5813`  
		Last Modified: Wed, 27 Jun 2018 12:21:16 GMT  
		Size: 9.1 MB (9134326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642f0a356d3beae53c7a5b2ae2e7208975a4058d565aa54b5b26f668755b0100`  
		Last Modified: Wed, 27 Jun 2018 12:21:13 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23acf77ea1fa346796eb2fd343a4d7843f03d32c75044b641746b0eb391faa22`  
		Last Modified: Wed, 27 Jun 2018 12:21:21 GMT  
		Size: 21.1 MB (21075011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd5d6f694a7b53e7ea556a913f30d7f486381f10e16440b089b66f874cc5e65`  
		Last Modified: Wed, 27 Jun 2018 12:21:13 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c80cc98f90fa70ca12419ea0f834e782660bded9ea2a36d3aaabe4d1ea2913`  
		Last Modified: Wed, 27 Jun 2018 14:40:29 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d71f6fed31923994d84664349e79622adb7254a59552da18f1ef287ae88fc23`  
		Last Modified: Wed, 27 Jun 2018 14:40:32 GMT  
		Size: 12.8 MB (12772560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61073d761d31d5adbe7e0db434f8549e19d69e8fe04bf291f769555a1cb9411`  
		Last Modified: Wed, 27 Jun 2018 14:40:28 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a2a8fad387861a974f8d71a2c4db15db82655f8f9d83c739b602efe923eef6`  
		Last Modified: Wed, 27 Jun 2018 14:40:26 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961cd33098a1f29e0cb59a11d0a9359c8e041656ed17d81ad23d70493dbba6e1`  
		Last Modified: Wed, 27 Jun 2018 14:40:52 GMT  
		Size: 55.4 MB (55400544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed6fe830585ff5bf3d3d7ff3a5f2acba733f03f41bc439d538e213d1fd5ebce`  
		Last Modified: Wed, 27 Jun 2018 14:40:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250fbcf2b8c74eeb0b794778caa0f41bcffebae1d5ef5795ba8e0da82de7f3f8`  
		Last Modified: Wed, 27 Jun 2018 14:40:27 GMT  
		Size: 2.5 MB (2457564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b4d47d74f749950c75a914b70959fb9826e8cb6265d87e784f8ed00f14cb81`  
		Last Modified: Wed, 27 Jun 2018 14:41:02 GMT  
		Size: 88.8 MB (88828349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f98bedb0a50102fc0cbb3fbc65264f6d4cbd71f1e0990358e04f31afdc9230`  
		Last Modified: Wed, 27 Jun 2018 14:40:25 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm variant v7

```console
$ docker pull redmine@sha256:df7144a1137742adc5e4e11125da5e4d18e517fe491950489f2f97452b2522bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238431615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f661101282a8e3e492241307b1e3a098dbc6f66588f65c554e6267e3fa781492`
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
# Thu, 21 Jun 2018 12:06:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 12:06:34 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 12:06:34 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 12:06:35 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 12:06:35 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 12:06:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 12:12:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 12:12:25 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 12:12:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 12:12:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 12:12:26 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 12:12:26 GMT
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
	-	`sha256:1374393c860f34b65841b3158be787bc2df985c718b0bd332c8d8c7428a83e52`  
		Last Modified: Thu, 21 Jun 2018 12:18:49 GMT  
		Size: 54.7 MB (54698588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db57f6861effae6af53fac1d6db5790da8afb4d14f64a0f0f22aba5649080e`  
		Last Modified: Thu, 21 Jun 2018 12:18:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590497ab77d278095f81c2e419971e26ef0d6483e14a0b97ed13f8ec94a76f83`  
		Last Modified: Thu, 21 Jun 2018 12:18:34 GMT  
		Size: 2.5 MB (2457572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3918493345313d19d0cbd4c26bd6142b71be53be71d3976bbd956e00a1c7da8`  
		Last Modified: Thu, 21 Jun 2018 12:18:57 GMT  
		Size: 88.2 MB (88245671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e118f56902617fa8db9f49493a8d0039c3a90976f6506cf6df565557e09560af`  
		Last Modified: Thu, 21 Jun 2018 12:18:32 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:988df7496fea7b7cc53d5210dd1bd832b8d22cbf82fb0b9f6a7d61c366de95c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243226684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795f00ab797d1fb1e0e03e8ea4d2c01f3f953b9df56a7da35adfd390546f65a6`
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
# Thu, 21 Jun 2018 16:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 16:59:12 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 16:59:13 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 16:59:13 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 16:59:14 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 16:59:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 17:12:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 17:12:14 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 17:12:14 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 17:12:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 17:12:16 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 17:12:17 GMT
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
	-	`sha256:33f179dd0cce7b503211ff6d22a331d47169a234442ac5b0f6d11519eb3ead53`  
		Last Modified: Thu, 21 Jun 2018 17:27:27 GMT  
		Size: 56.2 MB (56166767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00c8c2de88468ac5d8b2af1848ffa502eded4adfd3a7e8e3859a57018eaace6`  
		Last Modified: Thu, 21 Jun 2018 17:27:04 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95eb29922954e0efbb03fb3ca6512c8ce0d257303fc9a551e8d52455bef6d5b1`  
		Last Modified: Thu, 21 Jun 2018 17:27:07 GMT  
		Size: 2.5 MB (2456916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bfa5dcbc83e5d3cd044dfbc3d81faa5b22a07684e60e5ca7cc0c8f4c76a57f`  
		Last Modified: Thu, 21 Jun 2018 17:27:35 GMT  
		Size: 89.1 MB (89125967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f3ad7cc3086c71f467f0eee89ca821bc6f3aae7bd05ce85b8eb78d72e15a94`  
		Last Modified: Thu, 21 Jun 2018 17:27:04 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; 386

```console
$ docker pull redmine@sha256:3e0378142a38be556e5b326797b2b40d6df2166040fef3a3556e8d095c147a4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251905216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8a85e0ccb47343b6f39f393063672f59feac95b8d8ec473a791ae40243f2a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:09 GMT
ADD file:08ad3a6967c6fe1bfa51f138b64b989a03a61773e4558ec538f63256b472dd77 in / 
# Wed, 27 Jun 2018 10:40:13 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:47:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:47:23 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 14:47:24 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 14:47:24 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 14:53:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 14:53:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 14:53:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 14:53:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:53:44 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 14:53:44 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 16:42:26 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 16:43:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:43:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 16:43:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 16:43:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 16:43:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 16:45:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:45:04 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 16:45:04 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 16:45:05 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 16:45:05 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 16:45:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 16:52:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 16:52:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 16:52:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 16:52:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 16:52:56 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 16:52:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9e841ca399d43620c0457822730c2d49124abceba44d04d1ec0a0fa4f453b6d1`  
		Last Modified: Wed, 27 Jun 2018 10:53:00 GMT  
		Size: 54.5 MB (54483863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b289a13ed74ce3f9f091ea432c69aa4570f8ff74b86d057cc234f5ddb7b72453`  
		Last Modified: Wed, 27 Jun 2018 15:05:51 GMT  
		Size: 14.6 MB (14649674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1350c4cb0128495d6c832cd343c879c72641a66361eb59a4a2d268e66fe5260a`  
		Last Modified: Wed, 27 Jun 2018 15:05:43 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3df271f17f5aa9ebe7f9aff1ad11d62f3365c8308539af1f64417109324157`  
		Last Modified: Wed, 27 Jun 2018 15:05:53 GMT  
		Size: 20.3 MB (20303492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4896aa3439f3b59320045be1d21d81cb62f3013f85438aff5f605fa5f03e44`  
		Last Modified: Wed, 27 Jun 2018 15:05:43 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8e2da882fa96e0160363ea1addb474c78ba396339ce62a0eddb95bef6aac0c`  
		Last Modified: Wed, 27 Jun 2018 17:02:56 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556109851b46a9d55a936427cf1aba43b7b02767a76970b5a7dfd2bafad3a990`  
		Last Modified: Wed, 27 Jun 2018 17:03:00 GMT  
		Size: 13.1 MB (13102802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7603aff6ebae3d567efd7913993bb6e98e967c53595173a643d94a6f4094f`  
		Last Modified: Wed, 27 Jun 2018 17:02:54 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f58dceb318f4ca0fa42e7a92340b1180679094e00d645abbde7df146c4557c3`  
		Last Modified: Wed, 27 Jun 2018 17:02:54 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45aebb14e4c4d63df5cdf67ee860f4fffd8ecc419d33ec84c513c5f237135106`  
		Last Modified: Wed, 27 Jun 2018 17:03:17 GMT  
		Size: 58.8 MB (58828813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f0052ff19733420ecf1effca07e7c76705db1c62bae928c0ec3f8301543c12`  
		Last Modified: Wed, 27 Jun 2018 17:02:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3ef258e9bb99f4cc235d82b37e1472ce507197c2056fb0cd09437b7fd17829`  
		Last Modified: Wed, 27 Jun 2018 17:02:53 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9609b2462619a0661cc96ed7bffd396573e9f81ff0dace171a7833cabb13e86`  
		Last Modified: Wed, 27 Jun 2018 17:03:21 GMT  
		Size: 87.6 MB (87586161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2785ce363a4489468ae0bded19f1d20a6da7d04471224bf069c1cda38f8b7ba0`  
		Last Modified: Wed, 27 Jun 2018 17:02:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; ppc64le

```console
$ docker pull redmine@sha256:907c86f110cb9245f282d9daeb30d2fef6fe5073bc1c78cea57bc0f4c745dc1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249907098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0de66b8b9f108221b0d577f34253c4482d759cf811a688bfc94660b4c03cb28`
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
# Thu, 21 Jun 2018 09:57:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 09:57:57 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 09:57:58 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 09:57:58 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 09:57:59 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 09:58:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 10:09:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 10:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 10:09:12 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 10:09:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 10:09:15 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 10:09:19 GMT
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
	-	`sha256:bbb5e064795a21c6fe2b678532828599dfeca38475f384ae401a3452917112a2`  
		Last Modified: Thu, 21 Jun 2018 10:24:26 GMT  
		Size: 58.6 MB (58565791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a889f049e1545e24c2d4646d29bf7b0a3e0f72f2d286d8c219dbe346c08efb9`  
		Last Modified: Thu, 21 Jun 2018 10:24:09 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da14007fe0da424adf4a75292ded9fae229448fbca2f31fd9be25d875290f85`  
		Last Modified: Thu, 21 Jun 2018 10:24:10 GMT  
		Size: 2.5 MB (2457580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc76284d5a2c5b70dc71348dd65954b145b82b10252ae4c34b4960f37e90b86`  
		Last Modified: Thu, 21 Jun 2018 10:24:30 GMT  
		Size: 90.0 MB (89999138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f957288162825d819debf1f6f7c10ee1f44c5bd0d99f411380a51626910bda76`  
		Last Modified: Thu, 21 Jun 2018 10:24:10 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; s390x

```console
$ docker pull redmine@sha256:30b50ca230b2b96668f067c3aa64f4ab650c5d0f58b705b9475e8eb036d65f63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254937140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924bf921e4b13986dd1234309bc076c1a40bf4134fc02b23ec26aac9448fc0e1`
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
# Thu, 21 Jun 2018 13:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 13:40:20 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 13:40:20 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 13:40:20 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 13:40:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 13:40:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 13:43:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 13:43:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 13:43:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 13:43:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 13:43:57 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 13:43:57 GMT
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
	-	`sha256:147ee1fc1b1a421958c0c5f1e52aa1fcd3bb3db7c6b68f6c4c69b8daa4356bdd`  
		Last Modified: Thu, 21 Jun 2018 13:47:39 GMT  
		Size: 59.5 MB (59533196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fc24964afaca53a8f69b089f296f90016a97249c28644192e99669d94ca950`  
		Last Modified: Thu, 21 Jun 2018 13:47:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95937785bb16f99b2d94476fe49fab2418fd81f458a9214d61406057d60561f7`  
		Last Modified: Thu, 21 Jun 2018 13:47:27 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5621a26308c9d8073f8ef0d18bc14689e45b96da0d71fe09658c0311b4578690`  
		Last Modified: Thu, 21 Jun 2018 13:47:43 GMT  
		Size: 93.2 MB (93179163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff10f665c615aa7ed26b1dd97eec9db4674eb2affa120fb7b23dc95d1b52b7c`  
		Last Modified: Thu, 21 Jun 2018 13:47:26 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.6-passenger`

```console
$ docker pull redmine@sha256:bb8eaf8672af2f4db6579a91df0c0c4a2f2bac81cb27af7f49829a6cc245079a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.6-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:159134617ea9fd1fb451c2de7cc9bf093b2d7d9d95f1836f0d4073978b8ecd1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272306541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb251a349b386733c22801dd80a4cf7399593ed171af12962ab9c6e41d3ee39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 02:43:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 02:50:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 02:50:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:50:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 02:50:05 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:18:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:19:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:19:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:19:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:20:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:56 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:20:56 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 10:21:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:27:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:27:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:27:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:27:53 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:27:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 27 Jun 2018 10:28:23 GMT
ENV PASSENGER_VERSION=5.3.2
# Wed, 27 Jun 2018 10:29:11 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:29:13 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 27 Jun 2018 10:29:13 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5b7570c14686a3dfb8d138a3c87f61935b8dcab5ebad8fab6c7d3fc5adc13`  
		Last Modified: Wed, 27 Jun 2018 03:14:38 GMT  
		Size: 21.3 MB (21306627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc66d7f32eb09a662bd20852b06e8794dab71ef36126f366bd6d9a7201c113d`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273f202161a785c9a5698c3a3a45f57238fd3b2a44c140f6fb515960a857844a`  
		Last Modified: Wed, 27 Jun 2018 10:38:39 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c015acbbce3628986ded3d25eebe294f39636c6c0f027549787d5e29a84ca`  
		Last Modified: Wed, 27 Jun 2018 10:38:41 GMT  
		Size: 13.0 MB (12967892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc0e847209a792f5dacba66df94724d617de6734d16e1fb4434f28cbb96947`  
		Last Modified: Wed, 27 Jun 2018 10:38:36 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68107099fb8b472e5c4a7a767e28ef4727589b146581d6071190093d739288`  
		Last Modified: Wed, 27 Jun 2018 10:38:34 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2cb8e499b79664f1b19a375272bd7adedc0a3734b4206c1d519e09cbe3fa80`  
		Last Modified: Wed, 27 Jun 2018 10:38:55 GMT  
		Size: 58.0 MB (58002590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27242abea96f6f3ac858acffd7ed3b88dd0faa974974b3472d8bab3fccf4f089`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278d9efc1670a760b13c2fd7bfb6895a2960bcfe8a316ff4cc9deac5cbf3a73`  
		Last Modified: Wed, 27 Jun 2018 10:38:33 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c70b5650565c4c63e36f7a6e9bd9da9dcf6abff70e3950ceaa1bebe06670`  
		Last Modified: Wed, 27 Jun 2018 10:38:58 GMT  
		Size: 89.4 MB (89370329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39803a1108a119f8f3e3fdb99c680727029b18731c106107a9acaafd68d21a1b`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bc355edb105303af49619ad2e1281809e8a137719338ba7de3d25a550b2f8b`  
		Last Modified: Wed, 27 Jun 2018 10:40:05 GMT  
		Size: 18.8 MB (18769271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe73f61944daae1827013900f96cc9d69f90f9ed75a284fa9edf5317b1dcbd0`  
		Last Modified: Wed, 27 Jun 2018 10:40:02 GMT  
		Size: 4.5 MB (4484747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:bb8eaf8672af2f4db6579a91df0c0c4a2f2bac81cb27af7f49829a6cc245079a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:159134617ea9fd1fb451c2de7cc9bf093b2d7d9d95f1836f0d4073978b8ecd1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272306541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb251a349b386733c22801dd80a4cf7399593ed171af12962ab9c6e41d3ee39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 02:43:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 02:50:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 02:50:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:50:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 02:50:05 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:18:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:19:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:19:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:19:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:20:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:56 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:20:56 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 10:21:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:27:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:27:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:27:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:27:53 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:27:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 27 Jun 2018 10:28:23 GMT
ENV PASSENGER_VERSION=5.3.2
# Wed, 27 Jun 2018 10:29:11 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:29:13 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 27 Jun 2018 10:29:13 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5b7570c14686a3dfb8d138a3c87f61935b8dcab5ebad8fab6c7d3fc5adc13`  
		Last Modified: Wed, 27 Jun 2018 03:14:38 GMT  
		Size: 21.3 MB (21306627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc66d7f32eb09a662bd20852b06e8794dab71ef36126f366bd6d9a7201c113d`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273f202161a785c9a5698c3a3a45f57238fd3b2a44c140f6fb515960a857844a`  
		Last Modified: Wed, 27 Jun 2018 10:38:39 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c015acbbce3628986ded3d25eebe294f39636c6c0f027549787d5e29a84ca`  
		Last Modified: Wed, 27 Jun 2018 10:38:41 GMT  
		Size: 13.0 MB (12967892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc0e847209a792f5dacba66df94724d617de6734d16e1fb4434f28cbb96947`  
		Last Modified: Wed, 27 Jun 2018 10:38:36 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68107099fb8b472e5c4a7a767e28ef4727589b146581d6071190093d739288`  
		Last Modified: Wed, 27 Jun 2018 10:38:34 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2cb8e499b79664f1b19a375272bd7adedc0a3734b4206c1d519e09cbe3fa80`  
		Last Modified: Wed, 27 Jun 2018 10:38:55 GMT  
		Size: 58.0 MB (58002590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27242abea96f6f3ac858acffd7ed3b88dd0faa974974b3472d8bab3fccf4f089`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278d9efc1670a760b13c2fd7bfb6895a2960bcfe8a316ff4cc9deac5cbf3a73`  
		Last Modified: Wed, 27 Jun 2018 10:38:33 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c70b5650565c4c63e36f7a6e9bd9da9dcf6abff70e3950ceaa1bebe06670`  
		Last Modified: Wed, 27 Jun 2018 10:38:58 GMT  
		Size: 89.4 MB (89370329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39803a1108a119f8f3e3fdb99c680727029b18731c106107a9acaafd68d21a1b`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bc355edb105303af49619ad2e1281809e8a137719338ba7de3d25a550b2f8b`  
		Last Modified: Wed, 27 Jun 2018 10:40:05 GMT  
		Size: 18.8 MB (18769271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe73f61944daae1827013900f96cc9d69f90f9ed75a284fa9edf5317b1dcbd0`  
		Last Modified: Wed, 27 Jun 2018 10:40:02 GMT  
		Size: 4.5 MB (4484747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:bb8eaf8672af2f4db6579a91df0c0c4a2f2bac81cb27af7f49829a6cc245079a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:159134617ea9fd1fb451c2de7cc9bf093b2d7d9d95f1836f0d4073978b8ecd1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272306541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb251a349b386733c22801dd80a4cf7399593ed171af12962ab9c6e41d3ee39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 02:43:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 02:50:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 02:50:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:50:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 02:50:05 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:18:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:19:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:19:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:19:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:20:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:56 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:20:56 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 10:21:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:27:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:27:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:27:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:27:53 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:27:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 27 Jun 2018 10:28:23 GMT
ENV PASSENGER_VERSION=5.3.2
# Wed, 27 Jun 2018 10:29:11 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:29:13 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 27 Jun 2018 10:29:13 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5b7570c14686a3dfb8d138a3c87f61935b8dcab5ebad8fab6c7d3fc5adc13`  
		Last Modified: Wed, 27 Jun 2018 03:14:38 GMT  
		Size: 21.3 MB (21306627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc66d7f32eb09a662bd20852b06e8794dab71ef36126f366bd6d9a7201c113d`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273f202161a785c9a5698c3a3a45f57238fd3b2a44c140f6fb515960a857844a`  
		Last Modified: Wed, 27 Jun 2018 10:38:39 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c015acbbce3628986ded3d25eebe294f39636c6c0f027549787d5e29a84ca`  
		Last Modified: Wed, 27 Jun 2018 10:38:41 GMT  
		Size: 13.0 MB (12967892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc0e847209a792f5dacba66df94724d617de6734d16e1fb4434f28cbb96947`  
		Last Modified: Wed, 27 Jun 2018 10:38:36 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68107099fb8b472e5c4a7a767e28ef4727589b146581d6071190093d739288`  
		Last Modified: Wed, 27 Jun 2018 10:38:34 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2cb8e499b79664f1b19a375272bd7adedc0a3734b4206c1d519e09cbe3fa80`  
		Last Modified: Wed, 27 Jun 2018 10:38:55 GMT  
		Size: 58.0 MB (58002590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27242abea96f6f3ac858acffd7ed3b88dd0faa974974b3472d8bab3fccf4f089`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278d9efc1670a760b13c2fd7bfb6895a2960bcfe8a316ff4cc9deac5cbf3a73`  
		Last Modified: Wed, 27 Jun 2018 10:38:33 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c70b5650565c4c63e36f7a6e9bd9da9dcf6abff70e3950ceaa1bebe06670`  
		Last Modified: Wed, 27 Jun 2018 10:38:58 GMT  
		Size: 89.4 MB (89370329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39803a1108a119f8f3e3fdb99c680727029b18731c106107a9acaafd68d21a1b`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bc355edb105303af49619ad2e1281809e8a137719338ba7de3d25a550b2f8b`  
		Last Modified: Wed, 27 Jun 2018 10:40:05 GMT  
		Size: 18.8 MB (18769271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe73f61944daae1827013900f96cc9d69f90f9ed75a284fa9edf5317b1dcbd0`  
		Last Modified: Wed, 27 Jun 2018 10:40:02 GMT  
		Size: 4.5 MB (4484747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:f618b97a0c3c2b4acf099107720cbad3c7ff957beb58cfb4d6c8c6a00f6646e8
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
$ docker pull redmine@sha256:21a6f39f8d4a54c391b49f2e8035d670a314909d0810f8f5d6482b6884443b7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249052523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36305366e7ed479b5eb1bd68f0b8c93eb4e1119b1a31ef76da2b5754ea5a0720`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 02:43:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 02:50:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 02:50:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:50:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 02:50:05 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:18:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:19:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:19:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:19:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:20:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:56 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:20:56 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 10:21:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:27:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:27:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:27:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:27:53 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:27:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5b7570c14686a3dfb8d138a3c87f61935b8dcab5ebad8fab6c7d3fc5adc13`  
		Last Modified: Wed, 27 Jun 2018 03:14:38 GMT  
		Size: 21.3 MB (21306627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc66d7f32eb09a662bd20852b06e8794dab71ef36126f366bd6d9a7201c113d`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273f202161a785c9a5698c3a3a45f57238fd3b2a44c140f6fb515960a857844a`  
		Last Modified: Wed, 27 Jun 2018 10:38:39 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c015acbbce3628986ded3d25eebe294f39636c6c0f027549787d5e29a84ca`  
		Last Modified: Wed, 27 Jun 2018 10:38:41 GMT  
		Size: 13.0 MB (12967892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc0e847209a792f5dacba66df94724d617de6734d16e1fb4434f28cbb96947`  
		Last Modified: Wed, 27 Jun 2018 10:38:36 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68107099fb8b472e5c4a7a767e28ef4727589b146581d6071190093d739288`  
		Last Modified: Wed, 27 Jun 2018 10:38:34 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2cb8e499b79664f1b19a375272bd7adedc0a3734b4206c1d519e09cbe3fa80`  
		Last Modified: Wed, 27 Jun 2018 10:38:55 GMT  
		Size: 58.0 MB (58002590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27242abea96f6f3ac858acffd7ed3b88dd0faa974974b3472d8bab3fccf4f089`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278d9efc1670a760b13c2fd7bfb6895a2960bcfe8a316ff4cc9deac5cbf3a73`  
		Last Modified: Wed, 27 Jun 2018 10:38:33 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c70b5650565c4c63e36f7a6e9bd9da9dcf6abff70e3950ceaa1bebe06670`  
		Last Modified: Wed, 27 Jun 2018 10:38:58 GMT  
		Size: 89.4 MB (89370329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39803a1108a119f8f3e3fdb99c680727029b18731c106107a9acaafd68d21a1b`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e4fb19272e14f98cef9f9ddcd5785ed87fe90ffe1cf09ce03c4c86932b6fa071
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242620163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f0c867a40cd2d82495155338e34db502cc3257ba0d40acfa71a018586d6f5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Jun 2018 08:49:35 GMT
ADD file:ffdec8efe717fef7468633ecb4de75a3e3f775a293230d77477e11b8364c9042 in / 
# Wed, 27 Jun 2018 08:49:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:50:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:50:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 11:50:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 11:50:28 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 11:50:28 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 11:56:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 11:56:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 11:56:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 11:56:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:56:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 11:56:29 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 14:24:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 14:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:25:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 14:25:03 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 14:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 14:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:26:10 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 14:26:10 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 14:26:10 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 14:26:10 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 14:26:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 14:33:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 14:33:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 14:33:16 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 14:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:33:17 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 14:33:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2370554fdd8c2d014fa023ee30dcf0dc3febde1853ffc7cd9641ea8eb276d0bb`  
		Last Modified: Wed, 27 Jun 2018 08:58:15 GMT  
		Size: 52.4 MB (52448410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f98906fae67dfd0e40891444119fee686218e619a229f63d78cd5dc796f5813`  
		Last Modified: Wed, 27 Jun 2018 12:21:16 GMT  
		Size: 9.1 MB (9134326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642f0a356d3beae53c7a5b2ae2e7208975a4058d565aa54b5b26f668755b0100`  
		Last Modified: Wed, 27 Jun 2018 12:21:13 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23acf77ea1fa346796eb2fd343a4d7843f03d32c75044b641746b0eb391faa22`  
		Last Modified: Wed, 27 Jun 2018 12:21:21 GMT  
		Size: 21.1 MB (21075011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd5d6f694a7b53e7ea556a913f30d7f486381f10e16440b089b66f874cc5e65`  
		Last Modified: Wed, 27 Jun 2018 12:21:13 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c80cc98f90fa70ca12419ea0f834e782660bded9ea2a36d3aaabe4d1ea2913`  
		Last Modified: Wed, 27 Jun 2018 14:40:29 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d71f6fed31923994d84664349e79622adb7254a59552da18f1ef287ae88fc23`  
		Last Modified: Wed, 27 Jun 2018 14:40:32 GMT  
		Size: 12.8 MB (12772560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61073d761d31d5adbe7e0db434f8549e19d69e8fe04bf291f769555a1cb9411`  
		Last Modified: Wed, 27 Jun 2018 14:40:28 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a2a8fad387861a974f8d71a2c4db15db82655f8f9d83c739b602efe923eef6`  
		Last Modified: Wed, 27 Jun 2018 14:40:26 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961cd33098a1f29e0cb59a11d0a9359c8e041656ed17d81ad23d70493dbba6e1`  
		Last Modified: Wed, 27 Jun 2018 14:40:52 GMT  
		Size: 55.4 MB (55400544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed6fe830585ff5bf3d3d7ff3a5f2acba733f03f41bc439d538e213d1fd5ebce`  
		Last Modified: Wed, 27 Jun 2018 14:40:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250fbcf2b8c74eeb0b794778caa0f41bcffebae1d5ef5795ba8e0da82de7f3f8`  
		Last Modified: Wed, 27 Jun 2018 14:40:27 GMT  
		Size: 2.5 MB (2457564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b4d47d74f749950c75a914b70959fb9826e8cb6265d87e784f8ed00f14cb81`  
		Last Modified: Wed, 27 Jun 2018 14:41:02 GMT  
		Size: 88.8 MB (88828349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f98bedb0a50102fc0cbb3fbc65264f6d4cbd71f1e0990358e04f31afdc9230`  
		Last Modified: Wed, 27 Jun 2018 14:40:25 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:df7144a1137742adc5e4e11125da5e4d18e517fe491950489f2f97452b2522bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238431615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f661101282a8e3e492241307b1e3a098dbc6f66588f65c554e6267e3fa781492`
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
# Thu, 21 Jun 2018 12:06:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 12:06:34 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 12:06:34 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 12:06:35 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 12:06:35 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 12:06:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 12:12:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 12:12:25 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 12:12:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 12:12:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 12:12:26 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 12:12:26 GMT
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
	-	`sha256:1374393c860f34b65841b3158be787bc2df985c718b0bd332c8d8c7428a83e52`  
		Last Modified: Thu, 21 Jun 2018 12:18:49 GMT  
		Size: 54.7 MB (54698588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42db57f6861effae6af53fac1d6db5790da8afb4d14f64a0f0f22aba5649080e`  
		Last Modified: Thu, 21 Jun 2018 12:18:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590497ab77d278095f81c2e419971e26ef0d6483e14a0b97ed13f8ec94a76f83`  
		Last Modified: Thu, 21 Jun 2018 12:18:34 GMT  
		Size: 2.5 MB (2457572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3918493345313d19d0cbd4c26bd6142b71be53be71d3976bbd956e00a1c7da8`  
		Last Modified: Thu, 21 Jun 2018 12:18:57 GMT  
		Size: 88.2 MB (88245671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e118f56902617fa8db9f49493a8d0039c3a90976f6506cf6df565557e09560af`  
		Last Modified: Thu, 21 Jun 2018 12:18:32 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:988df7496fea7b7cc53d5210dd1bd832b8d22cbf82fb0b9f6a7d61c366de95c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243226684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795f00ab797d1fb1e0e03e8ea4d2c01f3f953b9df56a7da35adfd390546f65a6`
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
# Thu, 21 Jun 2018 16:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 16:59:12 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 16:59:13 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 16:59:13 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 16:59:14 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 16:59:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 17:12:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 17:12:14 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 17:12:14 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 17:12:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 17:12:16 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 17:12:17 GMT
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
	-	`sha256:33f179dd0cce7b503211ff6d22a331d47169a234442ac5b0f6d11519eb3ead53`  
		Last Modified: Thu, 21 Jun 2018 17:27:27 GMT  
		Size: 56.2 MB (56166767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00c8c2de88468ac5d8b2af1848ffa502eded4adfd3a7e8e3859a57018eaace6`  
		Last Modified: Thu, 21 Jun 2018 17:27:04 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95eb29922954e0efbb03fb3ca6512c8ce0d257303fc9a551e8d52455bef6d5b1`  
		Last Modified: Thu, 21 Jun 2018 17:27:07 GMT  
		Size: 2.5 MB (2456916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bfa5dcbc83e5d3cd044dfbc3d81faa5b22a07684e60e5ca7cc0c8f4c76a57f`  
		Last Modified: Thu, 21 Jun 2018 17:27:35 GMT  
		Size: 89.1 MB (89125967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f3ad7cc3086c71f467f0eee89ca821bc6f3aae7bd05ce85b8eb78d72e15a94`  
		Last Modified: Thu, 21 Jun 2018 17:27:04 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:d87c7c46bff353bc7e6f129b084607c93da5931f3d61a8ab52a1a2e6895bf371
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 MB (253912619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17b65464fff83d872964798559dc27680b6902daaba36df7306c9fa0a810e9d`
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
# Thu, 21 Jun 2018 11:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 11:00:38 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 11:00:38 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 11:00:38 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 11:00:39 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 11:00:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 11:07:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 11:07:28 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 11:07:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 11:07:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 11:07:36 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 11:07:36 GMT
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
	-	`sha256:a6451afdfb1e0e39ceba0ae2d333f8b7517af15e4c692a597d1b54293e304bb1`  
		Last Modified: Thu, 21 Jun 2018 11:15:18 GMT  
		Size: 60.6 MB (60580239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf645102966d197165f4e7e583a568f06ddf47daafd8fb4d473042543a2cac26`  
		Last Modified: Thu, 21 Jun 2018 11:14:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce01371909c6db5cdb9d92de323d2973c0dd219f9f8daba9055a9dc8195ec003`  
		Last Modified: Thu, 21 Jun 2018 11:14:50 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d4b6248a4676e50ab8bbfe182fb99d5dd0caff607308555d3f8d9147948743`  
		Last Modified: Thu, 21 Jun 2018 11:15:20 GMT  
		Size: 87.5 MB (87546324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114fe7ad48c3d506f86cfc90e19d21acbd0d6f6f8686ffd8c241234719076c80`  
		Last Modified: Thu, 21 Jun 2018 11:14:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:907c86f110cb9245f282d9daeb30d2fef6fe5073bc1c78cea57bc0f4c745dc1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249907098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0de66b8b9f108221b0d577f34253c4482d759cf811a688bfc94660b4c03cb28`
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
# Thu, 21 Jun 2018 09:57:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 09:57:57 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 09:57:58 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 09:57:58 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 09:57:59 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 09:58:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 10:09:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 10:09:12 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 10:09:12 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 10:09:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 10:09:15 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 10:09:19 GMT
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
	-	`sha256:bbb5e064795a21c6fe2b678532828599dfeca38475f384ae401a3452917112a2`  
		Last Modified: Thu, 21 Jun 2018 10:24:26 GMT  
		Size: 58.6 MB (58565791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a889f049e1545e24c2d4646d29bf7b0a3e0f72f2d286d8c219dbe346c08efb9`  
		Last Modified: Thu, 21 Jun 2018 10:24:09 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da14007fe0da424adf4a75292ded9fae229448fbca2f31fd9be25d875290f85`  
		Last Modified: Thu, 21 Jun 2018 10:24:10 GMT  
		Size: 2.5 MB (2457580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc76284d5a2c5b70dc71348dd65954b145b82b10252ae4c34b4960f37e90b86`  
		Last Modified: Thu, 21 Jun 2018 10:24:30 GMT  
		Size: 90.0 MB (89999138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f957288162825d819debf1f6f7c10ee1f44c5bd0d99f411380a51626910bda76`  
		Last Modified: Thu, 21 Jun 2018 10:24:10 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:30b50ca230b2b96668f067c3aa64f4ab650c5d0f58b705b9475e8eb036d65f63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254937140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924bf921e4b13986dd1234309bc076c1a40bf4134fc02b23ec26aac9448fc0e1`
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
# Thu, 21 Jun 2018 13:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 13:40:20 GMT
ENV RAILS_ENV=production
# Thu, 21 Jun 2018 13:40:20 GMT
WORKDIR /usr/src/redmine
# Thu, 21 Jun 2018 13:40:20 GMT
ENV REDMINE_VERSION=3.4.6
# Thu, 21 Jun 2018 13:40:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Thu, 21 Jun 2018 13:40:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 21 Jun 2018 13:43:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 21 Jun 2018 13:43:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 21 Jun 2018 13:43:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 21 Jun 2018 13:43:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 13:43:57 GMT
EXPOSE 3000/tcp
# Thu, 21 Jun 2018 13:43:57 GMT
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
	-	`sha256:147ee1fc1b1a421958c0c5f1e52aa1fcd3bb3db7c6b68f6c4c69b8daa4356bdd`  
		Last Modified: Thu, 21 Jun 2018 13:47:39 GMT  
		Size: 59.5 MB (59533196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33fc24964afaca53a8f69b089f296f90016a97249c28644192e99669d94ca950`  
		Last Modified: Thu, 21 Jun 2018 13:47:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95937785bb16f99b2d94476fe49fab2418fd81f458a9214d61406057d60561f7`  
		Last Modified: Thu, 21 Jun 2018 13:47:27 GMT  
		Size: 2.5 MB (2456908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5621a26308c9d8073f8ef0d18bc14689e45b96da0d71fe09658c0311b4578690`  
		Last Modified: Thu, 21 Jun 2018 13:47:43 GMT  
		Size: 93.2 MB (93179163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff10f665c615aa7ed26b1dd97eec9db4674eb2affa120fb7b23dc95d1b52b7c`  
		Last Modified: Thu, 21 Jun 2018 13:47:26 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:bb8eaf8672af2f4db6579a91df0c0c4a2f2bac81cb27af7f49829a6cc245079a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:159134617ea9fd1fb451c2de7cc9bf093b2d7d9d95f1836f0d4073978b8ecd1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272306541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb251a349b386733c22801dd80a4cf7399593ed171af12962ab9c6e41d3ee39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:43:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 02:43:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_MAJOR=2.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 27 Jun 2018 02:43:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 27 Jun 2018 02:43:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Wed, 27 Jun 2018 02:50:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 27 Jun 2018 02:50:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 02:50:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:50:05 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 27 Jun 2018 02:50:05 GMT
CMD ["irb"]
# Wed, 27 Jun 2018 10:18:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Jun 2018 10:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 10:19:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Jun 2018 10:19:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Jun 2018 10:19:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Jun 2018 10:20:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:56 GMT
ENV RAILS_ENV=production
# Wed, 27 Jun 2018 10:20:56 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 27 Jun 2018 10:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 27 Jun 2018 10:21:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Jun 2018 10:27:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		freetds-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	; 	rm -rf /var/lib/apt/lists/*; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 27 Jun 2018 10:27:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Jun 2018 10:27:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 27 Jun 2018 10:27:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:27:53 GMT
EXPOSE 3000/tcp
# Wed, 27 Jun 2018 10:27:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 27 Jun 2018 10:28:23 GMT
ENV PASSENGER_VERSION=5.3.2
# Wed, 27 Jun 2018 10:29:11 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 10:29:13 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 27 Jun 2018 10:29:13 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9871787c9951a117bc8f3b92865dcb92b0c2abb970b1a24f1884abf66c770c5`  
		Last Modified: Wed, 27 Jun 2018 03:14:36 GMT  
		Size: 10.2 MB (10182573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8d2e9320c94d2605831e799c9ce908eb81c40162bc5165dcd331efc1536ab9`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a5b7570c14686a3dfb8d138a3c87f61935b8dcab5ebad8fab6c7d3fc5adc13`  
		Last Modified: Wed, 27 Jun 2018 03:14:38 GMT  
		Size: 21.3 MB (21306627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc66d7f32eb09a662bd20852b06e8794dab71ef36126f366bd6d9a7201c113d`  
		Last Modified: Wed, 27 Jun 2018 03:14:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273f202161a785c9a5698c3a3a45f57238fd3b2a44c140f6fb515960a857844a`  
		Last Modified: Wed, 27 Jun 2018 10:38:39 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c015acbbce3628986ded3d25eebe294f39636c6c0f027549787d5e29a84ca`  
		Last Modified: Wed, 27 Jun 2018 10:38:41 GMT  
		Size: 13.0 MB (12967892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fc0e847209a792f5dacba66df94724d617de6734d16e1fb4434f28cbb96947`  
		Last Modified: Wed, 27 Jun 2018 10:38:36 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68107099fb8b472e5c4a7a767e28ef4727589b146581d6071190093d739288`  
		Last Modified: Wed, 27 Jun 2018 10:38:34 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2cb8e499b79664f1b19a375272bd7adedc0a3734b4206c1d519e09cbe3fa80`  
		Last Modified: Wed, 27 Jun 2018 10:38:55 GMT  
		Size: 58.0 MB (58002590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27242abea96f6f3ac858acffd7ed3b88dd0faa974974b3472d8bab3fccf4f089`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278d9efc1670a760b13c2fd7bfb6895a2960bcfe8a316ff4cc9deac5cbf3a73`  
		Last Modified: Wed, 27 Jun 2018 10:38:33 GMT  
		Size: 2.5 MB (2456915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c70b5650565c4c63e36f7a6e9bd9da9dcf6abff70e3950ceaa1bebe06670`  
		Last Modified: Wed, 27 Jun 2018 10:38:58 GMT  
		Size: 89.4 MB (89370329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39803a1108a119f8f3e3fdb99c680727029b18731c106107a9acaafd68d21a1b`  
		Last Modified: Wed, 27 Jun 2018 10:38:32 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bc355edb105303af49619ad2e1281809e8a137719338ba7de3d25a550b2f8b`  
		Last Modified: Wed, 27 Jun 2018 10:40:05 GMT  
		Size: 18.8 MB (18769271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe73f61944daae1827013900f96cc9d69f90f9ed75a284fa9edf5317b1dcbd0`  
		Last Modified: Wed, 27 Jun 2018 10:40:02 GMT  
		Size: 4.5 MB (4484747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
