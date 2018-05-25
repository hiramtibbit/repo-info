<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.7`](#redmine337)
-	[`redmine:3.3.7-passenger`](#redmine337-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.5`](#redmine345)
-	[`redmine:3.4.5-passenger`](#redmine345-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:4fd9db02bb4c9ef0db7bdaa69a0a580d312022291e2c12033061d346f9237a02
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
$ docker pull redmine@sha256:4c2a57dc3e52e13e352a823ec347261ac0fa2b1146284811f45c066bf3241e73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 MB (260461264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c639ff129295ee9db6eeee57500b44ffc9f3345a92d04038503019259dc5c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_MAJOR=2.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_VERSION=2.4.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 16:52:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 16:56:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 16:56:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 16:56:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 16:56:02 GMT
CMD ["irb"]
# Thu, 03 May 2018 03:42:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 03:42:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:42:30 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 03:42:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 03:42:35 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 03:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 03:43:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:43:21 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 03:43:22 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 03 May 2018 03:43:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 03:46:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 03:46:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 03:46:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 03:46:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 03:46:44 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 03:46:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db3df565eff555b355459a6eab150063cc3cb47228a16be397dcd5682cceef`  
		Last Modified: Sun, 29 Apr 2018 19:34:04 GMT  
		Size: 21.3 MB (21290189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6894497d0e25a0b6ba853acc05ff57b7e5cf50ab09c5a555175f848f73a6a6f`  
		Last Modified: Sun, 29 Apr 2018 19:33:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab58405acb4af2467d9f2e41bd812edf1b09a1d99fd045b574e0ffb73abb0978`  
		Last Modified: Thu, 03 May 2018 04:50:22 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe08ba54663f3b5b8eb59e07104cf2c7d842049116ab786185961a23ffa6d9e9`  
		Last Modified: Thu, 03 May 2018 04:50:25 GMT  
		Size: 13.0 MB (12968169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9638a0f0496cc4bc67b454bbe11d3609261ac96cd8942c7cdbab36fbc6317b`  
		Last Modified: Thu, 03 May 2018 04:50:21 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228f3e7522efdf39b46e17fb618d36c713bc927886448cc721c4c8fd5f7392a`  
		Last Modified: Thu, 03 May 2018 04:50:19 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb363dbd665cb3675a98b0979b74c1423708352849e83aa74149816621e582`  
		Last Modified: Thu, 03 May 2018 04:50:36 GMT  
		Size: 59.3 MB (59260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4ff67a7380b8f6cc6c6df1c1d83c480295c034a9998c7f7c5bb6d7761e306`  
		Last Modified: Thu, 03 May 2018 04:50:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3529dee0dc7fc5a6f710cb38b3250dafaa66984fcdf6268025910a27920458f4`  
		Last Modified: Thu, 03 May 2018 04:50:20 GMT  
		Size: 2.5 MB (2455510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b0278df283894547b54bce4068bfd8575a0fd0f07fd59f1bcca2a82d14dd9a`  
		Last Modified: Thu, 03 May 2018 04:50:49 GMT  
		Size: 99.5 MB (99541951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b05cb93487bb0ea3c06e61a58dfe253e6e934f9983e6974678086e7fd9843a3`  
		Last Modified: Thu, 03 May 2018 04:50:17 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:864532d60f84462ad0658587fa7d306f95c8bd07c279b1a26eaba469afad18bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253780789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd204c14eb723f0c0335056e99d7374520d8f5f3458dbd0787f82132e9dea888`
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
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:50:11 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:56:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:56:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:56:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:56:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:56:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:56:08 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 14:51:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 14:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:51:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 14:52:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 14:52:00 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 14:52:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 14:53:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:53:00 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 14:53:01 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 14:53:01 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 14:53:01 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 14:53:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 14:58:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 14:58:30 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 14:58:31 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 14:58:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 14:58:31 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 14:58:32 GMT
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
	-	`sha256:94a66a7ddb6901f1274cc0fa2c65eebfe5e235802df7937480b39418694484fa`  
		Last Modified: Sat, 28 Apr 2018 12:31:34 GMT  
		Size: 21.1 MB (21059024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524ccdf42ba2c4e3e4be2ee4fb5c10d4afc131477f2a3ab1709ece82adc5cb77`  
		Last Modified: Sat, 28 Apr 2018 12:31:26 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea7ea6cc4fe4dca1ff56cbef45c0a5ceab16298cc413b66ed67fe8ffb36091c`  
		Last Modified: Sat, 28 Apr 2018 15:09:59 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189f89a0552f22ef88a40ac59780f4cc23c75e920742fc1a98fc53dd10e12707`  
		Last Modified: Sat, 28 Apr 2018 15:10:02 GMT  
		Size: 12.8 MB (12772346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c8e504663da75271241ef58cda2443b8bf9cec707cd2f86712c81ed7b4b424`  
		Last Modified: Sat, 28 Apr 2018 15:09:59 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334211fc8b5a58957a63ccfe8be286e040109001f4e7f0d654fe09a5c93fd7a9`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 7.8 KB (7843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee71b3d8d29db4664db8e14b34aa74879bd363a825236c00c7c947d2ea79696`  
		Last Modified: Sat, 28 Apr 2018 15:10:15 GMT  
		Size: 56.6 MB (56602454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfd36a77679c41ae112206b6dca62385e3d69d3085a97338f74c6b01a040f43`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96557711b0f5518195be87e7056d581c2cb946e62432773b572a2c323b08bb0d`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 2.5 MB (2455970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399a4cb09acb6dd72dea3656268edbdd4f3e5001908facfc435b2effde2ba43b`  
		Last Modified: Sat, 28 Apr 2018 15:10:23 GMT  
		Size: 98.8 MB (98811650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3813e523333b4c92b2d134db7c78833e250acda17ad7aa4bfc182283b87b9`  
		Last Modified: Sat, 28 Apr 2018 15:09:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:827b3900f677badb0bf453abe9fbd2d7f26d6a1bfd158dcb01600e89c3d49183
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247792666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8ee74826e44aebb861336f2cb278630e13a11f76f05a83e2d9814ecc0d363f`
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
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:40:58 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:46:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:46:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:46:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:46:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:46:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:46:37 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:37:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:37:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:37:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:37:58 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:37:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:38:58 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:38:58 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:38:58 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 18:38:58 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 18:39:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 18:44:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 18:44:08 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 18:44:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 18:44:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:44:09 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 18:44:09 GMT
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
	-	`sha256:8740c938f0e769050ecd151d51397d1e23aeb49231b471b4e3382bc22d752c21`  
		Last Modified: Sat, 28 Apr 2018 16:21:25 GMT  
		Size: 20.9 MB (20925525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae6faa56e8d083c41a2a8dcc749447c36da0f335725f00fed8a7c2bf5066288`  
		Last Modified: Sat, 28 Apr 2018 16:21:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c60f740d556409484cd91ddb2f9d1c5cbe02c571a74a32e57235ac3e873bba4`  
		Last Modified: Sat, 28 Apr 2018 18:54:52 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2402ff103770c630c06407a473f973c5cde69f8cc7c3a60b7234c2808a6d46cc`  
		Last Modified: Sat, 28 Apr 2018 18:54:55 GMT  
		Size: 12.6 MB (12629290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c560cfda27777cd8b7fea9f828a23f70f4b0559a1b0c13d74fa02a4d0e09c8`  
		Last Modified: Sat, 28 Apr 2018 18:54:51 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454ba804480e1b3bfad5d5fffab39018aec3e51cba101aef400c2684a6f7ddd5`  
		Last Modified: Sat, 28 Apr 2018 18:54:51 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dea9987c404d67058f06dd9b0b771e3ee703c2495f7405b01e8483d8c471be`  
		Last Modified: Sat, 28 Apr 2018 18:55:05 GMT  
		Size: 54.3 MB (54334502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689e2020df6afdd4e6930e46e0af15737af6e4c72754624686439222b82c092`  
		Last Modified: Sat, 28 Apr 2018 18:54:49 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a88733e4be7a2506c6a321e6b39631c63c53d069a59edc7ddfac1d4eac4c4`  
		Last Modified: Sat, 28 Apr 2018 18:54:50 GMT  
		Size: 2.5 MB (2455973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193653b00cde28f07a0a285f02854ab652325fc632249d1937f58cac9d46b0ed`  
		Last Modified: Sat, 28 Apr 2018 18:55:15 GMT  
		Size: 98.0 MB (97986924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6788b0404e47621a5155406fc2fd0ad92c2d15942ee16843cdd751024f7c2f9`  
		Last Modified: Sat, 28 Apr 2018 18:54:50 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b41106c3dcc5c5622c7c65f14b80c813c254e405b37d0cdb6eeac24b6f3c5fbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252753800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b112bb2edc17c6acadb2c6213ff5e6149482ce11f34328bbf986f03924e22b6`
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
# Tue, 01 May 2018 08:41:48 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 01 May 2018 08:41:49 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 01 May 2018 08:53:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 01 May 2018 08:53:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 May 2018 08:53:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 May 2018 08:53:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 08:53:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 May 2018 08:53:30 GMT
CMD ["irb"]
# Tue, 01 May 2018 21:24:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 May 2018 21:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:25:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 21:25:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 May 2018 21:25:23 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 01 May 2018 21:25:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 May 2018 21:27:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:27:24 GMT
ENV RAILS_ENV=production
# Tue, 01 May 2018 21:27:24 GMT
WORKDIR /usr/src/redmine
# Tue, 01 May 2018 21:27:25 GMT
ENV REDMINE_VERSION=3.4.5
# Tue, 01 May 2018 21:27:26 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Tue, 01 May 2018 21:27:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 May 2018 21:39:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 21:39:22 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 May 2018 21:39:23 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 01 May 2018 21:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 May 2018 21:39:25 GMT
EXPOSE 3000/tcp
# Tue, 01 May 2018 21:39:26 GMT
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
	-	`sha256:dd64c2da743312bff47eb2e0025332616cf5a6d678601732cbd25e1eb5c30498`  
		Last Modified: Tue, 01 May 2018 09:53:51 GMT  
		Size: 21.3 MB (21251141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee67580428352e535254c8e159fa582df7254fd1a68891840fd0d7e093cfe01`  
		Last Modified: Tue, 01 May 2018 09:53:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f7a60173bb49390ee39dc8face0838366b213d567ddd913dee4ce3f35ab79b`  
		Last Modified: Tue, 01 May 2018 22:07:39 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153e98d833a178e0103f7204b60a4ea83224b2fd7f3b1c79b1134ca9a6c3032e`  
		Last Modified: Tue, 01 May 2018 22:07:41 GMT  
		Size: 12.9 MB (12940680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856705cf8f6b964aea1a3dd7ab2adaa18bb412e7ac6256be605a857d925f5359`  
		Last Modified: Tue, 01 May 2018 22:07:37 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46c5927ea6fc505fc38dd5d401ee219a4ff3f336f3b3a53d49eefc629da358`  
		Last Modified: Tue, 01 May 2018 22:07:37 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9096c04b4971fc0ab80087d29c0d04d91e13741919ffede74e499c711e32591`  
		Last Modified: Tue, 01 May 2018 22:07:54 GMT  
		Size: 55.8 MB (55778476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f609976afa04276140ba632f1f3944691bb834a85e7cc0802c26156184535946`  
		Last Modified: Tue, 01 May 2018 22:07:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca569f5470163a07e2dd9cb0c15ca3e4761e31e03c9c6af69def7efe20f3ae4`  
		Last Modified: Tue, 01 May 2018 22:07:34 GMT  
		Size: 2.5 MB (2455515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660bf2546028b466dc54b29e51c3835834a4070b5620c1140088bf2360dd5a09`  
		Last Modified: Tue, 01 May 2018 22:08:07 GMT  
		Size: 99.1 MB (99056787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870a7b0f1bbff549ffd4c7b3141b6b16fe741ffed7d7279f57ab7d0777f2323c`  
		Last Modified: Tue, 01 May 2018 22:07:33 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:bbf4de54838ed580fc43d6612fc438bc745cd5750b4bd9e8469956b62bf5e1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263515236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289960b8e1af46f8136f83b98507245c77712a3e8850cd6ea63172c302e643dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:49:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:49:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 17:49:47 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 17:53:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 17:53:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 17:53:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 17:53:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:53:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 17:53:44 GMT
CMD ["irb"]
# Sun, 29 Apr 2018 00:31:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 29 Apr 2018 00:31:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:31:44 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 00:31:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 29 Apr 2018 00:31:49 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 29 Apr 2018 00:31:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 29 Apr 2018 00:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:32:49 GMT
ENV RAILS_ENV=production
# Sun, 29 Apr 2018 00:32:49 GMT
WORKDIR /usr/src/redmine
# Sun, 29 Apr 2018 00:32:50 GMT
ENV REDMINE_VERSION=3.4.5
# Sun, 29 Apr 2018 00:32:50 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sun, 29 Apr 2018 00:32:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 29 Apr 2018 00:36:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 29 Apr 2018 00:36:30 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 29 Apr 2018 00:36:31 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 29 Apr 2018 00:36:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 00:36:31 GMT
EXPOSE 3000/tcp
# Sun, 29 Apr 2018 00:36:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ed54143c8d969665b70b41c179634296606ed56f18640b853067b9f47f79d`  
		Last Modified: Sat, 28 Apr 2018 18:20:31 GMT  
		Size: 14.6 MB (14636348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e568153250a765bd784dbe6a36fbb20db21f74060ecc604b1faf59fcf15b76`  
		Last Modified: Sat, 28 Apr 2018 18:20:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a640a6c3e1c9d53c2ee91484600bbdeea4a37e168fc7d59f4d59f311057dfe1a`  
		Last Modified: Sat, 28 Apr 2018 18:20:32 GMT  
		Size: 20.3 MB (20287182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b896ebcd525190f1cf30159e537fbb5acb3161f4fb1760c5e94e7a72a362ac6`  
		Last Modified: Sat, 28 Apr 2018 18:20:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1191a2662384cbb8bd6acf1a6b57bbba392e8d7f0ba1192dc180827c601e22`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33a4a4fcb446e7986426e279c256696f7245231c789d286b8dac8165a4ca4`  
		Last Modified: Sun, 29 Apr 2018 00:47:05 GMT  
		Size: 13.1 MB (13102778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2039f1288cabb203a1cee2bb72435ee968d4350e7307e62ae7700af1141bd5b`  
		Last Modified: Sun, 29 Apr 2018 00:47:00 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d109b7d82abd53a18d976c70cce7fc65671644ee58210cbb6c8b3caa166faeee`  
		Last Modified: Sun, 29 Apr 2018 00:47:00 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5449e38c54a33089301430e1eeab1dd58a09c516ba2ad54d99b4895447f2a05a`  
		Last Modified: Sun, 29 Apr 2018 00:47:23 GMT  
		Size: 60.1 MB (60136947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4394bb12a57799f4faf90199c46ed5b4d466116d47748fc01eb93c797f1fd5a`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd6a555bf87d8de47576b02233a2174e6602df844d64c7877a656eb00d5dadc`  
		Last Modified: Sun, 29 Apr 2018 00:47:06 GMT  
		Size: 2.5 MB (2455512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a30ad0ec318629b8e185822382d75242fd445c44f2f0af02a7fa3f212acfeb8`  
		Last Modified: Sun, 29 Apr 2018 00:47:33 GMT  
		Size: 97.9 MB (97916162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a95195f75f665c1629170f5e6caefab538a1ef7a30e49ea297f1fadb8baeec0`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:da28336cad2cdd72f5f9bb4e8c0584d89870bfc4398664cbf2eb476bc68e097b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259648641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7606fb355a3334b3872585b88e2fb6a2485f0aa915aca55a2f2e3631537def`
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
# Sat, 28 Apr 2018 11:24:09 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:24:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:31:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:31:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:31:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:31:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:31:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:31:12 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:39:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:40:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:40:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:40:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:40:34 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:43:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:43:37 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:43:39 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:43:40 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 18:43:40 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 18:43:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 18:55:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 18:55:23 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 18:55:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 18:55:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:55:26 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 18:55:26 GMT
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
	-	`sha256:b4e64091e87afbd7f3b77e942d5ef67cbb4ba7772bd19772a7deb1341496c8a5`  
		Last Modified: Sat, 28 Apr 2018 12:15:10 GMT  
		Size: 21.7 MB (21743800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d86bf4809c8ec32144ab018ebe8ff7bc0fdcd5c66fd10c1338afd988dbede`  
		Last Modified: Sat, 28 Apr 2018 12:15:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd4030bbc4071a28203156a6158cfc971e7e7e8cd0e22371693c604688bb727`  
		Last Modified: Sat, 28 Apr 2018 19:16:02 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef19b16aadb353700cde6768dfea329fd2461e051e6555380bc8b65bc4f6b75`  
		Last Modified: Sat, 28 Apr 2018 19:16:05 GMT  
		Size: 13.1 MB (13113449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b23ecc11c934c7bc1244cfa049b3f16286a5ca1b7be85fdae03149649feeb33`  
		Last Modified: Sat, 28 Apr 2018 19:16:00 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab35162d4a9d9524a78efe64be547fa924b3c8853e09e95ca0d2c1b01f48c7ce`  
		Last Modified: Sat, 28 Apr 2018 19:15:59 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64561afd76c357cc76b51b27e64b096134ffe27288c11403d484892a4f9335db`  
		Last Modified: Sat, 28 Apr 2018 19:16:13 GMT  
		Size: 58.1 MB (58121364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fc4735ec0f82b6021980d09ed5c27328fc042b001fbfff56615887f86234d`  
		Last Modified: Sat, 28 Apr 2018 19:15:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cb2118ace6ac998cef07cf2d88bb2041bb60ea93677b899c7a72a23062c60b`  
		Last Modified: Sat, 28 Apr 2018 19:15:58 GMT  
		Size: 2.5 MB (2455964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141fdf7b0ff6a4230e0646afc3fcc8268b5520f44f378afa92a8e15f1890c81`  
		Last Modified: Sat, 28 Apr 2018 19:16:21 GMT  
		Size: 100.2 MB (100200330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01bc039567d54b9e7e4b8f6c1a1fffeb70c7a77059ec680326c57074e080fdd`  
		Last Modified: Sat, 28 Apr 2018 19:15:56 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:6ae1ff981222f392f9f345719bcb16a8a164958a52b8fcabf8b51819f481d8de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264594776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:332d0dfca7c28c6d6dc53f358c97dfd7ad427f27197f53a11cc634a997fa8396`
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
# Sat, 28 Apr 2018 15:34:25 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:34:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:37:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:37:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:37:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:37:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:37:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:37:31 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 21:04:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 21:04:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:04:44 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 21:04:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 21:04:46 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 21:04:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 21:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:05:23 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 21:05:24 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 21:05:24 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 21:05:24 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 21:05:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 21:09:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 21:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 21:09:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 21:10:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 21:10:00 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 21:10:01 GMT
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
	-	`sha256:54f7f93002cd60c79b6dc249efbc169cc4a3b64183f214e5a8d3e1b09bb9ba3f`  
		Last Modified: Sat, 28 Apr 2018 16:00:48 GMT  
		Size: 21.7 MB (21692872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734b556774547a03c8df92ef08a27c0588337aa688e81adb97539e7f2487541c`  
		Last Modified: Sat, 28 Apr 2018 16:00:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2fd5ac4c6a306b2fcfe75a5fe9131f87b52345c027c7c0e4dbd674cf91d0cf`  
		Last Modified: Sat, 28 Apr 2018 21:20:45 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e264f21f9e74a26bd6aa770ee2aa184a37027367b9461e5c315725244b0a4165`  
		Last Modified: Sat, 28 Apr 2018 21:20:50 GMT  
		Size: 13.1 MB (13129918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a47b988190bfc3d5d1067a0af0b784912144be8fbe1d6dd45e1d2a82aa6f7c`  
		Last Modified: Sat, 28 Apr 2018 21:20:42 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896d4814b08cd959c0dd976cb6031078ac294c756c22ad0070de3c1d98b3fc9`  
		Last Modified: Sat, 28 Apr 2018 21:20:43 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d38c197a1a837211e5a8e48f99b486b4a7256b61b95279a04366cc199666a19`  
		Last Modified: Sat, 28 Apr 2018 21:21:06 GMT  
		Size: 59.1 MB (59101017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447d1fc9ed78af5d2a626406c1a3e7b55c55497a4bc421cab5f04cbfa546c34f`  
		Last Modified: Sat, 28 Apr 2018 21:20:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92431964d34a3983f7fc92213695650a7a1ef3100c65aeb8ac0f33302603fea2`  
		Last Modified: Sat, 28 Apr 2018 21:20:42 GMT  
		Size: 2.5 MB (2455514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c9635cdb74b367680b19d880b956af0c2070a927dcc4883a2ca46272093d94`  
		Last Modified: Sat, 28 Apr 2018 21:21:14 GMT  
		Size: 103.3 MB (103286647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042994b29089f6cbcd189089261c67921a49e0542355f1092ed11db20430ac6b`  
		Last Modified: Sat, 28 Apr 2018 21:20:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:f36c446065be2c7049ab2b2ec44d9801a8513799377292bd0442deaa6d52eafc
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
$ docker pull redmine@sha256:6ba01b9a9326b041cd03d9dda3122a91cc3d3ad7dc4b89c0c384565c64ec5aba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251136512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a5c786cf16e2322574317d4ae7780447e574f6f00d7a4b2b698ef3e07672d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_MAJOR=2.2
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_VERSION=2.2.10
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 18:17:48 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 18:20:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 18:20:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 18:20:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 18:20:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 18:20:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 18:20:36 GMT
CMD ["irb"]
# Thu, 03 May 2018 04:03:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 04:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 04:03:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 04:03:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 04:03:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 04:03:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 04:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 04:04:08 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 04:04:08 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 04:04:09 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 03 May 2018 04:04:09 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 03 May 2018 04:04:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 04:06:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 04:06:42 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 04:06:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 04:06:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 04:06:43 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 04:06:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5e30b5a928387df8c3fac1a9d7bf8276a0190e8ae6797787f41171461a087d`  
		Last Modified: Sun, 29 Apr 2018 20:52:25 GMT  
		Size: 31.9 MB (31895331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67685516a13e343f9b9a7ca6bb249f03d930394c6ade1d8684cea56a2fe2479c`  
		Last Modified: Sun, 29 Apr 2018 20:52:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95ab6cd1d9872216bc791dc8b12cf4f085221e802c369a5eac681947e7af1a9`  
		Last Modified: Thu, 03 May 2018 05:07:32 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd98ba0b559b4c4cc74624bfb502d5374c9bff0c8aaa98fd66b82beba24dcfdd`  
		Last Modified: Thu, 03 May 2018 05:07:35 GMT  
		Size: 13.0 MB (12968186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb5cab354161775922503398ada9e0131399a7226a77333ca80c2d9fe524fb7`  
		Last Modified: Thu, 03 May 2018 05:07:30 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d438696748c173942fea6001a8dce40fdb64982b270a054a9a50510414a02f52`  
		Last Modified: Thu, 03 May 2018 05:07:29 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad9fb48b6a3def0ad0d84df09360006094a82d5bc329fa1f8a3e208d8590bb6`  
		Last Modified: Thu, 03 May 2018 05:07:45 GMT  
		Size: 59.3 MB (59259825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad25b504f1db65c928a2007b275d569a7506385bd542e82b6c5d66c16e2a40b`  
		Last Modified: Thu, 03 May 2018 05:07:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e031949fcb4d5749e3959a7d6081a1bd8f03334eba299cac7da970e41aedca`  
		Last Modified: Thu, 03 May 2018 05:07:30 GMT  
		Size: 2.4 MB (2393651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b353fae6d9f110214bdcf43a5fd888235cb71cb45acc9c37c494d4982742d403`  
		Last Modified: Thu, 03 May 2018 05:07:48 GMT  
		Size: 79.7 MB (79674396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987733b14be7b3abe9b3f29fe3917750e996b5d042200dc3b33b1e2d502ce8a0`  
		Last Modified: Thu, 03 May 2018 05:07:27 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:38c3154277c2c223e13db039df660d7b9c581d463f2cd13dffcbd465fd648a27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243482678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5d2ab76ce1481565bf03c30afe54837c322e1c7e884fa9131f300195633a13`
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
# Sat, 28 Apr 2018 12:20:27 GMT
ENV RUBY_MAJOR=2.2
# Sat, 28 Apr 2018 12:20:27 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 28 Apr 2018 12:20:27 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 28 Apr 2018 12:20:28 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 12:20:28 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 12:24:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 12:25:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 12:25:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 12:25:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:25:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 12:25:08 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 14:58:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 14:59:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:59:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 14:59:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 14:59:26 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 14:59:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 15:00:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:00:21 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 15:00:21 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 15:00:22 GMT
ENV REDMINE_VERSION=3.3.7
# Sat, 28 Apr 2018 15:00:22 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sat, 28 Apr 2018 15:00:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 15:04:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:04:47 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 15:04:47 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 15:04:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:04:48 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 15:04:48 GMT
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
	-	`sha256:0329a02814231db562efa67f7f565c93182bd0f21eea792cc9b3fe86e54d3c72`  
		Last Modified: Sat, 28 Apr 2018 12:35:31 GMT  
		Size: 30.8 MB (30816453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ee1f3e794c0906e50ccdd38f1dd9054c69233484261ef5bb17772d61d8b3de`  
		Last Modified: Sat, 28 Apr 2018 12:35:21 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343dd2e190883d1cbb7cba2a3dfacc4af534b5a875ae1bdc6fd38f54a055d197`  
		Last Modified: Sat, 28 Apr 2018 15:11:03 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65247de475e6ad8353b60f2b98fe7fc3e5bd3a3856c719f8c768a58ca4593f6d`  
		Last Modified: Sat, 28 Apr 2018 15:11:07 GMT  
		Size: 12.8 MB (12772346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e59122cee6300a478ceb82913972b37e7ada5bad2a06e61396a15858f91e209`  
		Last Modified: Sat, 28 Apr 2018 15:11:02 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9c132b90126af8fa9d368452003c206cd08f9c520421d8c5a3e71e0f5f77a1`  
		Last Modified: Sat, 28 Apr 2018 15:11:02 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1078bb36e60038e3085d89f47f53e6f9b2b99eb19be2a47b7ca25a95b0163e9c`  
		Last Modified: Sat, 28 Apr 2018 15:11:18 GMT  
		Size: 56.6 MB (56602368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f230b33192fa1e823b91e8f72e52984945a83d047b729f6f26fcf6736012e389`  
		Last Modified: Sat, 28 Apr 2018 15:10:59 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb8301404229d1b701e756c24f38c6b97ac07b761e6fdde31a7a3280e2fb507`  
		Last Modified: Sat, 28 Apr 2018 15:11:00 GMT  
		Size: 2.4 MB (2394060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719ead301f964af833abea1b942131090296e80bb4e5710323569ac5a8c488b1`  
		Last Modified: Sat, 28 Apr 2018 15:11:19 GMT  
		Size: 78.8 MB (78818103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c7da8951a9510f5ec158f4046e7f50e93be2265d69ffbe950ee5718fcf85b6`  
		Last Modified: Sat, 28 Apr 2018 15:10:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:574aebecb769527870dbdf9ae171c24414312e249430368db84da12074086e63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237679978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759c8074f2d3d5f0976587b9f3634ad9ce8e4831e0a4810f81b1e56424676f09`
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
# Sat, 28 Apr 2018 16:10:23 GMT
ENV RUBY_MAJOR=2.2
# Sat, 28 Apr 2018 16:10:23 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 28 Apr 2018 16:10:23 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 28 Apr 2018 16:10:23 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 16:10:24 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 16:14:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 16:14:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 16:14:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 16:14:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:14:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 16:14:34 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:44:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:44:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:44:51 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:44:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:44:53 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:44:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:45:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:45:49 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:45:49 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:45:49 GMT
ENV REDMINE_VERSION=3.3.7
# Sat, 28 Apr 2018 18:45:50 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sat, 28 Apr 2018 18:45:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 18:49:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 18:49:56 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 18:49:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 18:49:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:49:57 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 18:49:57 GMT
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
	-	`sha256:de61b23f825e2daa1796eb8d9d814df72df20e18df7a219c6f72d8528e92ff6d`  
		Last Modified: Sat, 28 Apr 2018 16:26:32 GMT  
		Size: 30.6 MB (30591984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ceb5b23cc74f1cda532cf11648ef9cc278b0585c6adaed65e323a0950466ec9`  
		Last Modified: Sat, 28 Apr 2018 16:26:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3606ed6a1f82beafb2a8c25c473ef53ff1d9b81fb7a35508bd7d959485df5a3`  
		Last Modified: Sat, 28 Apr 2018 18:55:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9d3714b19e9b6406e921046d436f8659d7cce5ca786e218df77ac72ddc3ef8`  
		Last Modified: Sat, 28 Apr 2018 18:56:00 GMT  
		Size: 12.6 MB (12629315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a4da01fde988bcf0cd9544377190a2c02ab1d051db8a7fa7a18723b6eebf3b`  
		Last Modified: Sat, 28 Apr 2018 18:55:54 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4094d8f723b03f12165b651db89201ad4038672bab9ae386581b389352f491`  
		Last Modified: Sat, 28 Apr 2018 18:55:54 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15307202eb7b241f62d650f49c1daa22eb6d49da75bb1b2858bc6c382dc7db17`  
		Last Modified: Sat, 28 Apr 2018 18:56:10 GMT  
		Size: 54.3 MB (54334114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a90061a7dd17efd2b90c0f0d723184a61363ddcf3677c286a8a37af4e969db4`  
		Last Modified: Sat, 28 Apr 2018 18:55:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9072926d82fccbbc5b323cc7846936f44dc77f73e79f3656ccc7902eb92d0c9d`  
		Last Modified: Sat, 28 Apr 2018 18:55:54 GMT  
		Size: 2.4 MB (2394063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83039911be8dc9833b0c802da6148cc2ad7bb3fa24c901b4f5e303c7ca0ac4b6`  
		Last Modified: Sat, 28 Apr 2018 18:56:12 GMT  
		Size: 78.3 MB (78270051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f131f0895dfd82be08b233bd375889ad315999c398fa37408f38d8dcd6c53`  
		Last Modified: Sat, 28 Apr 2018 18:55:52 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:350a58429461ebf443d6f565cef99859ee47eb3a91e0a86b2f0ad9c7bcd7afc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.3 MB (243312021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe2ac327238dcb1a58c8272d307dbf6ce92e9f1039423f031115b9684b5a805`
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
# Tue, 01 May 2018 09:40:39 GMT
ENV RUBY_MAJOR=2.2
# Tue, 01 May 2018 09:40:40 GMT
ENV RUBY_VERSION=2.2.10
# Tue, 01 May 2018 09:40:41 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Tue, 01 May 2018 09:40:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 01 May 2018 09:40:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 01 May 2018 09:48:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 01 May 2018 09:48:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 May 2018 09:48:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 May 2018 09:48:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 09:48:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 May 2018 09:48:54 GMT
CMD ["irb"]
# Tue, 01 May 2018 21:39:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 May 2018 21:40:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:40:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 21:40:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 May 2018 21:40:21 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 01 May 2018 21:40:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 May 2018 21:43:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:43:47 GMT
ENV RAILS_ENV=production
# Tue, 01 May 2018 21:43:50 GMT
WORKDIR /usr/src/redmine
# Tue, 01 May 2018 21:43:52 GMT
ENV REDMINE_VERSION=3.3.7
# Tue, 01 May 2018 21:43:55 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Tue, 01 May 2018 21:44:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 May 2018 21:54:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 21:54:25 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 May 2018 21:54:26 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 01 May 2018 21:54:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 May 2018 21:54:28 GMT
EXPOSE 3000/tcp
# Tue, 01 May 2018 21:54:29 GMT
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
	-	`sha256:8e4093181861a2ce405a219be8f797152c557b45f687735588fffbdcce302d70`  
		Last Modified: Tue, 01 May 2018 09:58:36 GMT  
		Size: 32.0 MB (32005053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbc163534b5c60c4e64ca3727a7e620e0d1d479e3a30a4b2548fa918c2f02b5`  
		Last Modified: Tue, 01 May 2018 09:58:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf685ef6bb3fc0f59ec3f4bd08d55cc4ea56e1c537a0eac6a3dba1f5a8c330e6`  
		Last Modified: Tue, 01 May 2018 22:08:44 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eda26833c7b560d3ad83055ac84cf61e0ebdb92911435d9393b2909b34b79d`  
		Last Modified: Tue, 01 May 2018 22:08:48 GMT  
		Size: 12.9 MB (12940778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657f80c431e92c2c947ad843a692497fb74591df528180fb5d894165fa152962`  
		Last Modified: Tue, 01 May 2018 22:08:42 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a074bc0ee32b2b778bff09d94076debec6a18dfe98abef51f2776422d584187a`  
		Last Modified: Tue, 01 May 2018 22:08:42 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc77e18707ca3925098230c6966871390b545e88a0437749ec7e58bd28834d0`  
		Last Modified: Tue, 01 May 2018 22:09:00 GMT  
		Size: 55.8 MB (55778375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac06b1a7d87560b2d0adbfd0f0fba1b7216f0a7b05b9e6dd7878aa032764532`  
		Last Modified: Tue, 01 May 2018 22:08:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a6c901b565178390ea16d4961d36641f71cd20e8434acb13bebaaa7d2a0067`  
		Last Modified: Tue, 01 May 2018 22:08:41 GMT  
		Size: 2.4 MB (2393658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fab37a9cf1255ff5fe0a247a73387cd9658896c16f2bfea7eacc367e9a43f4`  
		Last Modified: Tue, 01 May 2018 22:09:05 GMT  
		Size: 78.9 MB (78922971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363dce5509f1faac0ba2ebc10ec45a05eb132f79c4df92b47319275aecd6caf9`  
		Last Modified: Tue, 01 May 2018 22:08:40 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:c1c212ca0be54bd64efcd549389941fdcee29ab81b2dc99cc6cbe9438a037eb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.5 MB (253490241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f923d03148f69a3afe632996b6c6575e6e7b005b977acaf974c5fa427c92750`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:49:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:49:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 18:12:43 GMT
ENV RUBY_MAJOR=2.2
# Sat, 28 Apr 2018 18:12:43 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 28 Apr 2018 18:12:43 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 28 Apr 2018 18:12:43 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 18:12:44 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 18:16:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 18:16:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 18:16:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 18:16:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 18:16:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 18:16:02 GMT
CMD ["irb"]
# Sun, 29 Apr 2018 00:37:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 29 Apr 2018 00:37:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:37:55 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 00:37:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 29 Apr 2018 00:37:58 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 29 Apr 2018 00:38:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 29 Apr 2018 00:38:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:38:47 GMT
ENV RAILS_ENV=production
# Sun, 29 Apr 2018 00:38:48 GMT
WORKDIR /usr/src/redmine
# Sun, 29 Apr 2018 00:38:48 GMT
ENV REDMINE_VERSION=3.3.7
# Sun, 29 Apr 2018 00:38:48 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sun, 29 Apr 2018 00:38:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 29 Apr 2018 00:41:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 29 Apr 2018 00:41:39 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 29 Apr 2018 00:41:39 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 29 Apr 2018 00:41:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 00:41:40 GMT
EXPOSE 3000/tcp
# Sun, 29 Apr 2018 00:41:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ed54143c8d969665b70b41c179634296606ed56f18640b853067b9f47f79d`  
		Last Modified: Sat, 28 Apr 2018 18:20:31 GMT  
		Size: 14.6 MB (14636348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e568153250a765bd784dbe6a36fbb20db21f74060ecc604b1faf59fcf15b76`  
		Last Modified: Sat, 28 Apr 2018 18:20:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84792c64dbf97906eca7664a1a05bb72ef475662874b42ac85ad43f33930482`  
		Last Modified: Sat, 28 Apr 2018 18:23:48 GMT  
		Size: 29.4 MB (29363689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c2ece93ecadc9f5c19f1177a47438259ea9a87b404b36c6d9c14c8ae76aa51`  
		Last Modified: Sat, 28 Apr 2018 18:23:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0203ab539a862fecd02839d620b9195c471003f63e43f3c2c42db4c080baed17`  
		Last Modified: Sun, 29 Apr 2018 00:47:58 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c0d2ee31b51051e5f979d9c9c7ee4f829ca48ebb59063d7c1b37cf9143c730`  
		Last Modified: Sun, 29 Apr 2018 00:48:03 GMT  
		Size: 13.1 MB (13102786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f359664e87f551d9b157ffeda68b9e91b0352e3bb5d5cc4837b4d4a238d03f1`  
		Last Modified: Sun, 29 Apr 2018 00:47:58 GMT  
		Size: 480.6 KB (480573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad80228a9777516ea02cb34ad5cb07a70ac16b2622974507550adf929b36d569`  
		Last Modified: Sun, 29 Apr 2018 00:47:58 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8375187181b19def372f91a68826be106cc251cfa1647c75e9502b6a8fbe9bc5`  
		Last Modified: Sun, 29 Apr 2018 00:48:21 GMT  
		Size: 60.1 MB (60137186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2daa6a2703d29fc1952a8db45872a3ba7871614b2e1c42cb1d1f4c941d8c0111`  
		Last Modified: Sun, 29 Apr 2018 00:47:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2c1c75ade858c08f7aef87216ca2c9d622f0de4f39f9086a810cc131850d19`  
		Last Modified: Sun, 29 Apr 2018 00:48:04 GMT  
		Size: 2.4 MB (2393657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a19c545ae08841d272b8c8e59654bbdce401210edd280af1889658f677a15`  
		Last Modified: Sun, 29 Apr 2018 00:48:22 GMT  
		Size: 78.9 MB (78876263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1227f229f5d15259293174e8a5768b46e716f6178982bc379d88ceeb57296b52`  
		Last Modified: Sun, 29 Apr 2018 00:47:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:ef95476e058382ed3a1c57458c436e01bf630f5ba91d303472db962a45f9fbff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250321152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46da7716ffa9691adb729cad4e09456c8ecb8c1e35dc5a92674e2414947e7e4c`
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
# Sat, 28 Apr 2018 11:58:17 GMT
ENV RUBY_MAJOR=2.2
# Sat, 28 Apr 2018 11:58:18 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 28 Apr 2018 11:58:19 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 28 Apr 2018 11:58:20 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:58:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 12:07:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 12:07:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 12:07:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 12:07:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:07:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 12:07:19 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:55:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:56:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:56:42 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:56:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:56:47 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:56:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:59:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:59:05 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:59:06 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:59:07 GMT
ENV REDMINE_VERSION=3.3.7
# Sat, 28 Apr 2018 18:59:07 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sat, 28 Apr 2018 18:59:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 19:07:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 19:07:06 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 19:07:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 19:07:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 19:07:14 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 19:07:15 GMT
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
	-	`sha256:eb67319d89d225baa0f079d642520c5745969269b57500c463840100f8214911`  
		Last Modified: Sat, 28 Apr 2018 12:20:04 GMT  
		Size: 32.9 MB (32885566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4830971ae05a320a6223a7ecbee83b62588fe89991c69389cd852b8b37be3c2`  
		Last Modified: Sat, 28 Apr 2018 12:19:53 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6663baa5b4b18d0e72cf1b420256f9cf11b6852c48f0eb440b36c622179f49`  
		Last Modified: Sat, 28 Apr 2018 19:17:04 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9eec79a22dda1b62c433c592eb4b443799470a037437406dd2118829babd33e`  
		Last Modified: Sat, 28 Apr 2018 19:17:08 GMT  
		Size: 13.1 MB (13113522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457e83482cd5517cfa5ad2246a6545e1950323123df772f7cf826472f5e04d0b`  
		Last Modified: Sat, 28 Apr 2018 19:17:02 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82151d8d9794835809d20e3c7ba33428af553a4dd2611cad018ce08c73a0b9d4`  
		Last Modified: Sat, 28 Apr 2018 19:17:01 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2b3c5f3b71265b14dc82914e305784a71c0f72991bd0fea4c05daccc5f579f`  
		Last Modified: Sat, 28 Apr 2018 19:17:19 GMT  
		Size: 58.1 MB (58121368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3080872dbdd825af281f12772df774a30962f700adc72f79738370cd502e6a7b`  
		Last Modified: Sat, 28 Apr 2018 19:16:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f9a4d7838faff83577af35252652ba86bdf7818d8bae8c1d245c7a4e738ff2`  
		Last Modified: Sat, 28 Apr 2018 19:17:00 GMT  
		Size: 2.4 MB (2394063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790322d6fb78340a6820bbfe9c319438fa930c706c2982536bc16407589de880`  
		Last Modified: Sat, 28 Apr 2018 19:17:21 GMT  
		Size: 79.8 MB (79792902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e510f19b5588e479d60c7c7457b3e1155d7ead3bb9a141bf92a3f19da1004692`  
		Last Modified: Sat, 28 Apr 2018 19:16:59 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:8c3e3a63eb26345818f4b85810003547470ffc1402857a52302a760a77511034
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257052484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e941f1cb92a610b0861361965002eaa47c9f8b628308388d9ba214758e44d1c4`
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
# Sat, 28 Apr 2018 15:52:59 GMT
ENV RUBY_MAJOR=2.2
# Sat, 28 Apr 2018 15:52:59 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 28 Apr 2018 15:53:00 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 28 Apr 2018 15:53:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:53:00 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:55:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:55:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:55:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:55:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:55:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:55:52 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 21:10:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 21:10:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:10:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 21:10:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 21:10:48 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 21:10:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 21:11:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:11:49 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 21:11:50 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 21:11:50 GMT
ENV REDMINE_VERSION=3.3.7
# Sat, 28 Apr 2018 21:11:51 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sat, 28 Apr 2018 21:12:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 21:15:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 21:15:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 21:15:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 21:15:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 21:15:55 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 21:15:56 GMT
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
	-	`sha256:2e5134166951d18bf74bcce43f9f9ee322369ae9cbefe0d51754ed952872d132`  
		Last Modified: Sat, 28 Apr 2018 16:04:41 GMT  
		Size: 35.5 MB (35546500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065d953f7c5ed0d7f66562247ae7b0e254213181e7973f8a5f28f60bb7afa616`  
		Last Modified: Sat, 28 Apr 2018 16:04:33 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd8d24ab4c52bfe856d0d23f9084f55462ee32a00661a37b6c69c3a094b1374`  
		Last Modified: Sat, 28 Apr 2018 21:22:03 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97422dbde914cab71a8c968f8a86992ef5b5f98871b668ab76913bb1e0165376`  
		Last Modified: Sat, 28 Apr 2018 21:22:06 GMT  
		Size: 13.1 MB (13129956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b2d4df40c850016f6c3e70b75c884f71aa310ba591567b7f262532cc5c8bb3`  
		Last Modified: Sat, 28 Apr 2018 21:22:02 GMT  
		Size: 486.8 KB (486824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fa8494f2ae44975606cd7d61f8ee960f34d7f931d96b120596cad66cefd920`  
		Last Modified: Sat, 28 Apr 2018 21:22:01 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec80ab3bdabfb3778ed35245d49def6ebdeccf2fe2196f2f4eed0e9c9c3f05c8`  
		Last Modified: Sat, 28 Apr 2018 21:22:18 GMT  
		Size: 59.1 MB (59101466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc5d91d0a7b999c93174bd7333b7da394e8f3267139320ecb9a1c71e751ae3`  
		Last Modified: Sat, 28 Apr 2018 21:22:00 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b2103a4b74cbfa99df3942c8857863049c21f95e602992772da8129ff2f361`  
		Last Modified: Sat, 28 Apr 2018 21:22:02 GMT  
		Size: 2.4 MB (2393657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f08ca306e81340c64879728c3381f60718ba6004795193b6b5e28b7d01a98b`  
		Last Modified: Sat, 28 Apr 2018 21:22:21 GMT  
		Size: 82.0 MB (81952092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2abf58c8a9fbbe6be43dbcc2db176841158973dc6013604b4ec4ed0af7d9291`  
		Last Modified: Sat, 28 Apr 2018 21:22:00 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.7`

```console
$ docker pull redmine@sha256:f36c446065be2c7049ab2b2ec44d9801a8513799377292bd0442deaa6d52eafc
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

### `redmine:3.3.7` - linux; amd64

```console
$ docker pull redmine@sha256:6ba01b9a9326b041cd03d9dda3122a91cc3d3ad7dc4b89c0c384565c64ec5aba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251136512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a5c786cf16e2322574317d4ae7780447e574f6f00d7a4b2b698ef3e07672d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_MAJOR=2.2
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_VERSION=2.2.10
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 18:17:48 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 18:20:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 18:20:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 18:20:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 18:20:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 18:20:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 18:20:36 GMT
CMD ["irb"]
# Thu, 03 May 2018 04:03:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 04:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 04:03:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 04:03:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 04:03:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 04:03:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 04:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 04:04:08 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 04:04:08 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 04:04:09 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 03 May 2018 04:04:09 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 03 May 2018 04:04:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 04:06:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 04:06:42 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 04:06:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 04:06:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 04:06:43 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 04:06:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5e30b5a928387df8c3fac1a9d7bf8276a0190e8ae6797787f41171461a087d`  
		Last Modified: Sun, 29 Apr 2018 20:52:25 GMT  
		Size: 31.9 MB (31895331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67685516a13e343f9b9a7ca6bb249f03d930394c6ade1d8684cea56a2fe2479c`  
		Last Modified: Sun, 29 Apr 2018 20:52:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95ab6cd1d9872216bc791dc8b12cf4f085221e802c369a5eac681947e7af1a9`  
		Last Modified: Thu, 03 May 2018 05:07:32 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd98ba0b559b4c4cc74624bfb502d5374c9bff0c8aaa98fd66b82beba24dcfdd`  
		Last Modified: Thu, 03 May 2018 05:07:35 GMT  
		Size: 13.0 MB (12968186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb5cab354161775922503398ada9e0131399a7226a77333ca80c2d9fe524fb7`  
		Last Modified: Thu, 03 May 2018 05:07:30 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d438696748c173942fea6001a8dce40fdb64982b270a054a9a50510414a02f52`  
		Last Modified: Thu, 03 May 2018 05:07:29 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad9fb48b6a3def0ad0d84df09360006094a82d5bc329fa1f8a3e208d8590bb6`  
		Last Modified: Thu, 03 May 2018 05:07:45 GMT  
		Size: 59.3 MB (59259825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad25b504f1db65c928a2007b275d569a7506385bd542e82b6c5d66c16e2a40b`  
		Last Modified: Thu, 03 May 2018 05:07:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e031949fcb4d5749e3959a7d6081a1bd8f03334eba299cac7da970e41aedca`  
		Last Modified: Thu, 03 May 2018 05:07:30 GMT  
		Size: 2.4 MB (2393651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b353fae6d9f110214bdcf43a5fd888235cb71cb45acc9c37c494d4982742d403`  
		Last Modified: Thu, 03 May 2018 05:07:48 GMT  
		Size: 79.7 MB (79674396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987733b14be7b3abe9b3f29fe3917750e996b5d042200dc3b33b1e2d502ce8a0`  
		Last Modified: Thu, 03 May 2018 05:07:27 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; arm variant v5

```console
$ docker pull redmine@sha256:38c3154277c2c223e13db039df660d7b9c581d463f2cd13dffcbd465fd648a27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243482678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5d2ab76ce1481565bf03c30afe54837c322e1c7e884fa9131f300195633a13`
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
# Sat, 28 Apr 2018 12:20:27 GMT
ENV RUBY_MAJOR=2.2
# Sat, 28 Apr 2018 12:20:27 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 28 Apr 2018 12:20:27 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 28 Apr 2018 12:20:28 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 12:20:28 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 12:24:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 12:25:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 12:25:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 12:25:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:25:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 12:25:08 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 14:58:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 14:59:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:59:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 14:59:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 14:59:26 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 14:59:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 15:00:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:00:21 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 15:00:21 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 15:00:22 GMT
ENV REDMINE_VERSION=3.3.7
# Sat, 28 Apr 2018 15:00:22 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sat, 28 Apr 2018 15:00:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 15:04:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 15:04:47 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 15:04:47 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 15:04:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:04:48 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 15:04:48 GMT
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
	-	`sha256:0329a02814231db562efa67f7f565c93182bd0f21eea792cc9b3fe86e54d3c72`  
		Last Modified: Sat, 28 Apr 2018 12:35:31 GMT  
		Size: 30.8 MB (30816453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ee1f3e794c0906e50ccdd38f1dd9054c69233484261ef5bb17772d61d8b3de`  
		Last Modified: Sat, 28 Apr 2018 12:35:21 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343dd2e190883d1cbb7cba2a3dfacc4af534b5a875ae1bdc6fd38f54a055d197`  
		Last Modified: Sat, 28 Apr 2018 15:11:03 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65247de475e6ad8353b60f2b98fe7fc3e5bd3a3856c719f8c768a58ca4593f6d`  
		Last Modified: Sat, 28 Apr 2018 15:11:07 GMT  
		Size: 12.8 MB (12772346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e59122cee6300a478ceb82913972b37e7ada5bad2a06e61396a15858f91e209`  
		Last Modified: Sat, 28 Apr 2018 15:11:02 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9c132b90126af8fa9d368452003c206cd08f9c520421d8c5a3e71e0f5f77a1`  
		Last Modified: Sat, 28 Apr 2018 15:11:02 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1078bb36e60038e3085d89f47f53e6f9b2b99eb19be2a47b7ca25a95b0163e9c`  
		Last Modified: Sat, 28 Apr 2018 15:11:18 GMT  
		Size: 56.6 MB (56602368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f230b33192fa1e823b91e8f72e52984945a83d047b729f6f26fcf6736012e389`  
		Last Modified: Sat, 28 Apr 2018 15:10:59 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb8301404229d1b701e756c24f38c6b97ac07b761e6fdde31a7a3280e2fb507`  
		Last Modified: Sat, 28 Apr 2018 15:11:00 GMT  
		Size: 2.4 MB (2394060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719ead301f964af833abea1b942131090296e80bb4e5710323569ac5a8c488b1`  
		Last Modified: Sat, 28 Apr 2018 15:11:19 GMT  
		Size: 78.8 MB (78818103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c7da8951a9510f5ec158f4046e7f50e93be2265d69ffbe950ee5718fcf85b6`  
		Last Modified: Sat, 28 Apr 2018 15:10:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; arm variant v7

```console
$ docker pull redmine@sha256:574aebecb769527870dbdf9ae171c24414312e249430368db84da12074086e63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237679978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759c8074f2d3d5f0976587b9f3634ad9ce8e4831e0a4810f81b1e56424676f09`
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
# Sat, 28 Apr 2018 16:10:23 GMT
ENV RUBY_MAJOR=2.2
# Sat, 28 Apr 2018 16:10:23 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 28 Apr 2018 16:10:23 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 28 Apr 2018 16:10:23 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 16:10:24 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 16:14:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 16:14:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 16:14:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 16:14:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:14:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 16:14:34 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:44:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:44:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:44:51 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:44:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:44:53 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:44:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:45:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:45:49 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:45:49 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:45:49 GMT
ENV REDMINE_VERSION=3.3.7
# Sat, 28 Apr 2018 18:45:50 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sat, 28 Apr 2018 18:45:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 18:49:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 18:49:56 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 18:49:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 18:49:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:49:57 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 18:49:57 GMT
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
	-	`sha256:de61b23f825e2daa1796eb8d9d814df72df20e18df7a219c6f72d8528e92ff6d`  
		Last Modified: Sat, 28 Apr 2018 16:26:32 GMT  
		Size: 30.6 MB (30591984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ceb5b23cc74f1cda532cf11648ef9cc278b0585c6adaed65e323a0950466ec9`  
		Last Modified: Sat, 28 Apr 2018 16:26:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3606ed6a1f82beafb2a8c25c473ef53ff1d9b81fb7a35508bd7d959485df5a3`  
		Last Modified: Sat, 28 Apr 2018 18:55:55 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9d3714b19e9b6406e921046d436f8659d7cce5ca786e218df77ac72ddc3ef8`  
		Last Modified: Sat, 28 Apr 2018 18:56:00 GMT  
		Size: 12.6 MB (12629315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a4da01fde988bcf0cd9544377190a2c02ab1d051db8a7fa7a18723b6eebf3b`  
		Last Modified: Sat, 28 Apr 2018 18:55:54 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4094d8f723b03f12165b651db89201ad4038672bab9ae386581b389352f491`  
		Last Modified: Sat, 28 Apr 2018 18:55:54 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15307202eb7b241f62d650f49c1daa22eb6d49da75bb1b2858bc6c382dc7db17`  
		Last Modified: Sat, 28 Apr 2018 18:56:10 GMT  
		Size: 54.3 MB (54334114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a90061a7dd17efd2b90c0f0d723184a61363ddcf3677c286a8a37af4e969db4`  
		Last Modified: Sat, 28 Apr 2018 18:55:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9072926d82fccbbc5b323cc7846936f44dc77f73e79f3656ccc7902eb92d0c9d`  
		Last Modified: Sat, 28 Apr 2018 18:55:54 GMT  
		Size: 2.4 MB (2394063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83039911be8dc9833b0c802da6148cc2ad7bb3fa24c901b4f5e303c7ca0ac4b6`  
		Last Modified: Sat, 28 Apr 2018 18:56:12 GMT  
		Size: 78.3 MB (78270051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f131f0895dfd82be08b233bd375889ad315999c398fa37408f38d8dcd6c53`  
		Last Modified: Sat, 28 Apr 2018 18:55:52 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:350a58429461ebf443d6f565cef99859ee47eb3a91e0a86b2f0ad9c7bcd7afc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.3 MB (243312021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe2ac327238dcb1a58c8272d307dbf6ce92e9f1039423f031115b9684b5a805`
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
# Tue, 01 May 2018 09:40:39 GMT
ENV RUBY_MAJOR=2.2
# Tue, 01 May 2018 09:40:40 GMT
ENV RUBY_VERSION=2.2.10
# Tue, 01 May 2018 09:40:41 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Tue, 01 May 2018 09:40:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 01 May 2018 09:40:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 01 May 2018 09:48:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 01 May 2018 09:48:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 May 2018 09:48:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 May 2018 09:48:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 09:48:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 May 2018 09:48:54 GMT
CMD ["irb"]
# Tue, 01 May 2018 21:39:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 May 2018 21:40:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:40:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 21:40:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 May 2018 21:40:21 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 01 May 2018 21:40:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 May 2018 21:43:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:43:47 GMT
ENV RAILS_ENV=production
# Tue, 01 May 2018 21:43:50 GMT
WORKDIR /usr/src/redmine
# Tue, 01 May 2018 21:43:52 GMT
ENV REDMINE_VERSION=3.3.7
# Tue, 01 May 2018 21:43:55 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Tue, 01 May 2018 21:44:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 May 2018 21:54:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 21:54:25 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 May 2018 21:54:26 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 01 May 2018 21:54:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 May 2018 21:54:28 GMT
EXPOSE 3000/tcp
# Tue, 01 May 2018 21:54:29 GMT
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
	-	`sha256:8e4093181861a2ce405a219be8f797152c557b45f687735588fffbdcce302d70`  
		Last Modified: Tue, 01 May 2018 09:58:36 GMT  
		Size: 32.0 MB (32005053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbc163534b5c60c4e64ca3727a7e620e0d1d479e3a30a4b2548fa918c2f02b5`  
		Last Modified: Tue, 01 May 2018 09:58:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf685ef6bb3fc0f59ec3f4bd08d55cc4ea56e1c537a0eac6a3dba1f5a8c330e6`  
		Last Modified: Tue, 01 May 2018 22:08:44 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eda26833c7b560d3ad83055ac84cf61e0ebdb92911435d9393b2909b34b79d`  
		Last Modified: Tue, 01 May 2018 22:08:48 GMT  
		Size: 12.9 MB (12940778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657f80c431e92c2c947ad843a692497fb74591df528180fb5d894165fa152962`  
		Last Modified: Tue, 01 May 2018 22:08:42 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a074bc0ee32b2b778bff09d94076debec6a18dfe98abef51f2776422d584187a`  
		Last Modified: Tue, 01 May 2018 22:08:42 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc77e18707ca3925098230c6966871390b545e88a0437749ec7e58bd28834d0`  
		Last Modified: Tue, 01 May 2018 22:09:00 GMT  
		Size: 55.8 MB (55778375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac06b1a7d87560b2d0adbfd0f0fba1b7216f0a7b05b9e6dd7878aa032764532`  
		Last Modified: Tue, 01 May 2018 22:08:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a6c901b565178390ea16d4961d36641f71cd20e8434acb13bebaaa7d2a0067`  
		Last Modified: Tue, 01 May 2018 22:08:41 GMT  
		Size: 2.4 MB (2393658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fab37a9cf1255ff5fe0a247a73387cd9658896c16f2bfea7eacc367e9a43f4`  
		Last Modified: Tue, 01 May 2018 22:09:05 GMT  
		Size: 78.9 MB (78922971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363dce5509f1faac0ba2ebc10ec45a05eb132f79c4df92b47319275aecd6caf9`  
		Last Modified: Tue, 01 May 2018 22:08:40 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; 386

```console
$ docker pull redmine@sha256:c1c212ca0be54bd64efcd549389941fdcee29ab81b2dc99cc6cbe9438a037eb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.5 MB (253490241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f923d03148f69a3afe632996b6c6575e6e7b005b977acaf974c5fa427c92750`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:49:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:49:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 18:12:43 GMT
ENV RUBY_MAJOR=2.2
# Sat, 28 Apr 2018 18:12:43 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 28 Apr 2018 18:12:43 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 28 Apr 2018 18:12:43 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 18:12:44 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 18:16:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 18:16:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 18:16:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 18:16:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 18:16:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 18:16:02 GMT
CMD ["irb"]
# Sun, 29 Apr 2018 00:37:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 29 Apr 2018 00:37:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:37:55 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 00:37:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 29 Apr 2018 00:37:58 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 29 Apr 2018 00:38:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 29 Apr 2018 00:38:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:38:47 GMT
ENV RAILS_ENV=production
# Sun, 29 Apr 2018 00:38:48 GMT
WORKDIR /usr/src/redmine
# Sun, 29 Apr 2018 00:38:48 GMT
ENV REDMINE_VERSION=3.3.7
# Sun, 29 Apr 2018 00:38:48 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sun, 29 Apr 2018 00:38:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 29 Apr 2018 00:41:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 29 Apr 2018 00:41:39 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 29 Apr 2018 00:41:39 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 29 Apr 2018 00:41:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 00:41:40 GMT
EXPOSE 3000/tcp
# Sun, 29 Apr 2018 00:41:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ed54143c8d969665b70b41c179634296606ed56f18640b853067b9f47f79d`  
		Last Modified: Sat, 28 Apr 2018 18:20:31 GMT  
		Size: 14.6 MB (14636348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e568153250a765bd784dbe6a36fbb20db21f74060ecc604b1faf59fcf15b76`  
		Last Modified: Sat, 28 Apr 2018 18:20:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84792c64dbf97906eca7664a1a05bb72ef475662874b42ac85ad43f33930482`  
		Last Modified: Sat, 28 Apr 2018 18:23:48 GMT  
		Size: 29.4 MB (29363689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c2ece93ecadc9f5c19f1177a47438259ea9a87b404b36c6d9c14c8ae76aa51`  
		Last Modified: Sat, 28 Apr 2018 18:23:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0203ab539a862fecd02839d620b9195c471003f63e43f3c2c42db4c080baed17`  
		Last Modified: Sun, 29 Apr 2018 00:47:58 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c0d2ee31b51051e5f979d9c9c7ee4f829ca48ebb59063d7c1b37cf9143c730`  
		Last Modified: Sun, 29 Apr 2018 00:48:03 GMT  
		Size: 13.1 MB (13102786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f359664e87f551d9b157ffeda68b9e91b0352e3bb5d5cc4837b4d4a238d03f1`  
		Last Modified: Sun, 29 Apr 2018 00:47:58 GMT  
		Size: 480.6 KB (480573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad80228a9777516ea02cb34ad5cb07a70ac16b2622974507550adf929b36d569`  
		Last Modified: Sun, 29 Apr 2018 00:47:58 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8375187181b19def372f91a68826be106cc251cfa1647c75e9502b6a8fbe9bc5`  
		Last Modified: Sun, 29 Apr 2018 00:48:21 GMT  
		Size: 60.1 MB (60137186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2daa6a2703d29fc1952a8db45872a3ba7871614b2e1c42cb1d1f4c941d8c0111`  
		Last Modified: Sun, 29 Apr 2018 00:47:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2c1c75ade858c08f7aef87216ca2c9d622f0de4f39f9086a810cc131850d19`  
		Last Modified: Sun, 29 Apr 2018 00:48:04 GMT  
		Size: 2.4 MB (2393657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a19c545ae08841d272b8c8e59654bbdce401210edd280af1889658f677a15`  
		Last Modified: Sun, 29 Apr 2018 00:48:22 GMT  
		Size: 78.9 MB (78876263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1227f229f5d15259293174e8a5768b46e716f6178982bc379d88ceeb57296b52`  
		Last Modified: Sun, 29 Apr 2018 00:47:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; ppc64le

```console
$ docker pull redmine@sha256:ef95476e058382ed3a1c57458c436e01bf630f5ba91d303472db962a45f9fbff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250321152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46da7716ffa9691adb729cad4e09456c8ecb8c1e35dc5a92674e2414947e7e4c`
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
# Sat, 28 Apr 2018 11:58:17 GMT
ENV RUBY_MAJOR=2.2
# Sat, 28 Apr 2018 11:58:18 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 28 Apr 2018 11:58:19 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 28 Apr 2018 11:58:20 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:58:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 12:07:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 12:07:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 12:07:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 12:07:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:07:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 12:07:19 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:55:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:56:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:56:42 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:56:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:56:47 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:56:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:59:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:59:05 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:59:06 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:59:07 GMT
ENV REDMINE_VERSION=3.3.7
# Sat, 28 Apr 2018 18:59:07 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sat, 28 Apr 2018 18:59:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 19:07:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 19:07:06 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 19:07:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 19:07:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 19:07:14 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 19:07:15 GMT
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
	-	`sha256:eb67319d89d225baa0f079d642520c5745969269b57500c463840100f8214911`  
		Last Modified: Sat, 28 Apr 2018 12:20:04 GMT  
		Size: 32.9 MB (32885566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4830971ae05a320a6223a7ecbee83b62588fe89991c69389cd852b8b37be3c2`  
		Last Modified: Sat, 28 Apr 2018 12:19:53 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6663baa5b4b18d0e72cf1b420256f9cf11b6852c48f0eb440b36c622179f49`  
		Last Modified: Sat, 28 Apr 2018 19:17:04 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9eec79a22dda1b62c433c592eb4b443799470a037437406dd2118829babd33e`  
		Last Modified: Sat, 28 Apr 2018 19:17:08 GMT  
		Size: 13.1 MB (13113522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457e83482cd5517cfa5ad2246a6545e1950323123df772f7cf826472f5e04d0b`  
		Last Modified: Sat, 28 Apr 2018 19:17:02 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82151d8d9794835809d20e3c7ba33428af553a4dd2611cad018ce08c73a0b9d4`  
		Last Modified: Sat, 28 Apr 2018 19:17:01 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2b3c5f3b71265b14dc82914e305784a71c0f72991bd0fea4c05daccc5f579f`  
		Last Modified: Sat, 28 Apr 2018 19:17:19 GMT  
		Size: 58.1 MB (58121368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3080872dbdd825af281f12772df774a30962f700adc72f79738370cd502e6a7b`  
		Last Modified: Sat, 28 Apr 2018 19:16:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f9a4d7838faff83577af35252652ba86bdf7818d8bae8c1d245c7a4e738ff2`  
		Last Modified: Sat, 28 Apr 2018 19:17:00 GMT  
		Size: 2.4 MB (2394063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790322d6fb78340a6820bbfe9c319438fa930c706c2982536bc16407589de880`  
		Last Modified: Sat, 28 Apr 2018 19:17:21 GMT  
		Size: 79.8 MB (79792902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e510f19b5588e479d60c7c7457b3e1155d7ead3bb9a141bf92a3f19da1004692`  
		Last Modified: Sat, 28 Apr 2018 19:16:59 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; s390x

```console
$ docker pull redmine@sha256:8c3e3a63eb26345818f4b85810003547470ffc1402857a52302a760a77511034
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257052484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e941f1cb92a610b0861361965002eaa47c9f8b628308388d9ba214758e44d1c4`
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
# Sat, 28 Apr 2018 15:52:59 GMT
ENV RUBY_MAJOR=2.2
# Sat, 28 Apr 2018 15:52:59 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 28 Apr 2018 15:53:00 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 28 Apr 2018 15:53:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:53:00 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:55:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:55:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:55:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:55:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:55:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:55:52 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 21:10:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 21:10:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:10:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 21:10:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 21:10:48 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 21:10:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 21:11:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:11:49 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 21:11:50 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 21:11:50 GMT
ENV REDMINE_VERSION=3.3.7
# Sat, 28 Apr 2018 21:11:51 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sat, 28 Apr 2018 21:12:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 21:15:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 21:15:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 21:15:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 21:15:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 21:15:55 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 21:15:56 GMT
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
	-	`sha256:2e5134166951d18bf74bcce43f9f9ee322369ae9cbefe0d51754ed952872d132`  
		Last Modified: Sat, 28 Apr 2018 16:04:41 GMT  
		Size: 35.5 MB (35546500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065d953f7c5ed0d7f66562247ae7b0e254213181e7973f8a5f28f60bb7afa616`  
		Last Modified: Sat, 28 Apr 2018 16:04:33 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd8d24ab4c52bfe856d0d23f9084f55462ee32a00661a37b6c69c3a094b1374`  
		Last Modified: Sat, 28 Apr 2018 21:22:03 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97422dbde914cab71a8c968f8a86992ef5b5f98871b668ab76913bb1e0165376`  
		Last Modified: Sat, 28 Apr 2018 21:22:06 GMT  
		Size: 13.1 MB (13129956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b2d4df40c850016f6c3e70b75c884f71aa310ba591567b7f262532cc5c8bb3`  
		Last Modified: Sat, 28 Apr 2018 21:22:02 GMT  
		Size: 486.8 KB (486824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fa8494f2ae44975606cd7d61f8ee960f34d7f931d96b120596cad66cefd920`  
		Last Modified: Sat, 28 Apr 2018 21:22:01 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec80ab3bdabfb3778ed35245d49def6ebdeccf2fe2196f2f4eed0e9c9c3f05c8`  
		Last Modified: Sat, 28 Apr 2018 21:22:18 GMT  
		Size: 59.1 MB (59101466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc5d91d0a7b999c93174bd7333b7da394e8f3267139320ecb9a1c71e751ae3`  
		Last Modified: Sat, 28 Apr 2018 21:22:00 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b2103a4b74cbfa99df3942c8857863049c21f95e602992772da8129ff2f361`  
		Last Modified: Sat, 28 Apr 2018 21:22:02 GMT  
		Size: 2.4 MB (2393657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f08ca306e81340c64879728c3381f60718ba6004795193b6b5e28b7d01a98b`  
		Last Modified: Sat, 28 Apr 2018 21:22:21 GMT  
		Size: 82.0 MB (81952092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2abf58c8a9fbbe6be43dbcc2db176841158973dc6013604b4ec4ed0af7d9291`  
		Last Modified: Sat, 28 Apr 2018 21:22:00 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.7-passenger`

```console
$ docker pull redmine@sha256:7e2bd59f7f0e7a12fd32365c4fd30d040a19596d6c6f55f8863217c797a8ab92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.7-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a347ed285893e6c65d93423a1649b9fe2ce12d62f4e6bfc15a5aa369c5e41bf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274337782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356ba59d1464c2eb33b35dc92339ffc25c3f609e8636a24ff7cdabce7fb577a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_MAJOR=2.2
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_VERSION=2.2.10
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 18:17:48 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 18:20:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 18:20:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 18:20:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 18:20:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 18:20:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 18:20:36 GMT
CMD ["irb"]
# Thu, 03 May 2018 04:03:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 04:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 04:03:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 04:03:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 04:03:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 04:03:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 04:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 04:04:08 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 04:04:08 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 04:04:09 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 03 May 2018 04:04:09 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 03 May 2018 04:04:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 04:06:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 04:06:42 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 04:06:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 04:06:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 04:06:43 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 04:06:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 21 May 2018 21:33:20 GMT
ENV PASSENGER_VERSION=5.3.1
# Mon, 21 May 2018 21:33:48 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 21 May 2018 21:33:50 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 21 May 2018 21:33:50 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5e30b5a928387df8c3fac1a9d7bf8276a0190e8ae6797787f41171461a087d`  
		Last Modified: Sun, 29 Apr 2018 20:52:25 GMT  
		Size: 31.9 MB (31895331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67685516a13e343f9b9a7ca6bb249f03d930394c6ade1d8684cea56a2fe2479c`  
		Last Modified: Sun, 29 Apr 2018 20:52:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95ab6cd1d9872216bc791dc8b12cf4f085221e802c369a5eac681947e7af1a9`  
		Last Modified: Thu, 03 May 2018 05:07:32 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd98ba0b559b4c4cc74624bfb502d5374c9bff0c8aaa98fd66b82beba24dcfdd`  
		Last Modified: Thu, 03 May 2018 05:07:35 GMT  
		Size: 13.0 MB (12968186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb5cab354161775922503398ada9e0131399a7226a77333ca80c2d9fe524fb7`  
		Last Modified: Thu, 03 May 2018 05:07:30 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d438696748c173942fea6001a8dce40fdb64982b270a054a9a50510414a02f52`  
		Last Modified: Thu, 03 May 2018 05:07:29 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad9fb48b6a3def0ad0d84df09360006094a82d5bc329fa1f8a3e208d8590bb6`  
		Last Modified: Thu, 03 May 2018 05:07:45 GMT  
		Size: 59.3 MB (59259825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad25b504f1db65c928a2007b275d569a7506385bd542e82b6c5d66c16e2a40b`  
		Last Modified: Thu, 03 May 2018 05:07:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e031949fcb4d5749e3959a7d6081a1bd8f03334eba299cac7da970e41aedca`  
		Last Modified: Thu, 03 May 2018 05:07:30 GMT  
		Size: 2.4 MB (2393651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b353fae6d9f110214bdcf43a5fd888235cb71cb45acc9c37c494d4982742d403`  
		Last Modified: Thu, 03 May 2018 05:07:48 GMT  
		Size: 79.7 MB (79674396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987733b14be7b3abe9b3f29fe3917750e996b5d042200dc3b33b1e2d502ce8a0`  
		Last Modified: Thu, 03 May 2018 05:07:27 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed8e00c0431eb09635d71ed2024c47fc42a353a5a21b085ae7b251868408ece`  
		Last Modified: Mon, 21 May 2018 21:35:27 GMT  
		Size: 18.7 MB (18742874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbdfede362f52fd839c43c19c5b24b473cad57dd8edb3093e1fe2d4204471a4`  
		Last Modified: Mon, 21 May 2018 21:35:22 GMT  
		Size: 4.5 MB (4458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:7e2bd59f7f0e7a12fd32365c4fd30d040a19596d6c6f55f8863217c797a8ab92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a347ed285893e6c65d93423a1649b9fe2ce12d62f4e6bfc15a5aa369c5e41bf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274337782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356ba59d1464c2eb33b35dc92339ffc25c3f609e8636a24ff7cdabce7fb577a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_MAJOR=2.2
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_VERSION=2.2.10
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sun, 29 Apr 2018 18:17:48 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 18:17:48 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 18:20:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 18:20:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 18:20:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 18:20:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 18:20:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 18:20:36 GMT
CMD ["irb"]
# Thu, 03 May 2018 04:03:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 04:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 04:03:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 04:03:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 04:03:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 04:03:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 04:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 04:04:08 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 04:04:08 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 04:04:09 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 03 May 2018 04:04:09 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 03 May 2018 04:04:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 04:06:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 04:06:42 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 04:06:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 04:06:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 04:06:43 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 04:06:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 21 May 2018 21:33:20 GMT
ENV PASSENGER_VERSION=5.3.1
# Mon, 21 May 2018 21:33:48 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 21 May 2018 21:33:50 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 21 May 2018 21:33:50 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5e30b5a928387df8c3fac1a9d7bf8276a0190e8ae6797787f41171461a087d`  
		Last Modified: Sun, 29 Apr 2018 20:52:25 GMT  
		Size: 31.9 MB (31895331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67685516a13e343f9b9a7ca6bb249f03d930394c6ade1d8684cea56a2fe2479c`  
		Last Modified: Sun, 29 Apr 2018 20:52:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95ab6cd1d9872216bc791dc8b12cf4f085221e802c369a5eac681947e7af1a9`  
		Last Modified: Thu, 03 May 2018 05:07:32 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd98ba0b559b4c4cc74624bfb502d5374c9bff0c8aaa98fd66b82beba24dcfdd`  
		Last Modified: Thu, 03 May 2018 05:07:35 GMT  
		Size: 13.0 MB (12968186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb5cab354161775922503398ada9e0131399a7226a77333ca80c2d9fe524fb7`  
		Last Modified: Thu, 03 May 2018 05:07:30 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d438696748c173942fea6001a8dce40fdb64982b270a054a9a50510414a02f52`  
		Last Modified: Thu, 03 May 2018 05:07:29 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad9fb48b6a3def0ad0d84df09360006094a82d5bc329fa1f8a3e208d8590bb6`  
		Last Modified: Thu, 03 May 2018 05:07:45 GMT  
		Size: 59.3 MB (59259825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad25b504f1db65c928a2007b275d569a7506385bd542e82b6c5d66c16e2a40b`  
		Last Modified: Thu, 03 May 2018 05:07:26 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e031949fcb4d5749e3959a7d6081a1bd8f03334eba299cac7da970e41aedca`  
		Last Modified: Thu, 03 May 2018 05:07:30 GMT  
		Size: 2.4 MB (2393651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b353fae6d9f110214bdcf43a5fd888235cb71cb45acc9c37c494d4982742d403`  
		Last Modified: Thu, 03 May 2018 05:07:48 GMT  
		Size: 79.7 MB (79674396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987733b14be7b3abe9b3f29fe3917750e996b5d042200dc3b33b1e2d502ce8a0`  
		Last Modified: Thu, 03 May 2018 05:07:27 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed8e00c0431eb09635d71ed2024c47fc42a353a5a21b085ae7b251868408ece`  
		Last Modified: Mon, 21 May 2018 21:35:27 GMT  
		Size: 18.7 MB (18742874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbdfede362f52fd839c43c19c5b24b473cad57dd8edb3093e1fe2d4204471a4`  
		Last Modified: Mon, 21 May 2018 21:35:22 GMT  
		Size: 4.5 MB (4458396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:4fd9db02bb4c9ef0db7bdaa69a0a580d312022291e2c12033061d346f9237a02
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
$ docker pull redmine@sha256:4c2a57dc3e52e13e352a823ec347261ac0fa2b1146284811f45c066bf3241e73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 MB (260461264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c639ff129295ee9db6eeee57500b44ffc9f3345a92d04038503019259dc5c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_MAJOR=2.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_VERSION=2.4.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 16:52:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 16:56:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 16:56:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 16:56:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 16:56:02 GMT
CMD ["irb"]
# Thu, 03 May 2018 03:42:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 03:42:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:42:30 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 03:42:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 03:42:35 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 03:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 03:43:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:43:21 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 03:43:22 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 03 May 2018 03:43:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 03:46:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 03:46:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 03:46:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 03:46:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 03:46:44 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 03:46:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db3df565eff555b355459a6eab150063cc3cb47228a16be397dcd5682cceef`  
		Last Modified: Sun, 29 Apr 2018 19:34:04 GMT  
		Size: 21.3 MB (21290189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6894497d0e25a0b6ba853acc05ff57b7e5cf50ab09c5a555175f848f73a6a6f`  
		Last Modified: Sun, 29 Apr 2018 19:33:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab58405acb4af2467d9f2e41bd812edf1b09a1d99fd045b574e0ffb73abb0978`  
		Last Modified: Thu, 03 May 2018 04:50:22 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe08ba54663f3b5b8eb59e07104cf2c7d842049116ab786185961a23ffa6d9e9`  
		Last Modified: Thu, 03 May 2018 04:50:25 GMT  
		Size: 13.0 MB (12968169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9638a0f0496cc4bc67b454bbe11d3609261ac96cd8942c7cdbab36fbc6317b`  
		Last Modified: Thu, 03 May 2018 04:50:21 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228f3e7522efdf39b46e17fb618d36c713bc927886448cc721c4c8fd5f7392a`  
		Last Modified: Thu, 03 May 2018 04:50:19 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb363dbd665cb3675a98b0979b74c1423708352849e83aa74149816621e582`  
		Last Modified: Thu, 03 May 2018 04:50:36 GMT  
		Size: 59.3 MB (59260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4ff67a7380b8f6cc6c6df1c1d83c480295c034a9998c7f7c5bb6d7761e306`  
		Last Modified: Thu, 03 May 2018 04:50:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3529dee0dc7fc5a6f710cb38b3250dafaa66984fcdf6268025910a27920458f4`  
		Last Modified: Thu, 03 May 2018 04:50:20 GMT  
		Size: 2.5 MB (2455510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b0278df283894547b54bce4068bfd8575a0fd0f07fd59f1bcca2a82d14dd9a`  
		Last Modified: Thu, 03 May 2018 04:50:49 GMT  
		Size: 99.5 MB (99541951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b05cb93487bb0ea3c06e61a58dfe253e6e934f9983e6974678086e7fd9843a3`  
		Last Modified: Thu, 03 May 2018 04:50:17 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:864532d60f84462ad0658587fa7d306f95c8bd07c279b1a26eaba469afad18bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253780789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd204c14eb723f0c0335056e99d7374520d8f5f3458dbd0787f82132e9dea888`
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
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:50:11 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:56:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:56:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:56:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:56:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:56:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:56:08 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 14:51:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 14:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:51:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 14:52:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 14:52:00 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 14:52:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 14:53:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:53:00 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 14:53:01 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 14:53:01 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 14:53:01 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 14:53:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 14:58:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 14:58:30 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 14:58:31 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 14:58:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 14:58:31 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 14:58:32 GMT
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
	-	`sha256:94a66a7ddb6901f1274cc0fa2c65eebfe5e235802df7937480b39418694484fa`  
		Last Modified: Sat, 28 Apr 2018 12:31:34 GMT  
		Size: 21.1 MB (21059024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524ccdf42ba2c4e3e4be2ee4fb5c10d4afc131477f2a3ab1709ece82adc5cb77`  
		Last Modified: Sat, 28 Apr 2018 12:31:26 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea7ea6cc4fe4dca1ff56cbef45c0a5ceab16298cc413b66ed67fe8ffb36091c`  
		Last Modified: Sat, 28 Apr 2018 15:09:59 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189f89a0552f22ef88a40ac59780f4cc23c75e920742fc1a98fc53dd10e12707`  
		Last Modified: Sat, 28 Apr 2018 15:10:02 GMT  
		Size: 12.8 MB (12772346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c8e504663da75271241ef58cda2443b8bf9cec707cd2f86712c81ed7b4b424`  
		Last Modified: Sat, 28 Apr 2018 15:09:59 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334211fc8b5a58957a63ccfe8be286e040109001f4e7f0d654fe09a5c93fd7a9`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 7.8 KB (7843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee71b3d8d29db4664db8e14b34aa74879bd363a825236c00c7c947d2ea79696`  
		Last Modified: Sat, 28 Apr 2018 15:10:15 GMT  
		Size: 56.6 MB (56602454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfd36a77679c41ae112206b6dca62385e3d69d3085a97338f74c6b01a040f43`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96557711b0f5518195be87e7056d581c2cb946e62432773b572a2c323b08bb0d`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 2.5 MB (2455970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399a4cb09acb6dd72dea3656268edbdd4f3e5001908facfc435b2effde2ba43b`  
		Last Modified: Sat, 28 Apr 2018 15:10:23 GMT  
		Size: 98.8 MB (98811650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3813e523333b4c92b2d134db7c78833e250acda17ad7aa4bfc182283b87b9`  
		Last Modified: Sat, 28 Apr 2018 15:09:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:827b3900f677badb0bf453abe9fbd2d7f26d6a1bfd158dcb01600e89c3d49183
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247792666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8ee74826e44aebb861336f2cb278630e13a11f76f05a83e2d9814ecc0d363f`
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
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:40:58 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:46:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:46:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:46:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:46:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:46:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:46:37 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:37:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:37:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:37:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:37:58 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:37:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:38:58 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:38:58 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:38:58 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 18:38:58 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 18:39:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 18:44:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 18:44:08 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 18:44:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 18:44:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:44:09 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 18:44:09 GMT
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
	-	`sha256:8740c938f0e769050ecd151d51397d1e23aeb49231b471b4e3382bc22d752c21`  
		Last Modified: Sat, 28 Apr 2018 16:21:25 GMT  
		Size: 20.9 MB (20925525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae6faa56e8d083c41a2a8dcc749447c36da0f335725f00fed8a7c2bf5066288`  
		Last Modified: Sat, 28 Apr 2018 16:21:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c60f740d556409484cd91ddb2f9d1c5cbe02c571a74a32e57235ac3e873bba4`  
		Last Modified: Sat, 28 Apr 2018 18:54:52 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2402ff103770c630c06407a473f973c5cde69f8cc7c3a60b7234c2808a6d46cc`  
		Last Modified: Sat, 28 Apr 2018 18:54:55 GMT  
		Size: 12.6 MB (12629290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c560cfda27777cd8b7fea9f828a23f70f4b0559a1b0c13d74fa02a4d0e09c8`  
		Last Modified: Sat, 28 Apr 2018 18:54:51 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454ba804480e1b3bfad5d5fffab39018aec3e51cba101aef400c2684a6f7ddd5`  
		Last Modified: Sat, 28 Apr 2018 18:54:51 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dea9987c404d67058f06dd9b0b771e3ee703c2495f7405b01e8483d8c471be`  
		Last Modified: Sat, 28 Apr 2018 18:55:05 GMT  
		Size: 54.3 MB (54334502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689e2020df6afdd4e6930e46e0af15737af6e4c72754624686439222b82c092`  
		Last Modified: Sat, 28 Apr 2018 18:54:49 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a88733e4be7a2506c6a321e6b39631c63c53d069a59edc7ddfac1d4eac4c4`  
		Last Modified: Sat, 28 Apr 2018 18:54:50 GMT  
		Size: 2.5 MB (2455973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193653b00cde28f07a0a285f02854ab652325fc632249d1937f58cac9d46b0ed`  
		Last Modified: Sat, 28 Apr 2018 18:55:15 GMT  
		Size: 98.0 MB (97986924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6788b0404e47621a5155406fc2fd0ad92c2d15942ee16843cdd751024f7c2f9`  
		Last Modified: Sat, 28 Apr 2018 18:54:50 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b41106c3dcc5c5622c7c65f14b80c813c254e405b37d0cdb6eeac24b6f3c5fbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252753800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b112bb2edc17c6acadb2c6213ff5e6149482ce11f34328bbf986f03924e22b6`
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
# Tue, 01 May 2018 08:41:48 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 01 May 2018 08:41:49 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 01 May 2018 08:53:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 01 May 2018 08:53:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 May 2018 08:53:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 May 2018 08:53:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 08:53:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 May 2018 08:53:30 GMT
CMD ["irb"]
# Tue, 01 May 2018 21:24:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 May 2018 21:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:25:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 21:25:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 May 2018 21:25:23 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 01 May 2018 21:25:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 May 2018 21:27:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:27:24 GMT
ENV RAILS_ENV=production
# Tue, 01 May 2018 21:27:24 GMT
WORKDIR /usr/src/redmine
# Tue, 01 May 2018 21:27:25 GMT
ENV REDMINE_VERSION=3.4.5
# Tue, 01 May 2018 21:27:26 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Tue, 01 May 2018 21:27:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 May 2018 21:39:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 21:39:22 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 May 2018 21:39:23 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 01 May 2018 21:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 May 2018 21:39:25 GMT
EXPOSE 3000/tcp
# Tue, 01 May 2018 21:39:26 GMT
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
	-	`sha256:dd64c2da743312bff47eb2e0025332616cf5a6d678601732cbd25e1eb5c30498`  
		Last Modified: Tue, 01 May 2018 09:53:51 GMT  
		Size: 21.3 MB (21251141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee67580428352e535254c8e159fa582df7254fd1a68891840fd0d7e093cfe01`  
		Last Modified: Tue, 01 May 2018 09:53:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f7a60173bb49390ee39dc8face0838366b213d567ddd913dee4ce3f35ab79b`  
		Last Modified: Tue, 01 May 2018 22:07:39 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153e98d833a178e0103f7204b60a4ea83224b2fd7f3b1c79b1134ca9a6c3032e`  
		Last Modified: Tue, 01 May 2018 22:07:41 GMT  
		Size: 12.9 MB (12940680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856705cf8f6b964aea1a3dd7ab2adaa18bb412e7ac6256be605a857d925f5359`  
		Last Modified: Tue, 01 May 2018 22:07:37 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46c5927ea6fc505fc38dd5d401ee219a4ff3f336f3b3a53d49eefc629da358`  
		Last Modified: Tue, 01 May 2018 22:07:37 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9096c04b4971fc0ab80087d29c0d04d91e13741919ffede74e499c711e32591`  
		Last Modified: Tue, 01 May 2018 22:07:54 GMT  
		Size: 55.8 MB (55778476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f609976afa04276140ba632f1f3944691bb834a85e7cc0802c26156184535946`  
		Last Modified: Tue, 01 May 2018 22:07:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca569f5470163a07e2dd9cb0c15ca3e4761e31e03c9c6af69def7efe20f3ae4`  
		Last Modified: Tue, 01 May 2018 22:07:34 GMT  
		Size: 2.5 MB (2455515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660bf2546028b466dc54b29e51c3835834a4070b5620c1140088bf2360dd5a09`  
		Last Modified: Tue, 01 May 2018 22:08:07 GMT  
		Size: 99.1 MB (99056787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870a7b0f1bbff549ffd4c7b3141b6b16fe741ffed7d7279f57ab7d0777f2323c`  
		Last Modified: Tue, 01 May 2018 22:07:33 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:bbf4de54838ed580fc43d6612fc438bc745cd5750b4bd9e8469956b62bf5e1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263515236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289960b8e1af46f8136f83b98507245c77712a3e8850cd6ea63172c302e643dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:49:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:49:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 17:49:47 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 17:53:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 17:53:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 17:53:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 17:53:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:53:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 17:53:44 GMT
CMD ["irb"]
# Sun, 29 Apr 2018 00:31:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 29 Apr 2018 00:31:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:31:44 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 00:31:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 29 Apr 2018 00:31:49 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 29 Apr 2018 00:31:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 29 Apr 2018 00:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:32:49 GMT
ENV RAILS_ENV=production
# Sun, 29 Apr 2018 00:32:49 GMT
WORKDIR /usr/src/redmine
# Sun, 29 Apr 2018 00:32:50 GMT
ENV REDMINE_VERSION=3.4.5
# Sun, 29 Apr 2018 00:32:50 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sun, 29 Apr 2018 00:32:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 29 Apr 2018 00:36:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 29 Apr 2018 00:36:30 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 29 Apr 2018 00:36:31 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 29 Apr 2018 00:36:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 00:36:31 GMT
EXPOSE 3000/tcp
# Sun, 29 Apr 2018 00:36:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ed54143c8d969665b70b41c179634296606ed56f18640b853067b9f47f79d`  
		Last Modified: Sat, 28 Apr 2018 18:20:31 GMT  
		Size: 14.6 MB (14636348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e568153250a765bd784dbe6a36fbb20db21f74060ecc604b1faf59fcf15b76`  
		Last Modified: Sat, 28 Apr 2018 18:20:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a640a6c3e1c9d53c2ee91484600bbdeea4a37e168fc7d59f4d59f311057dfe1a`  
		Last Modified: Sat, 28 Apr 2018 18:20:32 GMT  
		Size: 20.3 MB (20287182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b896ebcd525190f1cf30159e537fbb5acb3161f4fb1760c5e94e7a72a362ac6`  
		Last Modified: Sat, 28 Apr 2018 18:20:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1191a2662384cbb8bd6acf1a6b57bbba392e8d7f0ba1192dc180827c601e22`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33a4a4fcb446e7986426e279c256696f7245231c789d286b8dac8165a4ca4`  
		Last Modified: Sun, 29 Apr 2018 00:47:05 GMT  
		Size: 13.1 MB (13102778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2039f1288cabb203a1cee2bb72435ee968d4350e7307e62ae7700af1141bd5b`  
		Last Modified: Sun, 29 Apr 2018 00:47:00 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d109b7d82abd53a18d976c70cce7fc65671644ee58210cbb6c8b3caa166faeee`  
		Last Modified: Sun, 29 Apr 2018 00:47:00 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5449e38c54a33089301430e1eeab1dd58a09c516ba2ad54d99b4895447f2a05a`  
		Last Modified: Sun, 29 Apr 2018 00:47:23 GMT  
		Size: 60.1 MB (60136947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4394bb12a57799f4faf90199c46ed5b4d466116d47748fc01eb93c797f1fd5a`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd6a555bf87d8de47576b02233a2174e6602df844d64c7877a656eb00d5dadc`  
		Last Modified: Sun, 29 Apr 2018 00:47:06 GMT  
		Size: 2.5 MB (2455512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a30ad0ec318629b8e185822382d75242fd445c44f2f0af02a7fa3f212acfeb8`  
		Last Modified: Sun, 29 Apr 2018 00:47:33 GMT  
		Size: 97.9 MB (97916162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a95195f75f665c1629170f5e6caefab538a1ef7a30e49ea297f1fadb8baeec0`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:da28336cad2cdd72f5f9bb4e8c0584d89870bfc4398664cbf2eb476bc68e097b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259648641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7606fb355a3334b3872585b88e2fb6a2485f0aa915aca55a2f2e3631537def`
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
# Sat, 28 Apr 2018 11:24:09 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:24:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:31:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:31:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:31:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:31:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:31:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:31:12 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:39:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:40:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:40:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:40:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:40:34 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:43:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:43:37 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:43:39 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:43:40 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 18:43:40 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 18:43:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 18:55:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 18:55:23 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 18:55:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 18:55:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:55:26 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 18:55:26 GMT
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
	-	`sha256:b4e64091e87afbd7f3b77e942d5ef67cbb4ba7772bd19772a7deb1341496c8a5`  
		Last Modified: Sat, 28 Apr 2018 12:15:10 GMT  
		Size: 21.7 MB (21743800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d86bf4809c8ec32144ab018ebe8ff7bc0fdcd5c66fd10c1338afd988dbede`  
		Last Modified: Sat, 28 Apr 2018 12:15:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd4030bbc4071a28203156a6158cfc971e7e7e8cd0e22371693c604688bb727`  
		Last Modified: Sat, 28 Apr 2018 19:16:02 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef19b16aadb353700cde6768dfea329fd2461e051e6555380bc8b65bc4f6b75`  
		Last Modified: Sat, 28 Apr 2018 19:16:05 GMT  
		Size: 13.1 MB (13113449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b23ecc11c934c7bc1244cfa049b3f16286a5ca1b7be85fdae03149649feeb33`  
		Last Modified: Sat, 28 Apr 2018 19:16:00 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab35162d4a9d9524a78efe64be547fa924b3c8853e09e95ca0d2c1b01f48c7ce`  
		Last Modified: Sat, 28 Apr 2018 19:15:59 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64561afd76c357cc76b51b27e64b096134ffe27288c11403d484892a4f9335db`  
		Last Modified: Sat, 28 Apr 2018 19:16:13 GMT  
		Size: 58.1 MB (58121364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fc4735ec0f82b6021980d09ed5c27328fc042b001fbfff56615887f86234d`  
		Last Modified: Sat, 28 Apr 2018 19:15:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cb2118ace6ac998cef07cf2d88bb2041bb60ea93677b899c7a72a23062c60b`  
		Last Modified: Sat, 28 Apr 2018 19:15:58 GMT  
		Size: 2.5 MB (2455964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141fdf7b0ff6a4230e0646afc3fcc8268b5520f44f378afa92a8e15f1890c81`  
		Last Modified: Sat, 28 Apr 2018 19:16:21 GMT  
		Size: 100.2 MB (100200330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01bc039567d54b9e7e4b8f6c1a1fffeb70c7a77059ec680326c57074e080fdd`  
		Last Modified: Sat, 28 Apr 2018 19:15:56 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:6ae1ff981222f392f9f345719bcb16a8a164958a52b8fcabf8b51819f481d8de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264594776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:332d0dfca7c28c6d6dc53f358c97dfd7ad427f27197f53a11cc634a997fa8396`
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
# Sat, 28 Apr 2018 15:34:25 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:34:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:37:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:37:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:37:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:37:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:37:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:37:31 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 21:04:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 21:04:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:04:44 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 21:04:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 21:04:46 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 21:04:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 21:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:05:23 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 21:05:24 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 21:05:24 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 21:05:24 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 21:05:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 21:09:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 21:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 21:09:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 21:10:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 21:10:00 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 21:10:01 GMT
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
	-	`sha256:54f7f93002cd60c79b6dc249efbc169cc4a3b64183f214e5a8d3e1b09bb9ba3f`  
		Last Modified: Sat, 28 Apr 2018 16:00:48 GMT  
		Size: 21.7 MB (21692872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734b556774547a03c8df92ef08a27c0588337aa688e81adb97539e7f2487541c`  
		Last Modified: Sat, 28 Apr 2018 16:00:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2fd5ac4c6a306b2fcfe75a5fe9131f87b52345c027c7c0e4dbd674cf91d0cf`  
		Last Modified: Sat, 28 Apr 2018 21:20:45 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e264f21f9e74a26bd6aa770ee2aa184a37027367b9461e5c315725244b0a4165`  
		Last Modified: Sat, 28 Apr 2018 21:20:50 GMT  
		Size: 13.1 MB (13129918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a47b988190bfc3d5d1067a0af0b784912144be8fbe1d6dd45e1d2a82aa6f7c`  
		Last Modified: Sat, 28 Apr 2018 21:20:42 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896d4814b08cd959c0dd976cb6031078ac294c756c22ad0070de3c1d98b3fc9`  
		Last Modified: Sat, 28 Apr 2018 21:20:43 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d38c197a1a837211e5a8e48f99b486b4a7256b61b95279a04366cc199666a19`  
		Last Modified: Sat, 28 Apr 2018 21:21:06 GMT  
		Size: 59.1 MB (59101017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447d1fc9ed78af5d2a626406c1a3e7b55c55497a4bc421cab5f04cbfa546c34f`  
		Last Modified: Sat, 28 Apr 2018 21:20:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92431964d34a3983f7fc92213695650a7a1ef3100c65aeb8ac0f33302603fea2`  
		Last Modified: Sat, 28 Apr 2018 21:20:42 GMT  
		Size: 2.5 MB (2455514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c9635cdb74b367680b19d880b956af0c2070a927dcc4883a2ca46272093d94`  
		Last Modified: Sat, 28 Apr 2018 21:21:14 GMT  
		Size: 103.3 MB (103286647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042994b29089f6cbcd189089261c67921a49e0542355f1092ed11db20430ac6b`  
		Last Modified: Sat, 28 Apr 2018 21:20:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.5`

```console
$ docker pull redmine@sha256:4fd9db02bb4c9ef0db7bdaa69a0a580d312022291e2c12033061d346f9237a02
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

### `redmine:3.4.5` - linux; amd64

```console
$ docker pull redmine@sha256:4c2a57dc3e52e13e352a823ec347261ac0fa2b1146284811f45c066bf3241e73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 MB (260461264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c639ff129295ee9db6eeee57500b44ffc9f3345a92d04038503019259dc5c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_MAJOR=2.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_VERSION=2.4.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 16:52:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 16:56:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 16:56:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 16:56:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 16:56:02 GMT
CMD ["irb"]
# Thu, 03 May 2018 03:42:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 03:42:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:42:30 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 03:42:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 03:42:35 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 03:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 03:43:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:43:21 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 03:43:22 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 03 May 2018 03:43:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 03:46:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 03:46:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 03:46:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 03:46:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 03:46:44 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 03:46:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db3df565eff555b355459a6eab150063cc3cb47228a16be397dcd5682cceef`  
		Last Modified: Sun, 29 Apr 2018 19:34:04 GMT  
		Size: 21.3 MB (21290189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6894497d0e25a0b6ba853acc05ff57b7e5cf50ab09c5a555175f848f73a6a6f`  
		Last Modified: Sun, 29 Apr 2018 19:33:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab58405acb4af2467d9f2e41bd812edf1b09a1d99fd045b574e0ffb73abb0978`  
		Last Modified: Thu, 03 May 2018 04:50:22 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe08ba54663f3b5b8eb59e07104cf2c7d842049116ab786185961a23ffa6d9e9`  
		Last Modified: Thu, 03 May 2018 04:50:25 GMT  
		Size: 13.0 MB (12968169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9638a0f0496cc4bc67b454bbe11d3609261ac96cd8942c7cdbab36fbc6317b`  
		Last Modified: Thu, 03 May 2018 04:50:21 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228f3e7522efdf39b46e17fb618d36c713bc927886448cc721c4c8fd5f7392a`  
		Last Modified: Thu, 03 May 2018 04:50:19 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb363dbd665cb3675a98b0979b74c1423708352849e83aa74149816621e582`  
		Last Modified: Thu, 03 May 2018 04:50:36 GMT  
		Size: 59.3 MB (59260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4ff67a7380b8f6cc6c6df1c1d83c480295c034a9998c7f7c5bb6d7761e306`  
		Last Modified: Thu, 03 May 2018 04:50:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3529dee0dc7fc5a6f710cb38b3250dafaa66984fcdf6268025910a27920458f4`  
		Last Modified: Thu, 03 May 2018 04:50:20 GMT  
		Size: 2.5 MB (2455510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b0278df283894547b54bce4068bfd8575a0fd0f07fd59f1bcca2a82d14dd9a`  
		Last Modified: Thu, 03 May 2018 04:50:49 GMT  
		Size: 99.5 MB (99541951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b05cb93487bb0ea3c06e61a58dfe253e6e934f9983e6974678086e7fd9843a3`  
		Last Modified: Thu, 03 May 2018 04:50:17 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; arm variant v5

```console
$ docker pull redmine@sha256:864532d60f84462ad0658587fa7d306f95c8bd07c279b1a26eaba469afad18bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253780789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd204c14eb723f0c0335056e99d7374520d8f5f3458dbd0787f82132e9dea888`
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
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:50:11 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:56:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:56:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:56:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:56:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:56:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:56:08 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 14:51:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 14:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:51:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 14:52:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 14:52:00 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 14:52:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 14:53:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:53:00 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 14:53:01 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 14:53:01 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 14:53:01 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 14:53:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 14:58:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 14:58:30 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 14:58:31 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 14:58:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 14:58:31 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 14:58:32 GMT
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
	-	`sha256:94a66a7ddb6901f1274cc0fa2c65eebfe5e235802df7937480b39418694484fa`  
		Last Modified: Sat, 28 Apr 2018 12:31:34 GMT  
		Size: 21.1 MB (21059024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524ccdf42ba2c4e3e4be2ee4fb5c10d4afc131477f2a3ab1709ece82adc5cb77`  
		Last Modified: Sat, 28 Apr 2018 12:31:26 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea7ea6cc4fe4dca1ff56cbef45c0a5ceab16298cc413b66ed67fe8ffb36091c`  
		Last Modified: Sat, 28 Apr 2018 15:09:59 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189f89a0552f22ef88a40ac59780f4cc23c75e920742fc1a98fc53dd10e12707`  
		Last Modified: Sat, 28 Apr 2018 15:10:02 GMT  
		Size: 12.8 MB (12772346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c8e504663da75271241ef58cda2443b8bf9cec707cd2f86712c81ed7b4b424`  
		Last Modified: Sat, 28 Apr 2018 15:09:59 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334211fc8b5a58957a63ccfe8be286e040109001f4e7f0d654fe09a5c93fd7a9`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 7.8 KB (7843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee71b3d8d29db4664db8e14b34aa74879bd363a825236c00c7c947d2ea79696`  
		Last Modified: Sat, 28 Apr 2018 15:10:15 GMT  
		Size: 56.6 MB (56602454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfd36a77679c41ae112206b6dca62385e3d69d3085a97338f74c6b01a040f43`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96557711b0f5518195be87e7056d581c2cb946e62432773b572a2c323b08bb0d`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 2.5 MB (2455970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399a4cb09acb6dd72dea3656268edbdd4f3e5001908facfc435b2effde2ba43b`  
		Last Modified: Sat, 28 Apr 2018 15:10:23 GMT  
		Size: 98.8 MB (98811650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3813e523333b4c92b2d134db7c78833e250acda17ad7aa4bfc182283b87b9`  
		Last Modified: Sat, 28 Apr 2018 15:09:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; arm variant v7

```console
$ docker pull redmine@sha256:827b3900f677badb0bf453abe9fbd2d7f26d6a1bfd158dcb01600e89c3d49183
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247792666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8ee74826e44aebb861336f2cb278630e13a11f76f05a83e2d9814ecc0d363f`
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
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:40:58 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:46:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:46:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:46:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:46:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:46:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:46:37 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:37:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:37:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:37:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:37:58 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:37:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:38:58 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:38:58 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:38:58 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 18:38:58 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 18:39:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 18:44:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 18:44:08 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 18:44:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 18:44:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:44:09 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 18:44:09 GMT
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
	-	`sha256:8740c938f0e769050ecd151d51397d1e23aeb49231b471b4e3382bc22d752c21`  
		Last Modified: Sat, 28 Apr 2018 16:21:25 GMT  
		Size: 20.9 MB (20925525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae6faa56e8d083c41a2a8dcc749447c36da0f335725f00fed8a7c2bf5066288`  
		Last Modified: Sat, 28 Apr 2018 16:21:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c60f740d556409484cd91ddb2f9d1c5cbe02c571a74a32e57235ac3e873bba4`  
		Last Modified: Sat, 28 Apr 2018 18:54:52 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2402ff103770c630c06407a473f973c5cde69f8cc7c3a60b7234c2808a6d46cc`  
		Last Modified: Sat, 28 Apr 2018 18:54:55 GMT  
		Size: 12.6 MB (12629290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c560cfda27777cd8b7fea9f828a23f70f4b0559a1b0c13d74fa02a4d0e09c8`  
		Last Modified: Sat, 28 Apr 2018 18:54:51 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454ba804480e1b3bfad5d5fffab39018aec3e51cba101aef400c2684a6f7ddd5`  
		Last Modified: Sat, 28 Apr 2018 18:54:51 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dea9987c404d67058f06dd9b0b771e3ee703c2495f7405b01e8483d8c471be`  
		Last Modified: Sat, 28 Apr 2018 18:55:05 GMT  
		Size: 54.3 MB (54334502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689e2020df6afdd4e6930e46e0af15737af6e4c72754624686439222b82c092`  
		Last Modified: Sat, 28 Apr 2018 18:54:49 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a88733e4be7a2506c6a321e6b39631c63c53d069a59edc7ddfac1d4eac4c4`  
		Last Modified: Sat, 28 Apr 2018 18:54:50 GMT  
		Size: 2.5 MB (2455973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193653b00cde28f07a0a285f02854ab652325fc632249d1937f58cac9d46b0ed`  
		Last Modified: Sat, 28 Apr 2018 18:55:15 GMT  
		Size: 98.0 MB (97986924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6788b0404e47621a5155406fc2fd0ad92c2d15942ee16843cdd751024f7c2f9`  
		Last Modified: Sat, 28 Apr 2018 18:54:50 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b41106c3dcc5c5622c7c65f14b80c813c254e405b37d0cdb6eeac24b6f3c5fbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252753800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b112bb2edc17c6acadb2c6213ff5e6149482ce11f34328bbf986f03924e22b6`
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
# Tue, 01 May 2018 08:41:48 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 01 May 2018 08:41:49 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 01 May 2018 08:53:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 01 May 2018 08:53:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 May 2018 08:53:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 May 2018 08:53:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 08:53:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 May 2018 08:53:30 GMT
CMD ["irb"]
# Tue, 01 May 2018 21:24:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 May 2018 21:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:25:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 21:25:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 May 2018 21:25:23 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 01 May 2018 21:25:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 May 2018 21:27:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:27:24 GMT
ENV RAILS_ENV=production
# Tue, 01 May 2018 21:27:24 GMT
WORKDIR /usr/src/redmine
# Tue, 01 May 2018 21:27:25 GMT
ENV REDMINE_VERSION=3.4.5
# Tue, 01 May 2018 21:27:26 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Tue, 01 May 2018 21:27:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 May 2018 21:39:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 21:39:22 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 May 2018 21:39:23 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 01 May 2018 21:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 May 2018 21:39:25 GMT
EXPOSE 3000/tcp
# Tue, 01 May 2018 21:39:26 GMT
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
	-	`sha256:dd64c2da743312bff47eb2e0025332616cf5a6d678601732cbd25e1eb5c30498`  
		Last Modified: Tue, 01 May 2018 09:53:51 GMT  
		Size: 21.3 MB (21251141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee67580428352e535254c8e159fa582df7254fd1a68891840fd0d7e093cfe01`  
		Last Modified: Tue, 01 May 2018 09:53:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f7a60173bb49390ee39dc8face0838366b213d567ddd913dee4ce3f35ab79b`  
		Last Modified: Tue, 01 May 2018 22:07:39 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153e98d833a178e0103f7204b60a4ea83224b2fd7f3b1c79b1134ca9a6c3032e`  
		Last Modified: Tue, 01 May 2018 22:07:41 GMT  
		Size: 12.9 MB (12940680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856705cf8f6b964aea1a3dd7ab2adaa18bb412e7ac6256be605a857d925f5359`  
		Last Modified: Tue, 01 May 2018 22:07:37 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46c5927ea6fc505fc38dd5d401ee219a4ff3f336f3b3a53d49eefc629da358`  
		Last Modified: Tue, 01 May 2018 22:07:37 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9096c04b4971fc0ab80087d29c0d04d91e13741919ffede74e499c711e32591`  
		Last Modified: Tue, 01 May 2018 22:07:54 GMT  
		Size: 55.8 MB (55778476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f609976afa04276140ba632f1f3944691bb834a85e7cc0802c26156184535946`  
		Last Modified: Tue, 01 May 2018 22:07:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca569f5470163a07e2dd9cb0c15ca3e4761e31e03c9c6af69def7efe20f3ae4`  
		Last Modified: Tue, 01 May 2018 22:07:34 GMT  
		Size: 2.5 MB (2455515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660bf2546028b466dc54b29e51c3835834a4070b5620c1140088bf2360dd5a09`  
		Last Modified: Tue, 01 May 2018 22:08:07 GMT  
		Size: 99.1 MB (99056787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870a7b0f1bbff549ffd4c7b3141b6b16fe741ffed7d7279f57ab7d0777f2323c`  
		Last Modified: Tue, 01 May 2018 22:07:33 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; 386

```console
$ docker pull redmine@sha256:bbf4de54838ed580fc43d6612fc438bc745cd5750b4bd9e8469956b62bf5e1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263515236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289960b8e1af46f8136f83b98507245c77712a3e8850cd6ea63172c302e643dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:49:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:49:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 17:49:47 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 17:53:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 17:53:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 17:53:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 17:53:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:53:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 17:53:44 GMT
CMD ["irb"]
# Sun, 29 Apr 2018 00:31:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 29 Apr 2018 00:31:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:31:44 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 00:31:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 29 Apr 2018 00:31:49 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 29 Apr 2018 00:31:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 29 Apr 2018 00:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:32:49 GMT
ENV RAILS_ENV=production
# Sun, 29 Apr 2018 00:32:49 GMT
WORKDIR /usr/src/redmine
# Sun, 29 Apr 2018 00:32:50 GMT
ENV REDMINE_VERSION=3.4.5
# Sun, 29 Apr 2018 00:32:50 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sun, 29 Apr 2018 00:32:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 29 Apr 2018 00:36:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 29 Apr 2018 00:36:30 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 29 Apr 2018 00:36:31 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 29 Apr 2018 00:36:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 00:36:31 GMT
EXPOSE 3000/tcp
# Sun, 29 Apr 2018 00:36:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ed54143c8d969665b70b41c179634296606ed56f18640b853067b9f47f79d`  
		Last Modified: Sat, 28 Apr 2018 18:20:31 GMT  
		Size: 14.6 MB (14636348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e568153250a765bd784dbe6a36fbb20db21f74060ecc604b1faf59fcf15b76`  
		Last Modified: Sat, 28 Apr 2018 18:20:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a640a6c3e1c9d53c2ee91484600bbdeea4a37e168fc7d59f4d59f311057dfe1a`  
		Last Modified: Sat, 28 Apr 2018 18:20:32 GMT  
		Size: 20.3 MB (20287182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b896ebcd525190f1cf30159e537fbb5acb3161f4fb1760c5e94e7a72a362ac6`  
		Last Modified: Sat, 28 Apr 2018 18:20:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1191a2662384cbb8bd6acf1a6b57bbba392e8d7f0ba1192dc180827c601e22`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33a4a4fcb446e7986426e279c256696f7245231c789d286b8dac8165a4ca4`  
		Last Modified: Sun, 29 Apr 2018 00:47:05 GMT  
		Size: 13.1 MB (13102778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2039f1288cabb203a1cee2bb72435ee968d4350e7307e62ae7700af1141bd5b`  
		Last Modified: Sun, 29 Apr 2018 00:47:00 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d109b7d82abd53a18d976c70cce7fc65671644ee58210cbb6c8b3caa166faeee`  
		Last Modified: Sun, 29 Apr 2018 00:47:00 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5449e38c54a33089301430e1eeab1dd58a09c516ba2ad54d99b4895447f2a05a`  
		Last Modified: Sun, 29 Apr 2018 00:47:23 GMT  
		Size: 60.1 MB (60136947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4394bb12a57799f4faf90199c46ed5b4d466116d47748fc01eb93c797f1fd5a`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd6a555bf87d8de47576b02233a2174e6602df844d64c7877a656eb00d5dadc`  
		Last Modified: Sun, 29 Apr 2018 00:47:06 GMT  
		Size: 2.5 MB (2455512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a30ad0ec318629b8e185822382d75242fd445c44f2f0af02a7fa3f212acfeb8`  
		Last Modified: Sun, 29 Apr 2018 00:47:33 GMT  
		Size: 97.9 MB (97916162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a95195f75f665c1629170f5e6caefab538a1ef7a30e49ea297f1fadb8baeec0`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; ppc64le

```console
$ docker pull redmine@sha256:da28336cad2cdd72f5f9bb4e8c0584d89870bfc4398664cbf2eb476bc68e097b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259648641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7606fb355a3334b3872585b88e2fb6a2485f0aa915aca55a2f2e3631537def`
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
# Sat, 28 Apr 2018 11:24:09 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:24:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:31:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:31:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:31:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:31:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:31:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:31:12 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:39:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:40:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:40:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:40:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:40:34 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:43:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:43:37 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:43:39 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:43:40 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 18:43:40 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 18:43:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 18:55:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 18:55:23 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 18:55:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 18:55:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:55:26 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 18:55:26 GMT
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
	-	`sha256:b4e64091e87afbd7f3b77e942d5ef67cbb4ba7772bd19772a7deb1341496c8a5`  
		Last Modified: Sat, 28 Apr 2018 12:15:10 GMT  
		Size: 21.7 MB (21743800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d86bf4809c8ec32144ab018ebe8ff7bc0fdcd5c66fd10c1338afd988dbede`  
		Last Modified: Sat, 28 Apr 2018 12:15:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd4030bbc4071a28203156a6158cfc971e7e7e8cd0e22371693c604688bb727`  
		Last Modified: Sat, 28 Apr 2018 19:16:02 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef19b16aadb353700cde6768dfea329fd2461e051e6555380bc8b65bc4f6b75`  
		Last Modified: Sat, 28 Apr 2018 19:16:05 GMT  
		Size: 13.1 MB (13113449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b23ecc11c934c7bc1244cfa049b3f16286a5ca1b7be85fdae03149649feeb33`  
		Last Modified: Sat, 28 Apr 2018 19:16:00 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab35162d4a9d9524a78efe64be547fa924b3c8853e09e95ca0d2c1b01f48c7ce`  
		Last Modified: Sat, 28 Apr 2018 19:15:59 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64561afd76c357cc76b51b27e64b096134ffe27288c11403d484892a4f9335db`  
		Last Modified: Sat, 28 Apr 2018 19:16:13 GMT  
		Size: 58.1 MB (58121364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fc4735ec0f82b6021980d09ed5c27328fc042b001fbfff56615887f86234d`  
		Last Modified: Sat, 28 Apr 2018 19:15:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cb2118ace6ac998cef07cf2d88bb2041bb60ea93677b899c7a72a23062c60b`  
		Last Modified: Sat, 28 Apr 2018 19:15:58 GMT  
		Size: 2.5 MB (2455964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141fdf7b0ff6a4230e0646afc3fcc8268b5520f44f378afa92a8e15f1890c81`  
		Last Modified: Sat, 28 Apr 2018 19:16:21 GMT  
		Size: 100.2 MB (100200330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01bc039567d54b9e7e4b8f6c1a1fffeb70c7a77059ec680326c57074e080fdd`  
		Last Modified: Sat, 28 Apr 2018 19:15:56 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; s390x

```console
$ docker pull redmine@sha256:6ae1ff981222f392f9f345719bcb16a8a164958a52b8fcabf8b51819f481d8de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264594776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:332d0dfca7c28c6d6dc53f358c97dfd7ad427f27197f53a11cc634a997fa8396`
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
# Sat, 28 Apr 2018 15:34:25 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:34:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:37:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:37:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:37:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:37:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:37:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:37:31 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 21:04:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 21:04:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:04:44 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 21:04:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 21:04:46 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 21:04:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 21:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:05:23 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 21:05:24 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 21:05:24 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 21:05:24 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 21:05:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 21:09:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 21:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 21:09:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 21:10:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 21:10:00 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 21:10:01 GMT
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
	-	`sha256:54f7f93002cd60c79b6dc249efbc169cc4a3b64183f214e5a8d3e1b09bb9ba3f`  
		Last Modified: Sat, 28 Apr 2018 16:00:48 GMT  
		Size: 21.7 MB (21692872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734b556774547a03c8df92ef08a27c0588337aa688e81adb97539e7f2487541c`  
		Last Modified: Sat, 28 Apr 2018 16:00:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2fd5ac4c6a306b2fcfe75a5fe9131f87b52345c027c7c0e4dbd674cf91d0cf`  
		Last Modified: Sat, 28 Apr 2018 21:20:45 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e264f21f9e74a26bd6aa770ee2aa184a37027367b9461e5c315725244b0a4165`  
		Last Modified: Sat, 28 Apr 2018 21:20:50 GMT  
		Size: 13.1 MB (13129918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a47b988190bfc3d5d1067a0af0b784912144be8fbe1d6dd45e1d2a82aa6f7c`  
		Last Modified: Sat, 28 Apr 2018 21:20:42 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896d4814b08cd959c0dd976cb6031078ac294c756c22ad0070de3c1d98b3fc9`  
		Last Modified: Sat, 28 Apr 2018 21:20:43 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d38c197a1a837211e5a8e48f99b486b4a7256b61b95279a04366cc199666a19`  
		Last Modified: Sat, 28 Apr 2018 21:21:06 GMT  
		Size: 59.1 MB (59101017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447d1fc9ed78af5d2a626406c1a3e7b55c55497a4bc421cab5f04cbfa546c34f`  
		Last Modified: Sat, 28 Apr 2018 21:20:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92431964d34a3983f7fc92213695650a7a1ef3100c65aeb8ac0f33302603fea2`  
		Last Modified: Sat, 28 Apr 2018 21:20:42 GMT  
		Size: 2.5 MB (2455514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c9635cdb74b367680b19d880b956af0c2070a927dcc4883a2ca46272093d94`  
		Last Modified: Sat, 28 Apr 2018 21:21:14 GMT  
		Size: 103.3 MB (103286647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042994b29089f6cbcd189089261c67921a49e0542355f1092ed11db20430ac6b`  
		Last Modified: Sat, 28 Apr 2018 21:20:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.5-passenger`

```console
$ docker pull redmine@sha256:d68d697c74bb60f75c8808e1d8b6b2f7406f142c3141dbd1fb52fbcb0d125dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.5-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a9e5e8ec0d7dcd593aeefe484d82844db001bb5627aa23608dc4f04a72f33d1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283662470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156101ac0975d8563574d824c5945dda4e863a94630c121416d61797a5f2e666`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_MAJOR=2.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_VERSION=2.4.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 16:52:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 16:56:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 16:56:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 16:56:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 16:56:02 GMT
CMD ["irb"]
# Thu, 03 May 2018 03:42:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 03:42:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:42:30 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 03:42:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 03:42:35 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 03:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 03:43:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:43:21 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 03:43:22 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 03 May 2018 03:43:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 03:46:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 03:46:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 03:46:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 03:46:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 03:46:44 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 03:46:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 21 May 2018 21:32:34 GMT
ENV PASSENGER_VERSION=5.3.1
# Mon, 21 May 2018 21:33:07 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 21 May 2018 21:33:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 21 May 2018 21:33:09 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db3df565eff555b355459a6eab150063cc3cb47228a16be397dcd5682cceef`  
		Last Modified: Sun, 29 Apr 2018 19:34:04 GMT  
		Size: 21.3 MB (21290189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6894497d0e25a0b6ba853acc05ff57b7e5cf50ab09c5a555175f848f73a6a6f`  
		Last Modified: Sun, 29 Apr 2018 19:33:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab58405acb4af2467d9f2e41bd812edf1b09a1d99fd045b574e0ffb73abb0978`  
		Last Modified: Thu, 03 May 2018 04:50:22 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe08ba54663f3b5b8eb59e07104cf2c7d842049116ab786185961a23ffa6d9e9`  
		Last Modified: Thu, 03 May 2018 04:50:25 GMT  
		Size: 13.0 MB (12968169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9638a0f0496cc4bc67b454bbe11d3609261ac96cd8942c7cdbab36fbc6317b`  
		Last Modified: Thu, 03 May 2018 04:50:21 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228f3e7522efdf39b46e17fb618d36c713bc927886448cc721c4c8fd5f7392a`  
		Last Modified: Thu, 03 May 2018 04:50:19 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb363dbd665cb3675a98b0979b74c1423708352849e83aa74149816621e582`  
		Last Modified: Thu, 03 May 2018 04:50:36 GMT  
		Size: 59.3 MB (59260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4ff67a7380b8f6cc6c6df1c1d83c480295c034a9998c7f7c5bb6d7761e306`  
		Last Modified: Thu, 03 May 2018 04:50:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3529dee0dc7fc5a6f710cb38b3250dafaa66984fcdf6268025910a27920458f4`  
		Last Modified: Thu, 03 May 2018 04:50:20 GMT  
		Size: 2.5 MB (2455510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b0278df283894547b54bce4068bfd8575a0fd0f07fd59f1bcca2a82d14dd9a`  
		Last Modified: Thu, 03 May 2018 04:50:49 GMT  
		Size: 99.5 MB (99541951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b05cb93487bb0ea3c06e61a58dfe253e6e934f9983e6974678086e7fd9843a3`  
		Last Modified: Thu, 03 May 2018 04:50:17 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec5aecfb619f0b221069bc595b6fd466e3778602a5d4f0269bc16127093ceb3`  
		Last Modified: Mon, 21 May 2018 21:34:45 GMT  
		Size: 18.7 MB (18742805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1804b43b1387ec9350c068adb748ba4020bac5725d1d85fb1d4697431fa694df`  
		Last Modified: Mon, 21 May 2018 21:34:43 GMT  
		Size: 4.5 MB (4458401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:d68d697c74bb60f75c8808e1d8b6b2f7406f142c3141dbd1fb52fbcb0d125dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a9e5e8ec0d7dcd593aeefe484d82844db001bb5627aa23608dc4f04a72f33d1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283662470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156101ac0975d8563574d824c5945dda4e863a94630c121416d61797a5f2e666`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_MAJOR=2.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_VERSION=2.4.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 16:52:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 16:56:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 16:56:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 16:56:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 16:56:02 GMT
CMD ["irb"]
# Thu, 03 May 2018 03:42:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 03:42:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:42:30 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 03:42:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 03:42:35 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 03:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 03:43:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:43:21 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 03:43:22 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 03 May 2018 03:43:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 03:46:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 03:46:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 03:46:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 03:46:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 03:46:44 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 03:46:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 21 May 2018 21:32:34 GMT
ENV PASSENGER_VERSION=5.3.1
# Mon, 21 May 2018 21:33:07 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 21 May 2018 21:33:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 21 May 2018 21:33:09 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db3df565eff555b355459a6eab150063cc3cb47228a16be397dcd5682cceef`  
		Last Modified: Sun, 29 Apr 2018 19:34:04 GMT  
		Size: 21.3 MB (21290189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6894497d0e25a0b6ba853acc05ff57b7e5cf50ab09c5a555175f848f73a6a6f`  
		Last Modified: Sun, 29 Apr 2018 19:33:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab58405acb4af2467d9f2e41bd812edf1b09a1d99fd045b574e0ffb73abb0978`  
		Last Modified: Thu, 03 May 2018 04:50:22 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe08ba54663f3b5b8eb59e07104cf2c7d842049116ab786185961a23ffa6d9e9`  
		Last Modified: Thu, 03 May 2018 04:50:25 GMT  
		Size: 13.0 MB (12968169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9638a0f0496cc4bc67b454bbe11d3609261ac96cd8942c7cdbab36fbc6317b`  
		Last Modified: Thu, 03 May 2018 04:50:21 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228f3e7522efdf39b46e17fb618d36c713bc927886448cc721c4c8fd5f7392a`  
		Last Modified: Thu, 03 May 2018 04:50:19 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb363dbd665cb3675a98b0979b74c1423708352849e83aa74149816621e582`  
		Last Modified: Thu, 03 May 2018 04:50:36 GMT  
		Size: 59.3 MB (59260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4ff67a7380b8f6cc6c6df1c1d83c480295c034a9998c7f7c5bb6d7761e306`  
		Last Modified: Thu, 03 May 2018 04:50:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3529dee0dc7fc5a6f710cb38b3250dafaa66984fcdf6268025910a27920458f4`  
		Last Modified: Thu, 03 May 2018 04:50:20 GMT  
		Size: 2.5 MB (2455510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b0278df283894547b54bce4068bfd8575a0fd0f07fd59f1bcca2a82d14dd9a`  
		Last Modified: Thu, 03 May 2018 04:50:49 GMT  
		Size: 99.5 MB (99541951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b05cb93487bb0ea3c06e61a58dfe253e6e934f9983e6974678086e7fd9843a3`  
		Last Modified: Thu, 03 May 2018 04:50:17 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec5aecfb619f0b221069bc595b6fd466e3778602a5d4f0269bc16127093ceb3`  
		Last Modified: Mon, 21 May 2018 21:34:45 GMT  
		Size: 18.7 MB (18742805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1804b43b1387ec9350c068adb748ba4020bac5725d1d85fb1d4697431fa694df`  
		Last Modified: Mon, 21 May 2018 21:34:43 GMT  
		Size: 4.5 MB (4458401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:d68d697c74bb60f75c8808e1d8b6b2f7406f142c3141dbd1fb52fbcb0d125dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a9e5e8ec0d7dcd593aeefe484d82844db001bb5627aa23608dc4f04a72f33d1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283662470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156101ac0975d8563574d824c5945dda4e863a94630c121416d61797a5f2e666`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_MAJOR=2.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_VERSION=2.4.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 16:52:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 16:56:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 16:56:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 16:56:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 16:56:02 GMT
CMD ["irb"]
# Thu, 03 May 2018 03:42:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 03:42:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:42:30 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 03:42:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 03:42:35 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 03:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 03:43:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:43:21 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 03:43:22 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 03 May 2018 03:43:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 03:46:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 03:46:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 03:46:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 03:46:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 03:46:44 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 03:46:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 21 May 2018 21:32:34 GMT
ENV PASSENGER_VERSION=5.3.1
# Mon, 21 May 2018 21:33:07 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 21 May 2018 21:33:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 21 May 2018 21:33:09 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db3df565eff555b355459a6eab150063cc3cb47228a16be397dcd5682cceef`  
		Last Modified: Sun, 29 Apr 2018 19:34:04 GMT  
		Size: 21.3 MB (21290189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6894497d0e25a0b6ba853acc05ff57b7e5cf50ab09c5a555175f848f73a6a6f`  
		Last Modified: Sun, 29 Apr 2018 19:33:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab58405acb4af2467d9f2e41bd812edf1b09a1d99fd045b574e0ffb73abb0978`  
		Last Modified: Thu, 03 May 2018 04:50:22 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe08ba54663f3b5b8eb59e07104cf2c7d842049116ab786185961a23ffa6d9e9`  
		Last Modified: Thu, 03 May 2018 04:50:25 GMT  
		Size: 13.0 MB (12968169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9638a0f0496cc4bc67b454bbe11d3609261ac96cd8942c7cdbab36fbc6317b`  
		Last Modified: Thu, 03 May 2018 04:50:21 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228f3e7522efdf39b46e17fb618d36c713bc927886448cc721c4c8fd5f7392a`  
		Last Modified: Thu, 03 May 2018 04:50:19 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb363dbd665cb3675a98b0979b74c1423708352849e83aa74149816621e582`  
		Last Modified: Thu, 03 May 2018 04:50:36 GMT  
		Size: 59.3 MB (59260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4ff67a7380b8f6cc6c6df1c1d83c480295c034a9998c7f7c5bb6d7761e306`  
		Last Modified: Thu, 03 May 2018 04:50:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3529dee0dc7fc5a6f710cb38b3250dafaa66984fcdf6268025910a27920458f4`  
		Last Modified: Thu, 03 May 2018 04:50:20 GMT  
		Size: 2.5 MB (2455510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b0278df283894547b54bce4068bfd8575a0fd0f07fd59f1bcca2a82d14dd9a`  
		Last Modified: Thu, 03 May 2018 04:50:49 GMT  
		Size: 99.5 MB (99541951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b05cb93487bb0ea3c06e61a58dfe253e6e934f9983e6974678086e7fd9843a3`  
		Last Modified: Thu, 03 May 2018 04:50:17 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec5aecfb619f0b221069bc595b6fd466e3778602a5d4f0269bc16127093ceb3`  
		Last Modified: Mon, 21 May 2018 21:34:45 GMT  
		Size: 18.7 MB (18742805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1804b43b1387ec9350c068adb748ba4020bac5725d1d85fb1d4697431fa694df`  
		Last Modified: Mon, 21 May 2018 21:34:43 GMT  
		Size: 4.5 MB (4458401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:4fd9db02bb4c9ef0db7bdaa69a0a580d312022291e2c12033061d346f9237a02
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
$ docker pull redmine@sha256:4c2a57dc3e52e13e352a823ec347261ac0fa2b1146284811f45c066bf3241e73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 MB (260461264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c639ff129295ee9db6eeee57500b44ffc9f3345a92d04038503019259dc5c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_MAJOR=2.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_VERSION=2.4.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 16:52:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 16:56:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 16:56:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 16:56:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 16:56:02 GMT
CMD ["irb"]
# Thu, 03 May 2018 03:42:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 03:42:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:42:30 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 03:42:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 03:42:35 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 03:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 03:43:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:43:21 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 03:43:22 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 03 May 2018 03:43:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 03:46:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 03:46:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 03:46:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 03:46:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 03:46:44 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 03:46:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db3df565eff555b355459a6eab150063cc3cb47228a16be397dcd5682cceef`  
		Last Modified: Sun, 29 Apr 2018 19:34:04 GMT  
		Size: 21.3 MB (21290189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6894497d0e25a0b6ba853acc05ff57b7e5cf50ab09c5a555175f848f73a6a6f`  
		Last Modified: Sun, 29 Apr 2018 19:33:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab58405acb4af2467d9f2e41bd812edf1b09a1d99fd045b574e0ffb73abb0978`  
		Last Modified: Thu, 03 May 2018 04:50:22 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe08ba54663f3b5b8eb59e07104cf2c7d842049116ab786185961a23ffa6d9e9`  
		Last Modified: Thu, 03 May 2018 04:50:25 GMT  
		Size: 13.0 MB (12968169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9638a0f0496cc4bc67b454bbe11d3609261ac96cd8942c7cdbab36fbc6317b`  
		Last Modified: Thu, 03 May 2018 04:50:21 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228f3e7522efdf39b46e17fb618d36c713bc927886448cc721c4c8fd5f7392a`  
		Last Modified: Thu, 03 May 2018 04:50:19 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb363dbd665cb3675a98b0979b74c1423708352849e83aa74149816621e582`  
		Last Modified: Thu, 03 May 2018 04:50:36 GMT  
		Size: 59.3 MB (59260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4ff67a7380b8f6cc6c6df1c1d83c480295c034a9998c7f7c5bb6d7761e306`  
		Last Modified: Thu, 03 May 2018 04:50:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3529dee0dc7fc5a6f710cb38b3250dafaa66984fcdf6268025910a27920458f4`  
		Last Modified: Thu, 03 May 2018 04:50:20 GMT  
		Size: 2.5 MB (2455510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b0278df283894547b54bce4068bfd8575a0fd0f07fd59f1bcca2a82d14dd9a`  
		Last Modified: Thu, 03 May 2018 04:50:49 GMT  
		Size: 99.5 MB (99541951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b05cb93487bb0ea3c06e61a58dfe253e6e934f9983e6974678086e7fd9843a3`  
		Last Modified: Thu, 03 May 2018 04:50:17 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:864532d60f84462ad0658587fa7d306f95c8bd07c279b1a26eaba469afad18bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253780789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd204c14eb723f0c0335056e99d7374520d8f5f3458dbd0787f82132e9dea888`
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
# Sat, 28 Apr 2018 11:50:11 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:50:11 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:56:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:56:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:56:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:56:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:56:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:56:08 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 14:51:24 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 14:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:51:53 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 14:52:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 14:52:00 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 14:52:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 14:53:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:53:00 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 14:53:01 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 14:53:01 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 14:53:01 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 14:53:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 14:58:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 14:58:30 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 14:58:31 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 14:58:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 14:58:31 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 14:58:32 GMT
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
	-	`sha256:94a66a7ddb6901f1274cc0fa2c65eebfe5e235802df7937480b39418694484fa`  
		Last Modified: Sat, 28 Apr 2018 12:31:34 GMT  
		Size: 21.1 MB (21059024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524ccdf42ba2c4e3e4be2ee4fb5c10d4afc131477f2a3ab1709ece82adc5cb77`  
		Last Modified: Sat, 28 Apr 2018 12:31:26 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea7ea6cc4fe4dca1ff56cbef45c0a5ceab16298cc413b66ed67fe8ffb36091c`  
		Last Modified: Sat, 28 Apr 2018 15:09:59 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189f89a0552f22ef88a40ac59780f4cc23c75e920742fc1a98fc53dd10e12707`  
		Last Modified: Sat, 28 Apr 2018 15:10:02 GMT  
		Size: 12.8 MB (12772346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c8e504663da75271241ef58cda2443b8bf9cec707cd2f86712c81ed7b4b424`  
		Last Modified: Sat, 28 Apr 2018 15:09:59 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334211fc8b5a58957a63ccfe8be286e040109001f4e7f0d654fe09a5c93fd7a9`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 7.8 KB (7843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee71b3d8d29db4664db8e14b34aa74879bd363a825236c00c7c947d2ea79696`  
		Last Modified: Sat, 28 Apr 2018 15:10:15 GMT  
		Size: 56.6 MB (56602454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfd36a77679c41ae112206b6dca62385e3d69d3085a97338f74c6b01a040f43`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96557711b0f5518195be87e7056d581c2cb946e62432773b572a2c323b08bb0d`  
		Last Modified: Sat, 28 Apr 2018 15:09:57 GMT  
		Size: 2.5 MB (2455970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399a4cb09acb6dd72dea3656268edbdd4f3e5001908facfc435b2effde2ba43b`  
		Last Modified: Sat, 28 Apr 2018 15:10:23 GMT  
		Size: 98.8 MB (98811650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d3813e523333b4c92b2d134db7c78833e250acda17ad7aa4bfc182283b87b9`  
		Last Modified: Sat, 28 Apr 2018 15:09:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:827b3900f677badb0bf453abe9fbd2d7f26d6a1bfd158dcb01600e89c3d49183
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247792666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8ee74826e44aebb861336f2cb278630e13a11f76f05a83e2d9814ecc0d363f`
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
# Sat, 28 Apr 2018 15:40:57 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:40:58 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:46:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:46:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:46:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:46:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:46:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:46:37 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:37:19 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:37:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:37:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:37:58 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:37:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:38:58 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:38:58 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:38:58 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 18:38:58 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 18:39:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 18:44:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 18:44:08 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 18:44:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 18:44:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:44:09 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 18:44:09 GMT
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
	-	`sha256:8740c938f0e769050ecd151d51397d1e23aeb49231b471b4e3382bc22d752c21`  
		Last Modified: Sat, 28 Apr 2018 16:21:25 GMT  
		Size: 20.9 MB (20925525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae6faa56e8d083c41a2a8dcc749447c36da0f335725f00fed8a7c2bf5066288`  
		Last Modified: Sat, 28 Apr 2018 16:21:17 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c60f740d556409484cd91ddb2f9d1c5cbe02c571a74a32e57235ac3e873bba4`  
		Last Modified: Sat, 28 Apr 2018 18:54:52 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2402ff103770c630c06407a473f973c5cde69f8cc7c3a60b7234c2808a6d46cc`  
		Last Modified: Sat, 28 Apr 2018 18:54:55 GMT  
		Size: 12.6 MB (12629290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c560cfda27777cd8b7fea9f828a23f70f4b0559a1b0c13d74fa02a4d0e09c8`  
		Last Modified: Sat, 28 Apr 2018 18:54:51 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454ba804480e1b3bfad5d5fffab39018aec3e51cba101aef400c2684a6f7ddd5`  
		Last Modified: Sat, 28 Apr 2018 18:54:51 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dea9987c404d67058f06dd9b0b771e3ee703c2495f7405b01e8483d8c471be`  
		Last Modified: Sat, 28 Apr 2018 18:55:05 GMT  
		Size: 54.3 MB (54334502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689e2020df6afdd4e6930e46e0af15737af6e4c72754624686439222b82c092`  
		Last Modified: Sat, 28 Apr 2018 18:54:49 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9a88733e4be7a2506c6a321e6b39631c63c53d069a59edc7ddfac1d4eac4c4`  
		Last Modified: Sat, 28 Apr 2018 18:54:50 GMT  
		Size: 2.5 MB (2455973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193653b00cde28f07a0a285f02854ab652325fc632249d1937f58cac9d46b0ed`  
		Last Modified: Sat, 28 Apr 2018 18:55:15 GMT  
		Size: 98.0 MB (97986924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6788b0404e47621a5155406fc2fd0ad92c2d15942ee16843cdd751024f7c2f9`  
		Last Modified: Sat, 28 Apr 2018 18:54:50 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b41106c3dcc5c5622c7c65f14b80c813c254e405b37d0cdb6eeac24b6f3c5fbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252753800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b112bb2edc17c6acadb2c6213ff5e6149482ce11f34328bbf986f03924e22b6`
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
# Tue, 01 May 2018 08:41:48 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 01 May 2018 08:41:49 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 01 May 2018 08:53:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 01 May 2018 08:53:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 May 2018 08:53:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 May 2018 08:53:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 08:53:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 May 2018 08:53:30 GMT
CMD ["irb"]
# Tue, 01 May 2018 21:24:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 May 2018 21:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:25:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 21:25:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 May 2018 21:25:23 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 01 May 2018 21:25:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 May 2018 21:27:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:27:24 GMT
ENV RAILS_ENV=production
# Tue, 01 May 2018 21:27:24 GMT
WORKDIR /usr/src/redmine
# Tue, 01 May 2018 21:27:25 GMT
ENV REDMINE_VERSION=3.4.5
# Tue, 01 May 2018 21:27:26 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Tue, 01 May 2018 21:27:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 May 2018 21:39:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 May 2018 21:39:22 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 May 2018 21:39:23 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 01 May 2018 21:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 May 2018 21:39:25 GMT
EXPOSE 3000/tcp
# Tue, 01 May 2018 21:39:26 GMT
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
	-	`sha256:dd64c2da743312bff47eb2e0025332616cf5a6d678601732cbd25e1eb5c30498`  
		Last Modified: Tue, 01 May 2018 09:53:51 GMT  
		Size: 21.3 MB (21251141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee67580428352e535254c8e159fa582df7254fd1a68891840fd0d7e093cfe01`  
		Last Modified: Tue, 01 May 2018 09:53:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f7a60173bb49390ee39dc8face0838366b213d567ddd913dee4ce3f35ab79b`  
		Last Modified: Tue, 01 May 2018 22:07:39 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153e98d833a178e0103f7204b60a4ea83224b2fd7f3b1c79b1134ca9a6c3032e`  
		Last Modified: Tue, 01 May 2018 22:07:41 GMT  
		Size: 12.9 MB (12940680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856705cf8f6b964aea1a3dd7ab2adaa18bb412e7ac6256be605a857d925f5359`  
		Last Modified: Tue, 01 May 2018 22:07:37 GMT  
		Size: 468.7 KB (468703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46c5927ea6fc505fc38dd5d401ee219a4ff3f336f3b3a53d49eefc629da358`  
		Last Modified: Tue, 01 May 2018 22:07:37 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9096c04b4971fc0ab80087d29c0d04d91e13741919ffede74e499c711e32591`  
		Last Modified: Tue, 01 May 2018 22:07:54 GMT  
		Size: 55.8 MB (55778476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f609976afa04276140ba632f1f3944691bb834a85e7cc0802c26156184535946`  
		Last Modified: Tue, 01 May 2018 22:07:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca569f5470163a07e2dd9cb0c15ca3e4761e31e03c9c6af69def7efe20f3ae4`  
		Last Modified: Tue, 01 May 2018 22:07:34 GMT  
		Size: 2.5 MB (2455515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660bf2546028b466dc54b29e51c3835834a4070b5620c1140088bf2360dd5a09`  
		Last Modified: Tue, 01 May 2018 22:08:07 GMT  
		Size: 99.1 MB (99056787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870a7b0f1bbff549ffd4c7b3141b6b16fe741ffed7d7279f57ab7d0777f2323c`  
		Last Modified: Tue, 01 May 2018 22:07:33 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:bbf4de54838ed580fc43d6612fc438bc745cd5750b4bd9e8469956b62bf5e1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263515236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289960b8e1af46f8136f83b98507245c77712a3e8850cd6ea63172c302e643dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:49:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:49:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_MAJOR=2.4
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sat, 28 Apr 2018 17:49:47 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 17:49:47 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 17:53:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 17:53:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 17:53:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 17:53:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:53:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 17:53:44 GMT
CMD ["irb"]
# Sun, 29 Apr 2018 00:31:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 29 Apr 2018 00:31:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:31:44 GMT
ENV GOSU_VERSION=1.10
# Sun, 29 Apr 2018 00:31:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 29 Apr 2018 00:31:49 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 29 Apr 2018 00:31:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 29 Apr 2018 00:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:32:49 GMT
ENV RAILS_ENV=production
# Sun, 29 Apr 2018 00:32:49 GMT
WORKDIR /usr/src/redmine
# Sun, 29 Apr 2018 00:32:50 GMT
ENV REDMINE_VERSION=3.4.5
# Sun, 29 Apr 2018 00:32:50 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sun, 29 Apr 2018 00:32:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 29 Apr 2018 00:36:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 29 Apr 2018 00:36:30 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 29 Apr 2018 00:36:31 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 29 Apr 2018 00:36:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 29 Apr 2018 00:36:31 GMT
EXPOSE 3000/tcp
# Sun, 29 Apr 2018 00:36:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ed54143c8d969665b70b41c179634296606ed56f18640b853067b9f47f79d`  
		Last Modified: Sat, 28 Apr 2018 18:20:31 GMT  
		Size: 14.6 MB (14636348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e568153250a765bd784dbe6a36fbb20db21f74060ecc604b1faf59fcf15b76`  
		Last Modified: Sat, 28 Apr 2018 18:20:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a640a6c3e1c9d53c2ee91484600bbdeea4a37e168fc7d59f4d59f311057dfe1a`  
		Last Modified: Sat, 28 Apr 2018 18:20:32 GMT  
		Size: 20.3 MB (20287182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b896ebcd525190f1cf30159e537fbb5acb3161f4fb1760c5e94e7a72a362ac6`  
		Last Modified: Sat, 28 Apr 2018 18:20:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1191a2662384cbb8bd6acf1a6b57bbba392e8d7f0ba1192dc180827c601e22`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc33a4a4fcb446e7986426e279c256696f7245231c789d286b8dac8165a4ca4`  
		Last Modified: Sun, 29 Apr 2018 00:47:05 GMT  
		Size: 13.1 MB (13102778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2039f1288cabb203a1cee2bb72435ee968d4350e7307e62ae7700af1141bd5b`  
		Last Modified: Sun, 29 Apr 2018 00:47:00 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d109b7d82abd53a18d976c70cce7fc65671644ee58210cbb6c8b3caa166faeee`  
		Last Modified: Sun, 29 Apr 2018 00:47:00 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5449e38c54a33089301430e1eeab1dd58a09c516ba2ad54d99b4895447f2a05a`  
		Last Modified: Sun, 29 Apr 2018 00:47:23 GMT  
		Size: 60.1 MB (60136947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4394bb12a57799f4faf90199c46ed5b4d466116d47748fc01eb93c797f1fd5a`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd6a555bf87d8de47576b02233a2174e6602df844d64c7877a656eb00d5dadc`  
		Last Modified: Sun, 29 Apr 2018 00:47:06 GMT  
		Size: 2.5 MB (2455512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a30ad0ec318629b8e185822382d75242fd445c44f2f0af02a7fa3f212acfeb8`  
		Last Modified: Sun, 29 Apr 2018 00:47:33 GMT  
		Size: 97.9 MB (97916162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a95195f75f665c1629170f5e6caefab538a1ef7a30e49ea297f1fadb8baeec0`  
		Last Modified: Sun, 29 Apr 2018 00:46:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:da28336cad2cdd72f5f9bb4e8c0584d89870bfc4398664cbf2eb476bc68e097b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259648641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7606fb355a3334b3872585b88e2fb6a2485f0aa915aca55a2f2e3631537def`
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
# Sat, 28 Apr 2018 11:24:09 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:24:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:31:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:31:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:31:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:31:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:31:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:31:12 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 18:39:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 18:40:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:40:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 18:40:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 18:40:34 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 18:40:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 18:43:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:43:37 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 18:43:39 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 18:43:40 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 18:43:40 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 18:43:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 18:55:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 18:55:23 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 18:55:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 18:55:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 18:55:26 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 18:55:26 GMT
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
	-	`sha256:b4e64091e87afbd7f3b77e942d5ef67cbb4ba7772bd19772a7deb1341496c8a5`  
		Last Modified: Sat, 28 Apr 2018 12:15:10 GMT  
		Size: 21.7 MB (21743800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d86bf4809c8ec32144ab018ebe8ff7bc0fdcd5c66fd10c1338afd988dbede`  
		Last Modified: Sat, 28 Apr 2018 12:15:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd4030bbc4071a28203156a6158cfc971e7e7e8cd0e22371693c604688bb727`  
		Last Modified: Sat, 28 Apr 2018 19:16:02 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef19b16aadb353700cde6768dfea329fd2461e051e6555380bc8b65bc4f6b75`  
		Last Modified: Sat, 28 Apr 2018 19:16:05 GMT  
		Size: 13.1 MB (13113449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b23ecc11c934c7bc1244cfa049b3f16286a5ca1b7be85fdae03149649feeb33`  
		Last Modified: Sat, 28 Apr 2018 19:16:00 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab35162d4a9d9524a78efe64be547fa924b3c8853e09e95ca0d2c1b01f48c7ce`  
		Last Modified: Sat, 28 Apr 2018 19:15:59 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64561afd76c357cc76b51b27e64b096134ffe27288c11403d484892a4f9335db`  
		Last Modified: Sat, 28 Apr 2018 19:16:13 GMT  
		Size: 58.1 MB (58121364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fc4735ec0f82b6021980d09ed5c27328fc042b001fbfff56615887f86234d`  
		Last Modified: Sat, 28 Apr 2018 19:15:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cb2118ace6ac998cef07cf2d88bb2041bb60ea93677b899c7a72a23062c60b`  
		Last Modified: Sat, 28 Apr 2018 19:15:58 GMT  
		Size: 2.5 MB (2455964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141fdf7b0ff6a4230e0646afc3fcc8268b5520f44f378afa92a8e15f1890c81`  
		Last Modified: Sat, 28 Apr 2018 19:16:21 GMT  
		Size: 100.2 MB (100200330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01bc039567d54b9e7e4b8f6c1a1fffeb70c7a77059ec680326c57074e080fdd`  
		Last Modified: Sat, 28 Apr 2018 19:15:56 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:6ae1ff981222f392f9f345719bcb16a8a164958a52b8fcabf8b51819f481d8de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264594776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:332d0dfca7c28c6d6dc53f358c97dfd7ad427f27197f53a11cc634a997fa8396`
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
# Sat, 28 Apr 2018 15:34:25 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:34:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:37:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:37:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:37:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:37:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:37:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:37:31 GMT
CMD ["irb"]
# Sat, 28 Apr 2018 21:04:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 28 Apr 2018 21:04:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:04:44 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 21:04:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 28 Apr 2018 21:04:46 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 28 Apr 2018 21:04:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 28 Apr 2018 21:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:05:23 GMT
ENV RAILS_ENV=production
# Sat, 28 Apr 2018 21:05:24 GMT
WORKDIR /usr/src/redmine
# Sat, 28 Apr 2018 21:05:24 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 28 Apr 2018 21:05:24 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 28 Apr 2018 21:05:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 28 Apr 2018 21:09:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 28 Apr 2018 21:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 28 Apr 2018 21:09:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 28 Apr 2018 21:10:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 28 Apr 2018 21:10:00 GMT
EXPOSE 3000/tcp
# Sat, 28 Apr 2018 21:10:01 GMT
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
	-	`sha256:54f7f93002cd60c79b6dc249efbc169cc4a3b64183f214e5a8d3e1b09bb9ba3f`  
		Last Modified: Sat, 28 Apr 2018 16:00:48 GMT  
		Size: 21.7 MB (21692872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734b556774547a03c8df92ef08a27c0588337aa688e81adb97539e7f2487541c`  
		Last Modified: Sat, 28 Apr 2018 16:00:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2fd5ac4c6a306b2fcfe75a5fe9131f87b52345c027c7c0e4dbd674cf91d0cf`  
		Last Modified: Sat, 28 Apr 2018 21:20:45 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e264f21f9e74a26bd6aa770ee2aa184a37027367b9461e5c315725244b0a4165`  
		Last Modified: Sat, 28 Apr 2018 21:20:50 GMT  
		Size: 13.1 MB (13129918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a47b988190bfc3d5d1067a0af0b784912144be8fbe1d6dd45e1d2a82aa6f7c`  
		Last Modified: Sat, 28 Apr 2018 21:20:42 GMT  
		Size: 486.8 KB (486818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896d4814b08cd959c0dd976cb6031078ac294c756c22ad0070de3c1d98b3fc9`  
		Last Modified: Sat, 28 Apr 2018 21:20:43 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d38c197a1a837211e5a8e48f99b486b4a7256b61b95279a04366cc199666a19`  
		Last Modified: Sat, 28 Apr 2018 21:21:06 GMT  
		Size: 59.1 MB (59101017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447d1fc9ed78af5d2a626406c1a3e7b55c55497a4bc421cab5f04cbfa546c34f`  
		Last Modified: Sat, 28 Apr 2018 21:20:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92431964d34a3983f7fc92213695650a7a1ef3100c65aeb8ac0f33302603fea2`  
		Last Modified: Sat, 28 Apr 2018 21:20:42 GMT  
		Size: 2.5 MB (2455514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c9635cdb74b367680b19d880b956af0c2070a927dcc4883a2ca46272093d94`  
		Last Modified: Sat, 28 Apr 2018 21:21:14 GMT  
		Size: 103.3 MB (103286647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042994b29089f6cbcd189089261c67921a49e0542355f1092ed11db20430ac6b`  
		Last Modified: Sat, 28 Apr 2018 21:20:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:d68d697c74bb60f75c8808e1d8b6b2f7406f142c3141dbd1fb52fbcb0d125dc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a9e5e8ec0d7dcd593aeefe484d82844db001bb5627aa23608dc4f04a72f33d1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283662470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156101ac0975d8563574d824c5945dda4e863a94630c121416d61797a5f2e666`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:52:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:52:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_MAJOR=2.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_VERSION=2.4.4
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sun, 29 Apr 2018 16:52:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 29 Apr 2018 16:52:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 29 Apr 2018 16:56:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 29 Apr 2018 16:56:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 29 Apr 2018 16:56:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 16:56:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 29 Apr 2018 16:56:02 GMT
CMD ["irb"]
# Thu, 03 May 2018 03:42:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 03 May 2018 03:42:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:42:30 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 03:42:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 03 May 2018 03:42:35 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 03 May 2018 03:42:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 03 May 2018 03:43:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:43:21 GMT
ENV RAILS_ENV=production
# Thu, 03 May 2018 03:43:22 GMT
WORKDIR /usr/src/redmine
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 03 May 2018 03:43:22 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 03 May 2018 03:43:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 03 May 2018 03:46:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 03 May 2018 03:46:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 03 May 2018 03:46:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 03 May 2018 03:46:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 03 May 2018 03:46:44 GMT
EXPOSE 3000/tcp
# Thu, 03 May 2018 03:46:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 21 May 2018 21:32:34 GMT
ENV PASSENGER_VERSION=5.3.1
# Mon, 21 May 2018 21:33:07 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 21 May 2018 21:33:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 21 May 2018 21:33:09 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a78650ca91970038096c478f5bc7b8155cf0226db13c86ccf40e0e476e23d5`  
		Last Modified: Sun, 29 Apr 2018 19:33:59 GMT  
		Size: 10.2 MB (10168983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860996a55f7fba99ae60e7be5fc25d885d982031d74467b9bcfc84f96e72def6`  
		Last Modified: Sun, 29 Apr 2018 19:33:57 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db3df565eff555b355459a6eab150063cc3cb47228a16be397dcd5682cceef`  
		Last Modified: Sun, 29 Apr 2018 19:34:04 GMT  
		Size: 21.3 MB (21290189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6894497d0e25a0b6ba853acc05ff57b7e5cf50ab09c5a555175f848f73a6a6f`  
		Last Modified: Sun, 29 Apr 2018 19:33:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab58405acb4af2467d9f2e41bd812edf1b09a1d99fd045b574e0ffb73abb0978`  
		Last Modified: Thu, 03 May 2018 04:50:22 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe08ba54663f3b5b8eb59e07104cf2c7d842049116ab786185961a23ffa6d9e9`  
		Last Modified: Thu, 03 May 2018 04:50:25 GMT  
		Size: 13.0 MB (12968169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9638a0f0496cc4bc67b454bbe11d3609261ac96cd8942c7cdbab36fbc6317b`  
		Last Modified: Thu, 03 May 2018 04:50:21 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228f3e7522efdf39b46e17fb618d36c713bc927886448cc721c4c8fd5f7392a`  
		Last Modified: Thu, 03 May 2018 04:50:19 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb363dbd665cb3675a98b0979b74c1423708352849e83aa74149816621e582`  
		Last Modified: Thu, 03 May 2018 04:50:36 GMT  
		Size: 59.3 MB (59260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab4ff67a7380b8f6cc6c6df1c1d83c480295c034a9998c7f7c5bb6d7761e306`  
		Last Modified: Thu, 03 May 2018 04:50:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3529dee0dc7fc5a6f710cb38b3250dafaa66984fcdf6268025910a27920458f4`  
		Last Modified: Thu, 03 May 2018 04:50:20 GMT  
		Size: 2.5 MB (2455510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b0278df283894547b54bce4068bfd8575a0fd0f07fd59f1bcca2a82d14dd9a`  
		Last Modified: Thu, 03 May 2018 04:50:49 GMT  
		Size: 99.5 MB (99541951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b05cb93487bb0ea3c06e61a58dfe253e6e934f9983e6974678086e7fd9843a3`  
		Last Modified: Thu, 03 May 2018 04:50:17 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec5aecfb619f0b221069bc595b6fd466e3778602a5d4f0269bc16127093ceb3`  
		Last Modified: Mon, 21 May 2018 21:34:45 GMT  
		Size: 18.7 MB (18742805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1804b43b1387ec9350c068adb748ba4020bac5725d1d85fb1d4697431fa694df`  
		Last Modified: Mon, 21 May 2018 21:34:43 GMT  
		Size: 4.5 MB (4458401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
