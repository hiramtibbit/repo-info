<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.9`](#redmine329)
-	[`redmine:3.2.9-passenger`](#redmine329-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.6`](#redmine336)
-	[`redmine:3.3.6-passenger`](#redmine336-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.4`](#redmine344)
-	[`redmine:3.4.4-passenger`](#redmine344-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:13569dab6616c49158b39a7f5cb2c7970881b5dfc5e051ec0b0a4b5f66dd321f
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
$ docker pull redmine@sha256:f810929be8cfe122cea1049146c2c7be429a23abd7a17b578b41ab0778648338
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260419087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4833bd4f6e084f02de271715e9fdf6b6f7b6bd69e94cb6467e587576daaa3b67`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:10:13 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 17 Feb 2018 22:58:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 17 Feb 2018 22:58:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 17 Feb 2018 23:02:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 17 Feb 2018 23:14:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 23:14:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 17 Feb 2018 23:14:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:58:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:59:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:59:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:59:07 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:59:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:46 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:59:46 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:59:46 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 04:59:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 04:59:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 05:02:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:02:59 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 05:03:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 05:03:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 05:03:00 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 05:03:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add45ef49d053f084c22a9cc5f8798bb50273788ff9030c844f637bc57fb5e3c`  
		Last Modified: Sun, 18 Feb 2018 01:13:35 GMT  
		Size: 21.8 MB (21836247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda51b43d9368a17f98a4bb12bb4b0c02ab55c3f85058f789b9c6cf1ac3fce0b`  
		Last Modified: Sun, 18 Feb 2018 01:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e032675b01b42559a0356c5b73ecb01c987ba13a31fab4ad9dcfab54aeb93`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83824ca60996e8c260d78755c8eaa3f11ea65fb20a5a825c5ca40c4ad1eb2a77`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 14.7 MB (14650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def8f266fd26b3932658f9524fb42f1dd023014c137581ca4d35a5df2625ee1`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ba34d32a5394d698b8742025b22e9ea3c3f5343d80d60629bbb199abf9a53`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7883f0b877993d4eee1fdf902e69032916cebc342f8606cc3abc4da30225b6`  
		Last Modified: Sun, 18 Feb 2018 05:18:58 GMT  
		Size: 59.3 MB (59273170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e719b4e216c1b8af9fa8948d88ddd7bbd9db24b6917c03f216ab71dc35129e3c`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2c258f6c4fbe2c2157f2c3d0a4ad30da004f531b019d4f4f9ba3a80443325`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 2.5 MB (2454041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89cead59b97110e3ab851d2b1be749467cc54ecf5da935b077dc4373b3ee09a`  
		Last Modified: Sun, 18 Feb 2018 05:19:00 GMT  
		Size: 98.9 MB (98896946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2431695884df6a20a1c006393f12b59d4dbb4082f34069cbb1f85dfdd03550f2`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:75e65f15844f9fc97340a0f0ddd13a2f8eb58273949fb4a36302f12cf3abf5f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253687271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbce0379261333366ea14a985d4a3ecb1b28f38af19db25ba24bce923597aa7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:27:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 22:27:00 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 22:27:01 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 22:27:01 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 02:45:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 02:45:14 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:51:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:51:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:51:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:51:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:51:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:51:20 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:45:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:46:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:46:30 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:46:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:46:32 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:46:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:47:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:47:33 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:47:34 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:47:34 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:47:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:47:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:52:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:52:55 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:52:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:52:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:52:56 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:52:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ca9b88c473d3be3575ff4ae0cad91c4ef255c03215cc8baf86ae31f9fdfb7`  
		Last Modified: Thu, 15 Feb 2018 23:06:29 GMT  
		Size: 9.1 MB (9133359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260097b731d55069d7db925a95b239a954a691694f422a9325b9e0fb3f05a9ec`  
		Last Modified: Thu, 15 Feb 2018 23:06:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cd7fe618fe5f51d5426dd289185eaa231f2bbe653b5bca28047b407bcc0710`  
		Last Modified: Sun, 18 Feb 2018 03:24:18 GMT  
		Size: 21.6 MB (21570414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50735e96aaa705a9298eb3a0760be5c7e45defd735aca388ddf6db7df8fd01ef`  
		Last Modified: Sun, 18 Feb 2018 03:24:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106d54cd6510d9ea66159b135c9d77bc39e4b2d2afac5297d1fe478472f432e1`  
		Last Modified: Sun, 18 Feb 2018 04:05:03 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eca6a668501d782d1740565caa06622a92299be51be5d2ecb08967070d69384`  
		Last Modified: Sun, 18 Feb 2018 04:05:07 GMT  
		Size: 14.3 MB (14347963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4857f19cf059b0edd31db81bc91b29aa5d08acce0007c3a953997dd65b9e78`  
		Last Modified: Sun, 18 Feb 2018 04:05:02 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3193b2bebde2d5608cc229baaa4105c3c3108ac01d72b2048b1628a533d3cd96`  
		Last Modified: Sun, 18 Feb 2018 04:05:01 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078587a426897e06dfdde749a134fe76ace7fe4830a23f0569eb18cf9e4c3a0`  
		Last Modified: Sun, 18 Feb 2018 04:05:30 GMT  
		Size: 56.6 MB (56611405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a150f134952a4934ad926e60aafaadcee91cc06a9bc2ea4b1f9c86e872f052`  
		Last Modified: Sun, 18 Feb 2018 04:05:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d29f6db9e4b3f963400341665dd61670dae5aeba7c70bdc4211f232a598ecb`  
		Last Modified: Sun, 18 Feb 2018 04:05:02 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83344698e8f07c0229fe6f9bca6d8e4c46be0f399df4f2ec21e971e563ab8924`  
		Last Modified: Sun, 18 Feb 2018 04:05:27 GMT  
		Size: 98.2 MB (98176501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b602fc792045002b0445a40a91c533faaa6001c469320b0304bc949af24b05b8`  
		Last Modified: Sun, 18 Feb 2018 04:05:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:1ff9031d8e64e0e44a8f4078794a4ed9d15579b9e9ac48b61fd25fe631b087f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247714891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9f124a479d0da9f1ba88aa6607d79c45ece1d43e07ab9773d6334fe9be562d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:42:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:42:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 02:33:18 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 02:33:18 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:38:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:38:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:38:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:38:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:38:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:38:50 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:32:51 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:33:20 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:33:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:33:22 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:33:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:34:20 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:34:20 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:34:21 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:34:21 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:34:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:39:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:39:25 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:39:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:39:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:39:26 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:39:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6420e9fe85a4dfc8671dec12a73cef954ad80f657f4554c5cdd39581792af816`  
		Last Modified: Thu, 15 Feb 2018 17:23:02 GMT  
		Size: 8.8 MB (8785785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d111bbb582d5bd73a5b3e81b059b5a652723f92838b08810b8e9b41a44f39a3`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaddc8a1df67b03569a277ab33159a48d39776be60350459660efb1d964f0f04`  
		Last Modified: Sun, 18 Feb 2018 03:10:35 GMT  
		Size: 21.4 MB (21421873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a38d1eb4d6ae0fe039ab63d95f9904e67e915e579199705ab0bc30600b5ae3`  
		Last Modified: Sun, 18 Feb 2018 03:10:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1133e6a4ceb12aae158f7a8ec43022490e5bc8c8ae1572d7d7d948f6ffefb87`  
		Last Modified: Sun, 18 Feb 2018 03:50:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e313c71afc9a3bd40c732ec2c9e3c3c43f61e6a243c759d1adb4e3d186b1e2bc`  
		Last Modified: Sun, 18 Feb 2018 03:50:41 GMT  
		Size: 14.1 MB (14134934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0901fb885f1c626b57d5e64a0ac50647dac14da97b64cf444163ed731ec8d`  
		Last Modified: Sun, 18 Feb 2018 03:50:37 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e640c889319d2df80d94d02b9ca72c1643888928c148b3718c8fcbfb62202ad`  
		Last Modified: Sun, 18 Feb 2018 03:50:35 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733c19ecfc54ecda353a11083d921580243e8cb583909fdbb2ed171c6ec26395`  
		Last Modified: Sun, 18 Feb 2018 03:50:50 GMT  
		Size: 54.3 MB (54345521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ac0ed83c1e96f2083432bbf5278543f592af04c9f97d25c8ed9ad5bad55efe`  
		Last Modified: Sun, 18 Feb 2018 03:50:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ba8665666540033bedf133c7d7ad91ec03ada7c196f79c3978ff3591d328bf`  
		Last Modified: Sun, 18 Feb 2018 03:50:36 GMT  
		Size: 2.5 MB (2454587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d59b75dd99b0f9ed0333b61c8a419c2667e613aa9281d4f2d5dcd31a976ca04`  
		Last Modified: Sun, 18 Feb 2018 03:51:00 GMT  
		Size: 97.4 MB (97383758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862e1238c37e98417eac92315f1efcfec345dd49d062215d3a64b9569c08709`  
		Last Modified: Sun, 18 Feb 2018 03:50:34 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:8af7746f64aaa7882c16991ae086d8f1b5cb55239089a834e4b761e957ee302f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.1 MB (252129052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bc20f6a013ff14795f185dbeb5838cb139eb426978cd4a0d7220418006a08b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:07:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:07:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 04:07:45 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 04:07:46 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 04:07:46 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 16 Feb 2018 04:07:47 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Fri, 16 Feb 2018 04:07:47 GMT
ENV BUNDLER_VERSION=1.16.1
# Fri, 16 Feb 2018 04:19:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Feb 2018 04:19:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Feb 2018 04:19:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Feb 2018 04:19:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 04:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 16 Feb 2018 04:19:15 GMT
CMD ["irb"]
# Fri, 16 Feb 2018 13:39:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Feb 2018 13:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:40:12 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 13:40:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 13:40:18 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Feb 2018 13:40:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Feb 2018 13:42:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:42:06 GMT
ENV RAILS_ENV=production
# Fri, 16 Feb 2018 13:42:07 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Feb 2018 13:42:07 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Feb 2018 13:42:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Feb 2018 13:42:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Feb 2018 13:52:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 13:52:21 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Feb 2018 13:52:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Feb 2018 13:52:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 13:52:24 GMT
EXPOSE 3000/tcp
# Fri, 16 Feb 2018 13:52:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccfe391b2c8441bb4bcd899cfb14b86c2525659cfb704a2027adaf784c1b064`  
		Last Modified: Fri, 16 Feb 2018 05:22:29 GMT  
		Size: 9.4 MB (9355476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7ec15a80ed0454ca97abf1366ef6c8e73c0095306d096f8c14dfd85b90fed4`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacf80a2603ec29d0c3177edae7612906d13692fdf98125096df079cd329fa4f`  
		Last Modified: Fri, 16 Feb 2018 05:22:34 GMT  
		Size: 21.2 MB (21240352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9798fd1b383c10d2f2e1d05bf19e9037547b85b9ec3d7f0530a7216f189fcb5b`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049c4667e08b87ffc3a48c6515df5383c89951b8575d436a9ae432031f04e59f`  
		Last Modified: Fri, 16 Feb 2018 14:17:42 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b52211a8a91a7ebca70692d83995ad53cb9dfaaf650f6e9904138af977dfbe`  
		Last Modified: Fri, 16 Feb 2018 14:17:47 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274ef55f7fb7cb703edac0511202cdcbc84325c9c60267fcf4519defb3daf504`  
		Last Modified: Fri, 16 Feb 2018 14:17:40 GMT  
		Size: 468.7 KB (468699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7009f4f1642b07549fa9753c8bc5bcef3c2e703eddbcfe51a6fe772c14447507`  
		Last Modified: Fri, 16 Feb 2018 14:17:40 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f72ec906f7315db72851e35ac51fbd67fbd1530f1e0135cec62e2f23eac8043`  
		Last Modified: Fri, 16 Feb 2018 14:17:56 GMT  
		Size: 55.8 MB (55795130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded757d2aef798eacc0c2e6229e47fbebbae0c6a7fb83bb11fc85a84d13faba6`  
		Last Modified: Fri, 16 Feb 2018 14:17:35 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb7f3cd523f7f2b3d1248c5210c3e2fcd8eefc1e9024c9d5056e32fcea54a1b`  
		Last Modified: Fri, 16 Feb 2018 14:17:39 GMT  
		Size: 2.5 MB (2454050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f6ad846be8c43a37a9fd4db1b695d4a3f570a2f3cb5e9d147885e825c8e79`  
		Last Modified: Fri, 16 Feb 2018 14:18:07 GMT  
		Size: 98.4 MB (98406027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1997c23dcc8fc9e3b69bdf46799abc2fc49c9e4c40b90364ef1c94eea8d6e66`  
		Last Modified: Fri, 16 Feb 2018 14:17:35 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:33952ccd860cf8e8e4013ccbd04dcff67dbb203afc09994255f11c7e7951439b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262817489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e0b64ff6b826da356c2ca48d19377378a9b3876989c752cb104500783eb478`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 05:00:41 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 05:00:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 05:05:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 05:05:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 05:05:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 05:05:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 05:05:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 05:05:07 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 15:24:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 15:25:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 15:25:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 15:25:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 15:25:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 15:26:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 15:26:58 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 15:26:59 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 15:26:59 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 15:26:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 15:27:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 15:32:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 15:47:14 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 15:47:14 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 15:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 15:47:15 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 15:47:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf8a023cee4478aac3e42dc9c080707f7dadb9192fc5a26f47c2f9d2b94201`  
		Last Modified: Wed, 07 Feb 2018 08:47:36 GMT  
		Size: 20.3 MB (20270533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93265ad4855a1e9361435df0a8472dad6d75908a967f2f5b4f98ecd6df2a0bb`  
		Last Modified: Wed, 07 Feb 2018 08:47:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a159e21c92274a288504e881722100ae8e8508c7cfb917c7bc911a18d8a9b4de`  
		Last Modified: Wed, 07 Feb 2018 16:51:00 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b5f0320cdd9784b720651a1983c9047c16d78236c32a23f86bcdb1a2a5889e`  
		Last Modified: Wed, 07 Feb 2018 16:51:09 GMT  
		Size: 14.8 MB (14817575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05f031aeea99e359ccd3a6eb3c1c6c6b3cb788fc71f2a851c1093301e11d999`  
		Last Modified: Wed, 07 Feb 2018 16:51:00 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d4fa48c2ce1388c46a43592d4571e6ee9b7f3ee4d93c49f107c6441ad5ae37`  
		Last Modified: Wed, 07 Feb 2018 16:51:01 GMT  
		Size: 8.6 KB (8568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c2a492909498c474271e579248c3881f7f3c47e2863fcc0a488c01adf146dd`  
		Last Modified: Wed, 07 Feb 2018 16:51:32 GMT  
		Size: 60.1 MB (60147242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17503d527d33f8f3fb724e53b3bdfafa2b222776b00ce6b25c9f7969e0c7a04`  
		Last Modified: Wed, 07 Feb 2018 16:51:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ec4b0bbfdc6dd65fbda8ac868b74d5752940fb486b4d46f966f1ce4757d7d`  
		Last Modified: Wed, 07 Feb 2018 16:51:09 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95163ecd8e45a35e29469de9d05e182b65f4ecb7d653ecb15436dd82a0ac03b`  
		Last Modified: Wed, 07 Feb 2018 16:51:50 GMT  
		Size: 97.2 MB (97208920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca59a0645a8802ad6378918cff7d8ed1636e48bf45be4747f263be79aa7fb85e`  
		Last Modified: Wed, 07 Feb 2018 16:51:01 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:85d617698cb4b7c4b2e4d6025d69659ccb484d096a3736e3d0b193661a2bfeca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259649037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ff873186f9654fd8a23cf2c4341badce6388f1f8caa2987bbbdc9e9a5a9c63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:09:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:09:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 06:09:48 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 06:09:50 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 06:09:52 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 01:50:23 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 01:50:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:01:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:01:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:01:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:01:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:02:01 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:43:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:44:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:44:23 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:44:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:44:31 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:44:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:47:15 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:47:16 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:47:17 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:47:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:47:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:57:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:57:08 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:57:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:57:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:57:12 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:57:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ee5ec8a068e0b0eb050931eb39551e708bf4b6e672265a9064d2f52e04a37`  
		Last Modified: Thu, 15 Feb 2018 06:47:52 GMT  
		Size: 10.2 MB (10157460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea4863957858b9bfe6972d64fcfe4c7100822b21dbac759a2fd0e13158d59e`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e74bc8294e791dd3b2ddf462f9d49594b7a10a05ce8864d92e563e3f2aa46`  
		Last Modified: Sun, 18 Feb 2018 03:21:55 GMT  
		Size: 22.3 MB (22320321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e012211edd7459266ccda4b534b5db191d3300034fd54e07077b778e813da2`  
		Last Modified: Sun, 18 Feb 2018 03:21:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b760f3f9e8f5bbf43869eefaf99aa2f981f6d08bbd7ddf81f5ec9e2dc3d26047`  
		Last Modified: Sun, 18 Feb 2018 04:23:50 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ea9005e6393fbe4bd037475195495946fbc063193a6d822ea8a1ca003873f3`  
		Last Modified: Sun, 18 Feb 2018 04:23:54 GMT  
		Size: 14.7 MB (14720957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525fd0d7d69c919e3c6b48012821ead2c37a2e9f32b96103354399c440ad790`  
		Last Modified: Sun, 18 Feb 2018 04:23:49 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a038e2b747b70d4d9d3400d07903cd5deaff16afe4cb00e69ba541652cf549e9`  
		Last Modified: Sun, 18 Feb 2018 04:23:48 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15f85eb983083f62651fbd493eb6ff446246fe492b02591c8ce912fc96c34b6`  
		Last Modified: Sun, 18 Feb 2018 04:24:02 GMT  
		Size: 58.1 MB (58133491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a801cd801ceaf9cf458d0caa0481b1347d680ac7db353c2e8b59e4a11605151a`  
		Last Modified: Sun, 18 Feb 2018 04:23:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e349a427ed4f47796c81a86b38f097cfd1ff5ca2b39cdd6fd31808e4d4078a59`  
		Last Modified: Sun, 18 Feb 2018 04:23:47 GMT  
		Size: 2.5 MB (2454588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa9e46a184194e41fb4e965d0c4309627dabcbb1c487d85f21bfc5c395eee56`  
		Last Modified: Sun, 18 Feb 2018 04:24:08 GMT  
		Size: 99.6 MB (99562199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05eba39ebaa875d7f3348a3de5b346dd9cea9b8e847e9526447c7769b8f0a05`  
		Last Modified: Sun, 18 Feb 2018 04:23:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:5090df5f89a83dbf9c057af7e8f71a3382ba3a71a251574599769299c51718bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (263983604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5795493a86be9ff8a7a6c6cc7b1de0803a541f2fd80266ff180b4d89640d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:47:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:47:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 08:47:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 08:50:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 08:50:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 08:50:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 08:50:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 08:50:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 08:50:50 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 13:01:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 13:02:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:02:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:02:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:02:13 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 13:02:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 13:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:02:46 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 13:02:46 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 13:02:46 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 13:02:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 13:02:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 13:05:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 13:05:24 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 13:05:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 13:05:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:05:25 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 13:05:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64961cc40148ffb163ca2599da0c05cbde730fdf536900b9b8f0078e156b6401`  
		Last Modified: Thu, 15 Feb 2018 09:11:00 GMT  
		Size: 10.0 MB (9980133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac745e8a10da2fca0458aefb3a5aa46bb13fb7bd309c294efab2c83db1a812d`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b09e1c937049cd930a2af2986608996c87c1ad444de9574ae5617fd11c51e6`  
		Last Modified: Thu, 15 Feb 2018 09:11:03 GMT  
		Size: 21.7 MB (21667178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9022de23e5456061ff66057dfd3d6d0eb6d61f0233c737919c8cb985edc5e4f`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b426c39dea7006489a448f70806b95896b64f1fa709525eb2a2600730690d4b0`  
		Last Modified: Thu, 15 Feb 2018 13:11:03 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66074e40cc2ca9eba1526e934e6e064460d326234ce72bc1d77a760760e2f594`  
		Last Modified: Thu, 15 Feb 2018 13:11:06 GMT  
		Size: 14.8 MB (14815073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b894922979f3fb8064cc6c1de33088c87c0ec1732085a3c3df8287a17dcf190`  
		Last Modified: Thu, 15 Feb 2018 13:11:01 GMT  
		Size: 486.8 KB (486828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7e3d59487ec50c9b2f433fd302e1a72ab7d970b82a581e541aa97b5b8f757b`  
		Last Modified: Thu, 15 Feb 2018 13:11:01 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a731b0937be032728a4fc3374ac182eb8afb6bfc1a4d6597603f15ce730d3460`  
		Last Modified: Thu, 15 Feb 2018 13:11:34 GMT  
		Size: 59.1 MB (59109033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727a829f67b9cc95d6fe1068c5afb3437ba6f7f90f1048b9f7b331d12feb06bd`  
		Last Modified: Thu, 15 Feb 2018 13:10:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0571397073f24b9d796b46276903c52cc018af672735abc726961ff8182b0`  
		Last Modified: Thu, 15 Feb 2018 13:11:02 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17c257719e4e9589029fcc39de47374c297bf171914476eed0c55f8785d1f33`  
		Last Modified: Thu, 15 Feb 2018 13:11:37 GMT  
		Size: 102.7 MB (102663455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2906a2e437d74e49c5312f9a953a0f4ff40dd5af00b66fcb1140ea05d8c81a`  
		Last Modified: Thu, 15 Feb 2018 13:11:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:b2dfa1df387ee97a99c3f425c275a9d3585761caf9bef91a09dff8058c7973f8
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

### `redmine:3.2` - linux; amd64

```console
$ docker pull redmine@sha256:66638a75f945d198c698af9f80e2656347760489835b9d012e52f6ced0857687
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (251010318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1143ca76b8262a91bdd9b14545f83600112ca4f0dade355936437dd44566e054`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 19:26:26 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 00:08:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 00:08:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 00:11:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 00:11:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 00:11:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 00:11:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:06:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:06:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:06:37 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:06:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:06:41 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:08:13 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:08:13 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:30:20 GMT
ENV REDMINE_VERSION=3.2.9
# Sun, 18 Feb 2018 04:30:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sun, 18 Feb 2018 04:30:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:33:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:33:06 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:33:06 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:33:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:33:07 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:33:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13b37ec8c33bc3f208043304b6909d3c2ef0840076ad4e0d67a82835ebf9fa5`  
		Last Modified: Sun, 18 Feb 2018 01:29:25 GMT  
		Size: 32.4 MB (32443808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5718bcaed796d08a571649b66c00c29dedcd84091b121d777acddf5116f3e9ed`  
		Last Modified: Sun, 18 Feb 2018 01:29:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a9e083038d38cc73ae613c564198dbfc72b3f53b8d05d6dfebee24b791125`  
		Last Modified: Sun, 18 Feb 2018 04:35:25 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5555ee84dd9a8c8d2ba18c3ef08915e72e97869aa0689bc97ace1058546555`  
		Last Modified: Sun, 18 Feb 2018 04:35:29 GMT  
		Size: 14.7 MB (14650860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc735fd5cfffe445f9a8e22a37ab2a4bcb70ca86ef03946f388f8edb47869eb`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d43bba34706da8d0fa285a4f34fbee46d6a43b753de1464935f19329f01bd`  
		Last Modified: Sun, 18 Feb 2018 04:35:22 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c237fe1087fe306af5a97b60ca43c29edd285bdd46504e5d296f5ba553a9ba`  
		Last Modified: Sun, 18 Feb 2018 04:35:41 GMT  
		Size: 59.3 MB (59272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c0d65c6c8e49fb63fe3a66817e5319a52cef1eb4237b99dbb89a4600b0189`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e94678f874b51c63fea38955cec5fd631a8dd9a0a24876f381b7733922f1c5`  
		Last Modified: Sun, 18 Feb 2018 04:52:54 GMT  
		Size: 2.3 MB (2347496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f648fe282ba114a674f9f7f6db50692118b52120cc32c9386e5d91ddc9d8af30`  
		Last Modified: Sun, 18 Feb 2018 04:53:12 GMT  
		Size: 79.0 MB (78988141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d1b363766e939f78fa6f63504ac9888a765d6720f60b445c5efbbbdcea309`  
		Last Modified: Sun, 18 Feb 2018 04:52:52 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:f6b6b51ffb236a77fea1fa8672d13367f1b2677be176d5b7f17f03fa477061ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243379173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e2e248c82ed032f01180c0341e38f2080ab77fbb44e87f68327fe6e621bf16`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:27:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 22:57:02 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 22:57:03 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 22:57:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:14:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:14:42 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:19:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:19:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:19:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:19:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:19:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:19:06 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:53:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:53:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:53:47 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:53:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:53:49 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:53:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:54:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:54:43 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:54:44 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:59:31 GMT
ENV REDMINE_VERSION=3.2.9
# Sun, 18 Feb 2018 03:59:32 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sun, 18 Feb 2018 03:59:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:04:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:04:32 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:04:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:04:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:04:33 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:04:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ca9b88c473d3be3575ff4ae0cad91c4ef255c03215cc8baf86ae31f9fdfb7`  
		Last Modified: Thu, 15 Feb 2018 23:06:29 GMT  
		Size: 9.1 MB (9133359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260097b731d55069d7db925a95b239a954a691694f422a9325b9e0fb3f05a9ec`  
		Last Modified: Thu, 15 Feb 2018 23:06:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28813f8e0432378ead212a4f153bc0ce3514651b96671512250e7280bd86eaa7`  
		Last Modified: Sun, 18 Feb 2018 03:29:25 GMT  
		Size: 31.3 MB (31335209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb9d9b7f2b93bf1db42be455506a8bc5afef001a26f248093bbe3bff850e82c`  
		Last Modified: Sun, 18 Feb 2018 03:29:15 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e669c43ae14e8facb5857da57862a14db239eb8da0fe80116f885573d00653`  
		Last Modified: Sun, 18 Feb 2018 04:06:19 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8c4fa96b1bfade4bec4fcb929bff6f86959d4c03e532579d4b9223346e817`  
		Last Modified: Sun, 18 Feb 2018 04:06:22 GMT  
		Size: 14.3 MB (14347939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce77c968f9f6651b7ec028e914de37e79b709e4b25a27b6792e6023acc4597bf`  
		Last Modified: Sun, 18 Feb 2018 04:06:18 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f98c2ee2de2512685e5d32e65e9ebc40147d43afea057b4c246aa5d31d05ee`  
		Last Modified: Sun, 18 Feb 2018 04:06:17 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf70036211458d77d45c7e4d093d2a94edf4b1c85cd337082476704aff3f829`  
		Last Modified: Sun, 18 Feb 2018 04:06:35 GMT  
		Size: 56.6 MB (56611256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d54b98acf2d93f1e0cb9244bcbf9449d0b227be01c79181a2c09e192fb50f68`  
		Last Modified: Sun, 18 Feb 2018 04:06:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ec4853fdf298b4ba07ace189fc5fc0aa772fca78ccbf18bb895f3c7f67c6fb`  
		Last Modified: Sun, 18 Feb 2018 04:07:00 GMT  
		Size: 2.3 MB (2347815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61b7eb8db3ef1d11a57cd3e30b600fe73f09c9397dbec61e856cba83a7cd7d8`  
		Last Modified: Sun, 18 Feb 2018 04:07:17 GMT  
		Size: 78.2 MB (78210553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da8f53ded9901dfcf295a882f319e596ecf8e2349f8f82a7b6c1b10085a0a64`  
		Last Modified: Sun, 18 Feb 2018 04:06:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:0ab9bd7163042dea3b9280688427d07e9cb5dabdfcefda7bdd7a26901f7691a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237547672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b51afe9ff9963335bf57d90cfd6cedd66034adfbdc9d4947ad30b76994e4bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:42:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:42:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:00:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:00:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:04:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:04:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:04:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:04:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:04:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:04:59 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:39:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:40:18 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:40:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:40:21 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:40:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:41:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:41:17 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:41:17 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:45:48 GMT
ENV REDMINE_VERSION=3.2.9
# Sun, 18 Feb 2018 03:45:48 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sun, 18 Feb 2018 03:45:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:50:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:50:10 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:50:10 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:50:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:50:11 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:50:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6420e9fe85a4dfc8671dec12a73cef954ad80f657f4554c5cdd39581792af816`  
		Last Modified: Thu, 15 Feb 2018 17:23:02 GMT  
		Size: 8.8 MB (8785785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d111bbb582d5bd73a5b3e81b059b5a652723f92838b08810b8e9b41a44f39a3`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c700475408770fe144f8e11ed5f34375a3a8cdbe3298c43c46920157599e9c`  
		Last Modified: Sun, 18 Feb 2018 03:16:09 GMT  
		Size: 31.1 MB (31094731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989c68589f0738b115d11b0039a83897662b168cb0906b5461f920086d62708b`  
		Last Modified: Sun, 18 Feb 2018 03:15:58 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f18cee6e4b83580dff427e28400990bf62e1f227ca9c947c07700edc84ad093`  
		Last Modified: Sun, 18 Feb 2018 03:51:50 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6f204f33b8b9c38a1471ceed3e3e2afc3a11c865b6f989ae402c6f4b0c5632`  
		Last Modified: Sun, 18 Feb 2018 03:51:53 GMT  
		Size: 14.1 MB (14134934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5c262f5b1bcd68ac567fc08a6fbc9e8ab2a757362d62ded58bfd31bbb7f76f`  
		Last Modified: Sun, 18 Feb 2018 03:51:48 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135dd1b6d8634e372dca91c54ecfcfc57293dd08870c50c4824193e1843d5674`  
		Last Modified: Sun, 18 Feb 2018 03:51:48 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b9e106534c821c7eb7c5be63642163a9046547f0e1c9dc42831ccb15d58404`  
		Last Modified: Sun, 18 Feb 2018 03:52:02 GMT  
		Size: 54.3 MB (54345501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a491874a637920ac265b836667273ac00bb2cb2f10446818a407416516d01b7`  
		Last Modified: Sun, 18 Feb 2018 03:51:46 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fd1b347ab1ba2a40d89e822e285468d9c349fea11f710e4b59c62a05d74027`  
		Last Modified: Sun, 18 Feb 2018 03:52:30 GMT  
		Size: 2.3 MB (2347826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffde529610b84bbbfa12025ee14c4b820741b1c552128415830af9377ca3a20f`  
		Last Modified: Sun, 18 Feb 2018 03:52:45 GMT  
		Size: 77.7 MB (77650458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fd9dc72014944b8f211bb6c30b5342c585f2fdc1bbfb4adc9f8d66b74eada`  
		Last Modified: Sun, 18 Feb 2018 03:52:29 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:aec88afce49c9229f081095d093440a38f893c4add3c6f048507d9f9b8a7f977
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242643311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60180639639c51532f2209cbcddc17804f4537f7c28ac12997ee68027f970421`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:07:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:07:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 05:06:38 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 05:06:38 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 05:06:39 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 16 Feb 2018 05:06:40 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Fri, 16 Feb 2018 05:06:40 GMT
ENV BUNDLER_VERSION=1.16.1
# Fri, 16 Feb 2018 05:14:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Feb 2018 05:14:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Feb 2018 05:14:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Feb 2018 05:14:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 05:14:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 16 Feb 2018 05:14:04 GMT
CMD ["irb"]
# Fri, 16 Feb 2018 13:53:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Feb 2018 13:53:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:53:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 13:53:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 13:53:54 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Feb 2018 13:53:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Feb 2018 13:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:55:41 GMT
ENV RAILS_ENV=production
# Fri, 16 Feb 2018 13:55:42 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Feb 2018 14:07:12 GMT
ENV REDMINE_VERSION=3.2.9
# Fri, 16 Feb 2018 14:07:13 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Fri, 16 Feb 2018 14:07:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Feb 2018 14:17:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 14:17:09 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Feb 2018 14:17:10 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Feb 2018 14:17:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:17:12 GMT
EXPOSE 3000/tcp
# Fri, 16 Feb 2018 14:17:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccfe391b2c8441bb4bcd899cfb14b86c2525659cfb704a2027adaf784c1b064`  
		Last Modified: Fri, 16 Feb 2018 05:22:29 GMT  
		Size: 9.4 MB (9355476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7ec15a80ed0454ca97abf1366ef6c8e73c0095306d096f8c14dfd85b90fed4`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6fb99903f46526bebb4d4fec6be05ce388474eac0ce4e43e3f7bdd2aaf3b1d`  
		Last Modified: Fri, 16 Feb 2018 05:31:31 GMT  
		Size: 32.0 MB (31999726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee6ecee66f616b972a60e98e81468adeff80f258b0c2491ff86061dad924a93`  
		Last Modified: Fri, 16 Feb 2018 05:31:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c314f829926b5c925ecf3bd0be99fc46713d84a35abef56d2b9b26fbbe2de87a`  
		Last Modified: Fri, 16 Feb 2018 14:19:11 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adee3e9d5754efb09d986cbae987b5886a08ddfefc8b4a4cc5f885116228fe7`  
		Last Modified: Fri, 16 Feb 2018 14:19:16 GMT  
		Size: 14.5 MB (14462684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b26fc6c4ead63bc008b4d3f070f1cd77e7abfe5ca481ff086b5cc268e79cc48`  
		Last Modified: Fri, 16 Feb 2018 14:19:09 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfcf41e307f79134971493718a947ceaf5cd379b1d6a08b053721438fb47414`  
		Last Modified: Fri, 16 Feb 2018 14:19:09 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cade52d35cf8168a2dec54b127b96eebdae8afa41ff4b6b958f5ffbdc498c175`  
		Last Modified: Fri, 16 Feb 2018 14:19:28 GMT  
		Size: 55.8 MB (55795238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35a8680b7dd469935081068408934e23d84b02dfb99d6fda96b4110cd07999b`  
		Last Modified: Fri, 16 Feb 2018 14:19:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398663005b2dad838eb314080e0b96aad4638377aba53745ed08594d4f68dcdc`  
		Last Modified: Fri, 16 Feb 2018 14:22:50 GMT  
		Size: 2.3 MB (2347495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1fcfc48a3ac2eee7aa4012e8d8e106731268e8512f9bd88d72d3a829f23d58`  
		Last Modified: Fri, 16 Feb 2018 14:26:17 GMT  
		Size: 78.3 MB (78267594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e456c2beeed746ae1acde619d75c2cd65a60ca656bf8b93682559cd2510238c6`  
		Last Modified: Fri, 16 Feb 2018 14:22:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:1ed705e47e17143baf91d939db660c252e05a77b47a8ef1833a8598f7835ce8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252787324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e1a634bbdab5816178fce76e998523f71fa96cba4a9d3d2b59609cc1c3a696`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 06:54:32 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 06:54:32 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 06:58:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 07:07:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 07:07:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 07:07:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 07:07:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 07:07:48 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 16:00:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 16:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 16:09:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 16:09:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 16:09:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 16:09:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 16:10:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 16:10:35 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 16:10:35 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 16:34:38 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 16:34:38 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 16:34:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 16:38:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 16:42:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 16:42:26 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 16:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 16:42:27 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 16:42:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b12c4f3e1cba7e20f956b6e600a73b9ba2428cddbf3853b1634373f9217f14`  
		Last Modified: Wed, 07 Feb 2018 11:24:16 GMT  
		Size: 29.3 MB (29347141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ded981266580b099670f4c97748a5a87982c376f68ea5fdce713f10a12a4ce`  
		Last Modified: Wed, 07 Feb 2018 11:24:02 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e25ac4bb81756a6f04d8320e563b3811a560bccd688d1eda5468cccdc72c264`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cf5a3de417d7a52329d65f3fc0699f9f0a8b57cf627cf22aad1c6c97bbfdc`  
		Last Modified: Wed, 07 Feb 2018 17:09:43 GMT  
		Size: 14.8 MB (14817502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a1a5d8d2599bb89c59f8b386ed131cb73c3422f83c121ac4952e0ce2ca5afc`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 480.6 KB (480575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5103c4f003d89ea5582e90f246a29009078d56db3992928e8f4eaf6644ed83e4`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 8.6 KB (8570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598d69170f812682199afaecaf76da272a30ec21b429d7e49e1244d2fd4484a8`  
		Last Modified: Wed, 07 Feb 2018 17:10:05 GMT  
		Size: 60.1 MB (60147202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a00c0a8d0d39acfa4d6f405d263684040549c2ff112434ce5d8b4d22e881be1`  
		Last Modified: Wed, 07 Feb 2018 17:09:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695053517dd1c50f202895cd83b7677d1e8084f0aa43e561d185a6e8ddc201e7`  
		Last Modified: Wed, 07 Feb 2018 17:23:05 GMT  
		Size: 2.3 MB (2347499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666cbc44504c3dca467c2283cc349f1e72ccbc927c56c6d65533ddc90450e12a`  
		Last Modified: Wed, 07 Feb 2018 17:23:26 GMT  
		Size: 78.2 MB (78208805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93077a9bc4a164ad3d2ad608855454711a22384e32fa500b4af428ef3fb4653`  
		Last Modified: Wed, 07 Feb 2018 17:23:01 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:40b88623c80108b059a33476ceb119412b75d5ac9e8767d35553c835893ff874
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250284098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cbfa7c63da3160199c2998f0a20482b5ba62c118bbaf7502765de6f876eba57`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:09:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:09:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 06:38:49 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 06:38:50 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 06:38:51 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:04:52 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:04:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:15:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:15:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:15:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:15:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:15:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:15:52 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:57:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:58:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:58:12 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:58:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:58:19 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:58:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:00:57 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:00:58 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:10:49 GMT
ENV REDMINE_VERSION=3.2.9
# Sun, 18 Feb 2018 04:10:50 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sun, 18 Feb 2018 04:10:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:23:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:23:09 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:23:12 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:23:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:23:16 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:23:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ee5ec8a068e0b0eb050931eb39551e708bf4b6e672265a9064d2f52e04a37`  
		Last Modified: Thu, 15 Feb 2018 06:47:52 GMT  
		Size: 10.2 MB (10157460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea4863957858b9bfe6972d64fcfe4c7100822b21dbac759a2fd0e13158d59e`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d6dafe28a54aea2c22c4a08315950998d492ead93cc0d1dbae59da0cb9e0a6`  
		Last Modified: Sun, 18 Feb 2018 03:27:30 GMT  
		Size: 33.5 MB (33482152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf07d3a9f09bbbdb5a0c1af46579109f3177365466f6982ebde07886bcabc0`  
		Last Modified: Sun, 18 Feb 2018 03:27:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f419ea267d265dc99e311e9e3021fa1756129c72486163cd8ef627b8fdbf3dd`  
		Last Modified: Sun, 18 Feb 2018 04:24:53 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7fa74187572704dada490f9265294ef2d22fdd041b0899bd8e78f5268d7d92`  
		Last Modified: Sun, 18 Feb 2018 04:24:56 GMT  
		Size: 14.7 MB (14720951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49331b00db660f0579a92c296ea04bcc39581a932186d913848e02bf2a5b5e50`  
		Last Modified: Sun, 18 Feb 2018 04:24:51 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35cc4fe989e420c55dc15b65ea3017e9f9cc12423b5b23087241897eb53336c`  
		Last Modified: Sun, 18 Feb 2018 04:24:50 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da656757ff8c7f41ab3f0fe1af0a0063ced87a54b5a78347e104f71073bf33a`  
		Last Modified: Sun, 18 Feb 2018 04:25:02 GMT  
		Size: 58.1 MB (58133691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3b81cf365da0330a36763ed3f53aa702a2ae42bdbc40d56e72475f3cecafe7`  
		Last Modified: Sun, 18 Feb 2018 04:24:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d06771d92020dcaca353e916c0844a7ac040e5502c8f885bca1215e77e1e459`  
		Last Modified: Sun, 18 Feb 2018 04:25:29 GMT  
		Size: 2.3 MB (2347826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b43e170c98528f40480991f9ba9ea9696fafeba36355bbd362097d1df3d1d0`  
		Last Modified: Sun, 18 Feb 2018 04:25:49 GMT  
		Size: 79.1 MB (79141990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e46a4e8ea418b8dd22113322f5cb0b92957c18e7eef802a1b914003104d386`  
		Last Modified: Sun, 18 Feb 2018 04:25:28 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:e31cbe590ff84a2f41ef11f9dc97e44209ac3b1f39187ad08f06d0b454657f67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256450945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a08ca9c13f614e113f5b05fa57607011090ce898d235cb31f705fed9c8b2778`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:47:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:47:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Feb 2018 09:05:13 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 09:05:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 09:08:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 09:08:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 09:08:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 09:08:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 09:08:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 09:08:38 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 13:05:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 13:05:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:05:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:05:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:05:47 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 13:05:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 13:06:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:06:19 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 13:06:20 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 13:08:37 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Feb 2018 13:08:37 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Feb 2018 13:08:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 13:10:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 13:10:46 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 13:10:47 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 13:10:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:10:47 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 13:10:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64961cc40148ffb163ca2599da0c05cbde730fdf536900b9b8f0078e156b6401`  
		Last Modified: Thu, 15 Feb 2018 09:11:00 GMT  
		Size: 10.0 MB (9980133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac745e8a10da2fca0458aefb3a5aa46bb13fb7bd309c294efab2c83db1a812d`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131620f83f0c7871a1e9c0932fe8113a2586e95342c422a09e7207b33cdaa63a`  
		Last Modified: Thu, 15 Feb 2018 09:13:55 GMT  
		Size: 35.5 MB (35543077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834525a823fe5df00e9d033cdf5cb585f78441140923975e4d163cdf346eaf2c`  
		Last Modified: Thu, 15 Feb 2018 09:13:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284bbf000637142b7f996839c5975348fdb3e3d6ff45918c770c4f24fcd1e31c`  
		Last Modified: Thu, 15 Feb 2018 13:11:59 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c635f136c827b1a9ac37a8723bb4c39fd8ddc3ba1142d7aca37acd56ad87c4`  
		Last Modified: Thu, 15 Feb 2018 13:12:02 GMT  
		Size: 14.8 MB (14815075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aed0ce8065a3b76b4d0f00d6b2ad4da54f3eca80670b49928a9d037b438aa1a`  
		Last Modified: Thu, 15 Feb 2018 13:11:57 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7650ed1c7f618646807875ddde75272d32360fa6238c70f27a38962efa267d`  
		Last Modified: Thu, 15 Feb 2018 13:11:59 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5127479be826172aae9fbd2b4292c9180f1cbc31b4ec8747e523179ec01222`  
		Last Modified: Thu, 15 Feb 2018 13:12:15 GMT  
		Size: 59.1 MB (59109019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2919dc1e2cfcb51d7dca7fd8ce3c9131da75f3e584c5390a6a41a3eda63d94c`  
		Last Modified: Thu, 15 Feb 2018 13:11:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34613e0ebddd8cdc480554bbd421ff7c01431cf113068514aafd7a566f9b68f1`  
		Last Modified: Thu, 15 Feb 2018 13:12:44 GMT  
		Size: 2.3 MB (2347501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f5d9637961988bfcaccb62fb3f1d090e22d4e9a1c5c1d106d532e9222a68ef`  
		Last Modified: Thu, 15 Feb 2018 13:13:17 GMT  
		Size: 81.4 MB (81361454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c48e2f36550f2af5d132be111310bc03b7aae6e6bc571408eb346eae10687bc`  
		Last Modified: Thu, 15 Feb 2018 13:12:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.9`

```console
$ docker pull redmine@sha256:b2dfa1df387ee97a99c3f425c275a9d3585761caf9bef91a09dff8058c7973f8
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

### `redmine:3.2.9` - linux; amd64

```console
$ docker pull redmine@sha256:66638a75f945d198c698af9f80e2656347760489835b9d012e52f6ced0857687
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (251010318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1143ca76b8262a91bdd9b14545f83600112ca4f0dade355936437dd44566e054`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 19:26:26 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 00:08:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 00:08:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 00:11:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 00:11:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 00:11:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 00:11:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:06:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:06:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:06:37 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:06:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:06:41 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:08:13 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:08:13 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:30:20 GMT
ENV REDMINE_VERSION=3.2.9
# Sun, 18 Feb 2018 04:30:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sun, 18 Feb 2018 04:30:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:33:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:33:06 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:33:06 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:33:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:33:07 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:33:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13b37ec8c33bc3f208043304b6909d3c2ef0840076ad4e0d67a82835ebf9fa5`  
		Last Modified: Sun, 18 Feb 2018 01:29:25 GMT  
		Size: 32.4 MB (32443808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5718bcaed796d08a571649b66c00c29dedcd84091b121d777acddf5116f3e9ed`  
		Last Modified: Sun, 18 Feb 2018 01:29:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a9e083038d38cc73ae613c564198dbfc72b3f53b8d05d6dfebee24b791125`  
		Last Modified: Sun, 18 Feb 2018 04:35:25 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5555ee84dd9a8c8d2ba18c3ef08915e72e97869aa0689bc97ace1058546555`  
		Last Modified: Sun, 18 Feb 2018 04:35:29 GMT  
		Size: 14.7 MB (14650860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc735fd5cfffe445f9a8e22a37ab2a4bcb70ca86ef03946f388f8edb47869eb`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d43bba34706da8d0fa285a4f34fbee46d6a43b753de1464935f19329f01bd`  
		Last Modified: Sun, 18 Feb 2018 04:35:22 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c237fe1087fe306af5a97b60ca43c29edd285bdd46504e5d296f5ba553a9ba`  
		Last Modified: Sun, 18 Feb 2018 04:35:41 GMT  
		Size: 59.3 MB (59272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c0d65c6c8e49fb63fe3a66817e5319a52cef1eb4237b99dbb89a4600b0189`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e94678f874b51c63fea38955cec5fd631a8dd9a0a24876f381b7733922f1c5`  
		Last Modified: Sun, 18 Feb 2018 04:52:54 GMT  
		Size: 2.3 MB (2347496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f648fe282ba114a674f9f7f6db50692118b52120cc32c9386e5d91ddc9d8af30`  
		Last Modified: Sun, 18 Feb 2018 04:53:12 GMT  
		Size: 79.0 MB (78988141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d1b363766e939f78fa6f63504ac9888a765d6720f60b445c5efbbbdcea309`  
		Last Modified: Sun, 18 Feb 2018 04:52:52 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm variant v5

```console
$ docker pull redmine@sha256:f6b6b51ffb236a77fea1fa8672d13367f1b2677be176d5b7f17f03fa477061ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243379173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e2e248c82ed032f01180c0341e38f2080ab77fbb44e87f68327fe6e621bf16`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:27:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 22:57:02 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 22:57:03 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 22:57:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:14:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:14:42 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:19:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:19:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:19:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:19:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:19:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:19:06 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:53:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:53:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:53:47 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:53:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:53:49 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:53:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:54:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:54:43 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:54:44 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:59:31 GMT
ENV REDMINE_VERSION=3.2.9
# Sun, 18 Feb 2018 03:59:32 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sun, 18 Feb 2018 03:59:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:04:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:04:32 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:04:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:04:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:04:33 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:04:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ca9b88c473d3be3575ff4ae0cad91c4ef255c03215cc8baf86ae31f9fdfb7`  
		Last Modified: Thu, 15 Feb 2018 23:06:29 GMT  
		Size: 9.1 MB (9133359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260097b731d55069d7db925a95b239a954a691694f422a9325b9e0fb3f05a9ec`  
		Last Modified: Thu, 15 Feb 2018 23:06:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28813f8e0432378ead212a4f153bc0ce3514651b96671512250e7280bd86eaa7`  
		Last Modified: Sun, 18 Feb 2018 03:29:25 GMT  
		Size: 31.3 MB (31335209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb9d9b7f2b93bf1db42be455506a8bc5afef001a26f248093bbe3bff850e82c`  
		Last Modified: Sun, 18 Feb 2018 03:29:15 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e669c43ae14e8facb5857da57862a14db239eb8da0fe80116f885573d00653`  
		Last Modified: Sun, 18 Feb 2018 04:06:19 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8c4fa96b1bfade4bec4fcb929bff6f86959d4c03e532579d4b9223346e817`  
		Last Modified: Sun, 18 Feb 2018 04:06:22 GMT  
		Size: 14.3 MB (14347939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce77c968f9f6651b7ec028e914de37e79b709e4b25a27b6792e6023acc4597bf`  
		Last Modified: Sun, 18 Feb 2018 04:06:18 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f98c2ee2de2512685e5d32e65e9ebc40147d43afea057b4c246aa5d31d05ee`  
		Last Modified: Sun, 18 Feb 2018 04:06:17 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf70036211458d77d45c7e4d093d2a94edf4b1c85cd337082476704aff3f829`  
		Last Modified: Sun, 18 Feb 2018 04:06:35 GMT  
		Size: 56.6 MB (56611256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d54b98acf2d93f1e0cb9244bcbf9449d0b227be01c79181a2c09e192fb50f68`  
		Last Modified: Sun, 18 Feb 2018 04:06:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ec4853fdf298b4ba07ace189fc5fc0aa772fca78ccbf18bb895f3c7f67c6fb`  
		Last Modified: Sun, 18 Feb 2018 04:07:00 GMT  
		Size: 2.3 MB (2347815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61b7eb8db3ef1d11a57cd3e30b600fe73f09c9397dbec61e856cba83a7cd7d8`  
		Last Modified: Sun, 18 Feb 2018 04:07:17 GMT  
		Size: 78.2 MB (78210553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da8f53ded9901dfcf295a882f319e596ecf8e2349f8f82a7b6c1b10085a0a64`  
		Last Modified: Sun, 18 Feb 2018 04:06:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm variant v7

```console
$ docker pull redmine@sha256:0ab9bd7163042dea3b9280688427d07e9cb5dabdfcefda7bdd7a26901f7691a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237547672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b51afe9ff9963335bf57d90cfd6cedd66034adfbdc9d4947ad30b76994e4bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:42:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:42:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:00:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:00:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:04:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:04:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:04:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:04:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:04:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:04:59 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:39:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:40:18 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:40:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:40:21 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:40:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:41:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:41:17 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:41:17 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:45:48 GMT
ENV REDMINE_VERSION=3.2.9
# Sun, 18 Feb 2018 03:45:48 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sun, 18 Feb 2018 03:45:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:50:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:50:10 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:50:10 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:50:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:50:11 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:50:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6420e9fe85a4dfc8671dec12a73cef954ad80f657f4554c5cdd39581792af816`  
		Last Modified: Thu, 15 Feb 2018 17:23:02 GMT  
		Size: 8.8 MB (8785785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d111bbb582d5bd73a5b3e81b059b5a652723f92838b08810b8e9b41a44f39a3`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c700475408770fe144f8e11ed5f34375a3a8cdbe3298c43c46920157599e9c`  
		Last Modified: Sun, 18 Feb 2018 03:16:09 GMT  
		Size: 31.1 MB (31094731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989c68589f0738b115d11b0039a83897662b168cb0906b5461f920086d62708b`  
		Last Modified: Sun, 18 Feb 2018 03:15:58 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f18cee6e4b83580dff427e28400990bf62e1f227ca9c947c07700edc84ad093`  
		Last Modified: Sun, 18 Feb 2018 03:51:50 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6f204f33b8b9c38a1471ceed3e3e2afc3a11c865b6f989ae402c6f4b0c5632`  
		Last Modified: Sun, 18 Feb 2018 03:51:53 GMT  
		Size: 14.1 MB (14134934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5c262f5b1bcd68ac567fc08a6fbc9e8ab2a757362d62ded58bfd31bbb7f76f`  
		Last Modified: Sun, 18 Feb 2018 03:51:48 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135dd1b6d8634e372dca91c54ecfcfc57293dd08870c50c4824193e1843d5674`  
		Last Modified: Sun, 18 Feb 2018 03:51:48 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b9e106534c821c7eb7c5be63642163a9046547f0e1c9dc42831ccb15d58404`  
		Last Modified: Sun, 18 Feb 2018 03:52:02 GMT  
		Size: 54.3 MB (54345501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a491874a637920ac265b836667273ac00bb2cb2f10446818a407416516d01b7`  
		Last Modified: Sun, 18 Feb 2018 03:51:46 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fd1b347ab1ba2a40d89e822e285468d9c349fea11f710e4b59c62a05d74027`  
		Last Modified: Sun, 18 Feb 2018 03:52:30 GMT  
		Size: 2.3 MB (2347826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffde529610b84bbbfa12025ee14c4b820741b1c552128415830af9377ca3a20f`  
		Last Modified: Sun, 18 Feb 2018 03:52:45 GMT  
		Size: 77.7 MB (77650458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3fd9dc72014944b8f211bb6c30b5342c585f2fdc1bbfb4adc9f8d66b74eada`  
		Last Modified: Sun, 18 Feb 2018 03:52:29 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:aec88afce49c9229f081095d093440a38f893c4add3c6f048507d9f9b8a7f977
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242643311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60180639639c51532f2209cbcddc17804f4537f7c28ac12997ee68027f970421`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:07:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:07:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 05:06:38 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 05:06:38 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 05:06:39 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 16 Feb 2018 05:06:40 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Fri, 16 Feb 2018 05:06:40 GMT
ENV BUNDLER_VERSION=1.16.1
# Fri, 16 Feb 2018 05:14:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Feb 2018 05:14:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Feb 2018 05:14:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Feb 2018 05:14:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 05:14:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 16 Feb 2018 05:14:04 GMT
CMD ["irb"]
# Fri, 16 Feb 2018 13:53:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Feb 2018 13:53:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:53:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 13:53:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 13:53:54 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Feb 2018 13:53:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Feb 2018 13:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:55:41 GMT
ENV RAILS_ENV=production
# Fri, 16 Feb 2018 13:55:42 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Feb 2018 14:07:12 GMT
ENV REDMINE_VERSION=3.2.9
# Fri, 16 Feb 2018 14:07:13 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Fri, 16 Feb 2018 14:07:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Feb 2018 14:17:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 14:17:09 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Feb 2018 14:17:10 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Feb 2018 14:17:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:17:12 GMT
EXPOSE 3000/tcp
# Fri, 16 Feb 2018 14:17:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccfe391b2c8441bb4bcd899cfb14b86c2525659cfb704a2027adaf784c1b064`  
		Last Modified: Fri, 16 Feb 2018 05:22:29 GMT  
		Size: 9.4 MB (9355476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7ec15a80ed0454ca97abf1366ef6c8e73c0095306d096f8c14dfd85b90fed4`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6fb99903f46526bebb4d4fec6be05ce388474eac0ce4e43e3f7bdd2aaf3b1d`  
		Last Modified: Fri, 16 Feb 2018 05:31:31 GMT  
		Size: 32.0 MB (31999726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee6ecee66f616b972a60e98e81468adeff80f258b0c2491ff86061dad924a93`  
		Last Modified: Fri, 16 Feb 2018 05:31:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c314f829926b5c925ecf3bd0be99fc46713d84a35abef56d2b9b26fbbe2de87a`  
		Last Modified: Fri, 16 Feb 2018 14:19:11 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adee3e9d5754efb09d986cbae987b5886a08ddfefc8b4a4cc5f885116228fe7`  
		Last Modified: Fri, 16 Feb 2018 14:19:16 GMT  
		Size: 14.5 MB (14462684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b26fc6c4ead63bc008b4d3f070f1cd77e7abfe5ca481ff086b5cc268e79cc48`  
		Last Modified: Fri, 16 Feb 2018 14:19:09 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfcf41e307f79134971493718a947ceaf5cd379b1d6a08b053721438fb47414`  
		Last Modified: Fri, 16 Feb 2018 14:19:09 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cade52d35cf8168a2dec54b127b96eebdae8afa41ff4b6b958f5ffbdc498c175`  
		Last Modified: Fri, 16 Feb 2018 14:19:28 GMT  
		Size: 55.8 MB (55795238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35a8680b7dd469935081068408934e23d84b02dfb99d6fda96b4110cd07999b`  
		Last Modified: Fri, 16 Feb 2018 14:19:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398663005b2dad838eb314080e0b96aad4638377aba53745ed08594d4f68dcdc`  
		Last Modified: Fri, 16 Feb 2018 14:22:50 GMT  
		Size: 2.3 MB (2347495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1fcfc48a3ac2eee7aa4012e8d8e106731268e8512f9bd88d72d3a829f23d58`  
		Last Modified: Fri, 16 Feb 2018 14:26:17 GMT  
		Size: 78.3 MB (78267594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e456c2beeed746ae1acde619d75c2cd65a60ca656bf8b93682559cd2510238c6`  
		Last Modified: Fri, 16 Feb 2018 14:22:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; 386

```console
$ docker pull redmine@sha256:1ed705e47e17143baf91d939db660c252e05a77b47a8ef1833a8598f7835ce8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252787324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e1a634bbdab5816178fce76e998523f71fa96cba4a9d3d2b59609cc1c3a696`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 06:54:32 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 06:54:32 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 06:58:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 07:07:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 07:07:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 07:07:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 07:07:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 07:07:48 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 16:00:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 16:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 16:09:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 16:09:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 16:09:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 16:09:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 16:10:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 16:10:35 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 16:10:35 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 16:34:38 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 16:34:38 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 16:34:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 16:38:12 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 16:42:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 16:42:26 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 16:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 16:42:27 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 16:42:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b12c4f3e1cba7e20f956b6e600a73b9ba2428cddbf3853b1634373f9217f14`  
		Last Modified: Wed, 07 Feb 2018 11:24:16 GMT  
		Size: 29.3 MB (29347141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ded981266580b099670f4c97748a5a87982c376f68ea5fdce713f10a12a4ce`  
		Last Modified: Wed, 07 Feb 2018 11:24:02 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e25ac4bb81756a6f04d8320e563b3811a560bccd688d1eda5468cccdc72c264`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cf5a3de417d7a52329d65f3fc0699f9f0a8b57cf627cf22aad1c6c97bbfdc`  
		Last Modified: Wed, 07 Feb 2018 17:09:43 GMT  
		Size: 14.8 MB (14817502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a1a5d8d2599bb89c59f8b386ed131cb73c3422f83c121ac4952e0ce2ca5afc`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 480.6 KB (480575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5103c4f003d89ea5582e90f246a29009078d56db3992928e8f4eaf6644ed83e4`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 8.6 KB (8570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598d69170f812682199afaecaf76da272a30ec21b429d7e49e1244d2fd4484a8`  
		Last Modified: Wed, 07 Feb 2018 17:10:05 GMT  
		Size: 60.1 MB (60147202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a00c0a8d0d39acfa4d6f405d263684040549c2ff112434ce5d8b4d22e881be1`  
		Last Modified: Wed, 07 Feb 2018 17:09:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695053517dd1c50f202895cd83b7677d1e8084f0aa43e561d185a6e8ddc201e7`  
		Last Modified: Wed, 07 Feb 2018 17:23:05 GMT  
		Size: 2.3 MB (2347499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666cbc44504c3dca467c2283cc349f1e72ccbc927c56c6d65533ddc90450e12a`  
		Last Modified: Wed, 07 Feb 2018 17:23:26 GMT  
		Size: 78.2 MB (78208805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93077a9bc4a164ad3d2ad608855454711a22384e32fa500b4af428ef3fb4653`  
		Last Modified: Wed, 07 Feb 2018 17:23:01 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; ppc64le

```console
$ docker pull redmine@sha256:40b88623c80108b059a33476ceb119412b75d5ac9e8767d35553c835893ff874
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250284098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cbfa7c63da3160199c2998f0a20482b5ba62c118bbaf7502765de6f876eba57`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:09:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:09:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 06:38:49 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 06:38:50 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 06:38:51 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:04:52 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:04:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:15:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:15:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:15:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:15:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:15:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:15:52 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:57:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:58:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:58:12 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:58:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:58:19 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:58:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:00:57 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:00:58 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:10:49 GMT
ENV REDMINE_VERSION=3.2.9
# Sun, 18 Feb 2018 04:10:50 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sun, 18 Feb 2018 04:10:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:23:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:23:09 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:23:12 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:23:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:23:16 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:23:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ee5ec8a068e0b0eb050931eb39551e708bf4b6e672265a9064d2f52e04a37`  
		Last Modified: Thu, 15 Feb 2018 06:47:52 GMT  
		Size: 10.2 MB (10157460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea4863957858b9bfe6972d64fcfe4c7100822b21dbac759a2fd0e13158d59e`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d6dafe28a54aea2c22c4a08315950998d492ead93cc0d1dbae59da0cb9e0a6`  
		Last Modified: Sun, 18 Feb 2018 03:27:30 GMT  
		Size: 33.5 MB (33482152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf07d3a9f09bbbdb5a0c1af46579109f3177365466f6982ebde07886bcabc0`  
		Last Modified: Sun, 18 Feb 2018 03:27:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f419ea267d265dc99e311e9e3021fa1756129c72486163cd8ef627b8fdbf3dd`  
		Last Modified: Sun, 18 Feb 2018 04:24:53 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7fa74187572704dada490f9265294ef2d22fdd041b0899bd8e78f5268d7d92`  
		Last Modified: Sun, 18 Feb 2018 04:24:56 GMT  
		Size: 14.7 MB (14720951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49331b00db660f0579a92c296ea04bcc39581a932186d913848e02bf2a5b5e50`  
		Last Modified: Sun, 18 Feb 2018 04:24:51 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35cc4fe989e420c55dc15b65ea3017e9f9cc12423b5b23087241897eb53336c`  
		Last Modified: Sun, 18 Feb 2018 04:24:50 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da656757ff8c7f41ab3f0fe1af0a0063ced87a54b5a78347e104f71073bf33a`  
		Last Modified: Sun, 18 Feb 2018 04:25:02 GMT  
		Size: 58.1 MB (58133691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3b81cf365da0330a36763ed3f53aa702a2ae42bdbc40d56e72475f3cecafe7`  
		Last Modified: Sun, 18 Feb 2018 04:24:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d06771d92020dcaca353e916c0844a7ac040e5502c8f885bca1215e77e1e459`  
		Last Modified: Sun, 18 Feb 2018 04:25:29 GMT  
		Size: 2.3 MB (2347826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b43e170c98528f40480991f9ba9ea9696fafeba36355bbd362097d1df3d1d0`  
		Last Modified: Sun, 18 Feb 2018 04:25:49 GMT  
		Size: 79.1 MB (79141990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e46a4e8ea418b8dd22113322f5cb0b92957c18e7eef802a1b914003104d386`  
		Last Modified: Sun, 18 Feb 2018 04:25:28 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; s390x

```console
$ docker pull redmine@sha256:e31cbe590ff84a2f41ef11f9dc97e44209ac3b1f39187ad08f06d0b454657f67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256450945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a08ca9c13f614e113f5b05fa57607011090ce898d235cb31f705fed9c8b2778`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:47:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:47:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Feb 2018 09:05:13 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 09:05:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 09:08:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 09:08:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 09:08:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 09:08:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 09:08:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 09:08:38 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 13:05:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 13:05:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:05:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:05:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:05:47 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 13:05:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 13:06:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:06:19 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 13:06:20 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 13:08:37 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Feb 2018 13:08:37 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Feb 2018 13:08:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 13:10:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 13:10:46 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 13:10:47 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 13:10:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:10:47 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 13:10:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64961cc40148ffb163ca2599da0c05cbde730fdf536900b9b8f0078e156b6401`  
		Last Modified: Thu, 15 Feb 2018 09:11:00 GMT  
		Size: 10.0 MB (9980133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac745e8a10da2fca0458aefb3a5aa46bb13fb7bd309c294efab2c83db1a812d`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131620f83f0c7871a1e9c0932fe8113a2586e95342c422a09e7207b33cdaa63a`  
		Last Modified: Thu, 15 Feb 2018 09:13:55 GMT  
		Size: 35.5 MB (35543077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834525a823fe5df00e9d033cdf5cb585f78441140923975e4d163cdf346eaf2c`  
		Last Modified: Thu, 15 Feb 2018 09:13:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284bbf000637142b7f996839c5975348fdb3e3d6ff45918c770c4f24fcd1e31c`  
		Last Modified: Thu, 15 Feb 2018 13:11:59 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c635f136c827b1a9ac37a8723bb4c39fd8ddc3ba1142d7aca37acd56ad87c4`  
		Last Modified: Thu, 15 Feb 2018 13:12:02 GMT  
		Size: 14.8 MB (14815075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aed0ce8065a3b76b4d0f00d6b2ad4da54f3eca80670b49928a9d037b438aa1a`  
		Last Modified: Thu, 15 Feb 2018 13:11:57 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7650ed1c7f618646807875ddde75272d32360fa6238c70f27a38962efa267d`  
		Last Modified: Thu, 15 Feb 2018 13:11:59 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5127479be826172aae9fbd2b4292c9180f1cbc31b4ec8747e523179ec01222`  
		Last Modified: Thu, 15 Feb 2018 13:12:15 GMT  
		Size: 59.1 MB (59109019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2919dc1e2cfcb51d7dca7fd8ce3c9131da75f3e584c5390a6a41a3eda63d94c`  
		Last Modified: Thu, 15 Feb 2018 13:11:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34613e0ebddd8cdc480554bbd421ff7c01431cf113068514aafd7a566f9b68f1`  
		Last Modified: Thu, 15 Feb 2018 13:12:44 GMT  
		Size: 2.3 MB (2347501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f5d9637961988bfcaccb62fb3f1d090e22d4e9a1c5c1d106d532e9222a68ef`  
		Last Modified: Thu, 15 Feb 2018 13:13:17 GMT  
		Size: 81.4 MB (81361454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c48e2f36550f2af5d132be111310bc03b7aae6e6bc571408eb346eae10687bc`  
		Last Modified: Thu, 15 Feb 2018 13:12:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.9-passenger`

```console
$ docker pull redmine@sha256:15bb7417c9f5cdb603741571e73f66728cccd270a47b3b4653c53a108f53768b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.9-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:cbcca84951dc7d131ee00c744ce95a33cf7714fa97406916fed309a0483f79aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269849005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190753ed6038c8674a827213b0169d93fd1e9b0526af2f2f06b87626e47ce51f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 19:26:26 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 00:08:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 00:08:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 00:11:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 00:11:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 00:11:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 00:11:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:06:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:06:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:06:37 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:06:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:06:41 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:08:13 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:08:13 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:30:20 GMT
ENV REDMINE_VERSION=3.2.9
# Sun, 18 Feb 2018 04:30:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sun, 18 Feb 2018 04:30:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:33:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:33:06 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:33:06 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:33:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:33:07 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:33:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sun, 18 Feb 2018 04:33:41 GMT
ENV PASSENGER_VERSION=5.2.0
# Sun, 18 Feb 2018 04:34:33 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:34:37 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sun, 18 Feb 2018 04:34:50 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13b37ec8c33bc3f208043304b6909d3c2ef0840076ad4e0d67a82835ebf9fa5`  
		Last Modified: Sun, 18 Feb 2018 01:29:25 GMT  
		Size: 32.4 MB (32443808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5718bcaed796d08a571649b66c00c29dedcd84091b121d777acddf5116f3e9ed`  
		Last Modified: Sun, 18 Feb 2018 01:29:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a9e083038d38cc73ae613c564198dbfc72b3f53b8d05d6dfebee24b791125`  
		Last Modified: Sun, 18 Feb 2018 04:35:25 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5555ee84dd9a8c8d2ba18c3ef08915e72e97869aa0689bc97ace1058546555`  
		Last Modified: Sun, 18 Feb 2018 04:35:29 GMT  
		Size: 14.7 MB (14650860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc735fd5cfffe445f9a8e22a37ab2a4bcb70ca86ef03946f388f8edb47869eb`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d43bba34706da8d0fa285a4f34fbee46d6a43b753de1464935f19329f01bd`  
		Last Modified: Sun, 18 Feb 2018 04:35:22 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c237fe1087fe306af5a97b60ca43c29edd285bdd46504e5d296f5ba553a9ba`  
		Last Modified: Sun, 18 Feb 2018 04:35:41 GMT  
		Size: 59.3 MB (59272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c0d65c6c8e49fb63fe3a66817e5319a52cef1eb4237b99dbb89a4600b0189`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e94678f874b51c63fea38955cec5fd631a8dd9a0a24876f381b7733922f1c5`  
		Last Modified: Sun, 18 Feb 2018 04:52:54 GMT  
		Size: 2.3 MB (2347496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f648fe282ba114a674f9f7f6db50692118b52120cc32c9386e5d91ddc9d8af30`  
		Last Modified: Sun, 18 Feb 2018 04:53:12 GMT  
		Size: 79.0 MB (78988141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d1b363766e939f78fa6f63504ac9888a765d6720f60b445c5efbbbdcea309`  
		Last Modified: Sun, 18 Feb 2018 04:52:52 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a9ddc4c3cc8bf265b34224e4f490e456244dad5546dee40a87e99cb29d2f2b`  
		Last Modified: Sun, 18 Feb 2018 04:53:55 GMT  
		Size: 14.5 MB (14483695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9c60ad9f18559b5d5d125e2583d58106ec21636a1948c3f1e3c5897c71fe67`  
		Last Modified: Sun, 18 Feb 2018 04:53:50 GMT  
		Size: 4.4 MB (4354992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:15bb7417c9f5cdb603741571e73f66728cccd270a47b3b4653c53a108f53768b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:cbcca84951dc7d131ee00c744ce95a33cf7714fa97406916fed309a0483f79aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269849005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190753ed6038c8674a827213b0169d93fd1e9b0526af2f2f06b87626e47ce51f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 19:26:26 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 00:08:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 00:08:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 00:11:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 00:11:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 00:11:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 00:11:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:06:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:06:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:06:37 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:06:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:06:41 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:08:13 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:08:13 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:30:20 GMT
ENV REDMINE_VERSION=3.2.9
# Sun, 18 Feb 2018 04:30:20 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sun, 18 Feb 2018 04:30:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:33:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:33:06 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:33:06 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:33:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:33:07 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:33:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sun, 18 Feb 2018 04:33:41 GMT
ENV PASSENGER_VERSION=5.2.0
# Sun, 18 Feb 2018 04:34:33 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:34:37 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sun, 18 Feb 2018 04:34:50 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13b37ec8c33bc3f208043304b6909d3c2ef0840076ad4e0d67a82835ebf9fa5`  
		Last Modified: Sun, 18 Feb 2018 01:29:25 GMT  
		Size: 32.4 MB (32443808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5718bcaed796d08a571649b66c00c29dedcd84091b121d777acddf5116f3e9ed`  
		Last Modified: Sun, 18 Feb 2018 01:29:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a9e083038d38cc73ae613c564198dbfc72b3f53b8d05d6dfebee24b791125`  
		Last Modified: Sun, 18 Feb 2018 04:35:25 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5555ee84dd9a8c8d2ba18c3ef08915e72e97869aa0689bc97ace1058546555`  
		Last Modified: Sun, 18 Feb 2018 04:35:29 GMT  
		Size: 14.7 MB (14650860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc735fd5cfffe445f9a8e22a37ab2a4bcb70ca86ef03946f388f8edb47869eb`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d43bba34706da8d0fa285a4f34fbee46d6a43b753de1464935f19329f01bd`  
		Last Modified: Sun, 18 Feb 2018 04:35:22 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c237fe1087fe306af5a97b60ca43c29edd285bdd46504e5d296f5ba553a9ba`  
		Last Modified: Sun, 18 Feb 2018 04:35:41 GMT  
		Size: 59.3 MB (59272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c0d65c6c8e49fb63fe3a66817e5319a52cef1eb4237b99dbb89a4600b0189`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e94678f874b51c63fea38955cec5fd631a8dd9a0a24876f381b7733922f1c5`  
		Last Modified: Sun, 18 Feb 2018 04:52:54 GMT  
		Size: 2.3 MB (2347496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f648fe282ba114a674f9f7f6db50692118b52120cc32c9386e5d91ddc9d8af30`  
		Last Modified: Sun, 18 Feb 2018 04:53:12 GMT  
		Size: 79.0 MB (78988141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d1b363766e939f78fa6f63504ac9888a765d6720f60b445c5efbbbdcea309`  
		Last Modified: Sun, 18 Feb 2018 04:52:52 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a9ddc4c3cc8bf265b34224e4f490e456244dad5546dee40a87e99cb29d2f2b`  
		Last Modified: Sun, 18 Feb 2018 04:53:55 GMT  
		Size: 14.5 MB (14483695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9c60ad9f18559b5d5d125e2583d58106ec21636a1948c3f1e3c5897c71fe67`  
		Last Modified: Sun, 18 Feb 2018 04:53:50 GMT  
		Size: 4.4 MB (4354992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:f6130ee71891d2e09b7fd6e04c9239affb143890efa876665e33822f92091f0c
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
$ docker pull redmine@sha256:476b594c88eee4375b4650853482565cd5ea57114125d8c935107e99639d6a8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251054713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1456e9ab24264f24df53bde54e2c13ef4d8e1b2e0be0d7ae4e0fa8a06174eee7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 19:26:26 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 00:08:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 00:08:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 00:11:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 00:11:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 00:11:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 00:11:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:06:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:06:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:06:37 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:06:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:06:41 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:08:13 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:08:13 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:08:14 GMT
ENV REDMINE_VERSION=3.3.6
# Sun, 18 Feb 2018 04:08:14 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Sun, 18 Feb 2018 04:08:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:10:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:13:07 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:13:07 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:13:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:17:21 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:17:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13b37ec8c33bc3f208043304b6909d3c2ef0840076ad4e0d67a82835ebf9fa5`  
		Last Modified: Sun, 18 Feb 2018 01:29:25 GMT  
		Size: 32.4 MB (32443808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5718bcaed796d08a571649b66c00c29dedcd84091b121d777acddf5116f3e9ed`  
		Last Modified: Sun, 18 Feb 2018 01:29:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a9e083038d38cc73ae613c564198dbfc72b3f53b8d05d6dfebee24b791125`  
		Last Modified: Sun, 18 Feb 2018 04:35:25 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5555ee84dd9a8c8d2ba18c3ef08915e72e97869aa0689bc97ace1058546555`  
		Last Modified: Sun, 18 Feb 2018 04:35:29 GMT  
		Size: 14.7 MB (14650860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc735fd5cfffe445f9a8e22a37ab2a4bcb70ca86ef03946f388f8edb47869eb`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d43bba34706da8d0fa285a4f34fbee46d6a43b753de1464935f19329f01bd`  
		Last Modified: Sun, 18 Feb 2018 04:35:22 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c237fe1087fe306af5a97b60ca43c29edd285bdd46504e5d296f5ba553a9ba`  
		Last Modified: Sun, 18 Feb 2018 04:35:41 GMT  
		Size: 59.3 MB (59272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c0d65c6c8e49fb63fe3a66817e5319a52cef1eb4237b99dbb89a4600b0189`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c3f990917574949c1634133156f1db68181c3206e4e064ca9d4474fec943fc`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 2.4 MB (2392397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c84d09148c350e5c743fe8269b8f197fce5e0c2cbd3e441c8049b0e1dfdc2a6`  
		Last Modified: Sun, 18 Feb 2018 04:35:39 GMT  
		Size: 79.0 MB (78987634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb6deac4fbc75e1b5e361cd2d67fa89156815f249aa5ab6ce068ee7c68a2ebb`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:ed7d245a27dac32745507f9e6dbefcf84ff0706dc29991f1baab4d97108e4cce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243423796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7c1be482d323a112b41527250311b1be7442f2d6eb03d6c8d595a6aa6f497c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:27:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 22:57:02 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 22:57:03 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 22:57:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:14:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:14:42 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:19:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:19:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:19:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:19:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:19:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:19:06 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:53:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:53:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:53:47 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:53:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:53:49 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:53:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:54:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:54:43 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:54:44 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:54:44 GMT
ENV REDMINE_VERSION=3.3.6
# Sun, 18 Feb 2018 03:54:44 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Sun, 18 Feb 2018 03:54:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:59:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:59:10 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:59:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:59:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:59:11 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:59:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ca9b88c473d3be3575ff4ae0cad91c4ef255c03215cc8baf86ae31f9fdfb7`  
		Last Modified: Thu, 15 Feb 2018 23:06:29 GMT  
		Size: 9.1 MB (9133359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260097b731d55069d7db925a95b239a954a691694f422a9325b9e0fb3f05a9ec`  
		Last Modified: Thu, 15 Feb 2018 23:06:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28813f8e0432378ead212a4f153bc0ce3514651b96671512250e7280bd86eaa7`  
		Last Modified: Sun, 18 Feb 2018 03:29:25 GMT  
		Size: 31.3 MB (31335209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb9d9b7f2b93bf1db42be455506a8bc5afef001a26f248093bbe3bff850e82c`  
		Last Modified: Sun, 18 Feb 2018 03:29:15 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e669c43ae14e8facb5857da57862a14db239eb8da0fe80116f885573d00653`  
		Last Modified: Sun, 18 Feb 2018 04:06:19 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8c4fa96b1bfade4bec4fcb929bff6f86959d4c03e532579d4b9223346e817`  
		Last Modified: Sun, 18 Feb 2018 04:06:22 GMT  
		Size: 14.3 MB (14347939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce77c968f9f6651b7ec028e914de37e79b709e4b25a27b6792e6023acc4597bf`  
		Last Modified: Sun, 18 Feb 2018 04:06:18 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f98c2ee2de2512685e5d32e65e9ebc40147d43afea057b4c246aa5d31d05ee`  
		Last Modified: Sun, 18 Feb 2018 04:06:17 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf70036211458d77d45c7e4d093d2a94edf4b1c85cd337082476704aff3f829`  
		Last Modified: Sun, 18 Feb 2018 04:06:35 GMT  
		Size: 56.6 MB (56611256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d54b98acf2d93f1e0cb9244bcbf9449d0b227be01c79181a2c09e192fb50f68`  
		Last Modified: Sun, 18 Feb 2018 04:06:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac76ba0a1f70f97561a325717277f8d0921d5071e50bbb44eed8a776d77eb59`  
		Last Modified: Sun, 18 Feb 2018 04:06:17 GMT  
		Size: 2.4 MB (2392602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc62510d83d91332a3cd974ba9cd502690e46dbe6be15de396d82dc846f90670`  
		Last Modified: Sun, 18 Feb 2018 04:06:36 GMT  
		Size: 78.2 MB (78210389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f64328f43d219e2feae3c436fa14d58d3c4ad986f02fb240cdd9dbb398e369c`  
		Last Modified: Sun, 18 Feb 2018 04:06:16 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:7a043b3ca6a0c7a89195c3831704e7b3d00c370ae0df60532decfe3033722654
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237592520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ccd9a36bd49a6f507403ec27790bf976d959b6546d3e7a9e30a34badb4538e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:42:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:42:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:00:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:00:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:04:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:04:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:04:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:04:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:04:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:04:59 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:39:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:40:18 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:40:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:40:21 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:40:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:41:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:41:17 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:41:17 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:41:17 GMT
ENV REDMINE_VERSION=3.3.6
# Sun, 18 Feb 2018 03:41:17 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Sun, 18 Feb 2018 03:41:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:45:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:45:33 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:45:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:45:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:45:34 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:45:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6420e9fe85a4dfc8671dec12a73cef954ad80f657f4554c5cdd39581792af816`  
		Last Modified: Thu, 15 Feb 2018 17:23:02 GMT  
		Size: 8.8 MB (8785785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d111bbb582d5bd73a5b3e81b059b5a652723f92838b08810b8e9b41a44f39a3`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c700475408770fe144f8e11ed5f34375a3a8cdbe3298c43c46920157599e9c`  
		Last Modified: Sun, 18 Feb 2018 03:16:09 GMT  
		Size: 31.1 MB (31094731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989c68589f0738b115d11b0039a83897662b168cb0906b5461f920086d62708b`  
		Last Modified: Sun, 18 Feb 2018 03:15:58 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f18cee6e4b83580dff427e28400990bf62e1f227ca9c947c07700edc84ad093`  
		Last Modified: Sun, 18 Feb 2018 03:51:50 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6f204f33b8b9c38a1471ceed3e3e2afc3a11c865b6f989ae402c6f4b0c5632`  
		Last Modified: Sun, 18 Feb 2018 03:51:53 GMT  
		Size: 14.1 MB (14134934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5c262f5b1bcd68ac567fc08a6fbc9e8ab2a757362d62ded58bfd31bbb7f76f`  
		Last Modified: Sun, 18 Feb 2018 03:51:48 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135dd1b6d8634e372dca91c54ecfcfc57293dd08870c50c4824193e1843d5674`  
		Last Modified: Sun, 18 Feb 2018 03:51:48 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b9e106534c821c7eb7c5be63642163a9046547f0e1c9dc42831ccb15d58404`  
		Last Modified: Sun, 18 Feb 2018 03:52:02 GMT  
		Size: 54.3 MB (54345501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a491874a637920ac265b836667273ac00bb2cb2f10446818a407416516d01b7`  
		Last Modified: Sun, 18 Feb 2018 03:51:46 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24af429299a5322fe33d19ba69b9739f239abba264a1ccb06ca1c81804469a90`  
		Last Modified: Sun, 18 Feb 2018 03:51:47 GMT  
		Size: 2.4 MB (2392604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45558c1c29aa9b3f8aa201d88fa3e923689354636090984bcb6d29421118e384`  
		Last Modified: Sun, 18 Feb 2018 03:52:04 GMT  
		Size: 77.7 MB (77650528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9705009367f21af9c3d4b79216ed90c67976210511b1b0a1e5245ea5a8df0a2`  
		Last Modified: Sun, 18 Feb 2018 03:51:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:275b223bacb01960a4c0f5ab48b2a9085a3f7d7557402a92b47f91428d876efe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242688321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b467d77057bb0e13f8cf9fcf5e59f376926a4ff8b1500b3d01fc63ca03b45f4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:07:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:07:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 05:06:38 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 05:06:38 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 05:06:39 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 16 Feb 2018 05:06:40 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Fri, 16 Feb 2018 05:06:40 GMT
ENV BUNDLER_VERSION=1.16.1
# Fri, 16 Feb 2018 05:14:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Feb 2018 05:14:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Feb 2018 05:14:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Feb 2018 05:14:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 05:14:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 16 Feb 2018 05:14:04 GMT
CMD ["irb"]
# Fri, 16 Feb 2018 13:53:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Feb 2018 13:53:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:53:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 13:53:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 13:53:54 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Feb 2018 13:53:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Feb 2018 13:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:55:41 GMT
ENV RAILS_ENV=production
# Fri, 16 Feb 2018 13:55:42 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Feb 2018 13:55:43 GMT
ENV REDMINE_VERSION=3.3.6
# Fri, 16 Feb 2018 13:55:43 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Fri, 16 Feb 2018 13:55:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Feb 2018 14:06:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 14:06:42 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Feb 2018 14:06:42 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Feb 2018 14:06:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:06:46 GMT
EXPOSE 3000/tcp
# Fri, 16 Feb 2018 14:06:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccfe391b2c8441bb4bcd899cfb14b86c2525659cfb704a2027adaf784c1b064`  
		Last Modified: Fri, 16 Feb 2018 05:22:29 GMT  
		Size: 9.4 MB (9355476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7ec15a80ed0454ca97abf1366ef6c8e73c0095306d096f8c14dfd85b90fed4`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6fb99903f46526bebb4d4fec6be05ce388474eac0ce4e43e3f7bdd2aaf3b1d`  
		Last Modified: Fri, 16 Feb 2018 05:31:31 GMT  
		Size: 32.0 MB (31999726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee6ecee66f616b972a60e98e81468adeff80f258b0c2491ff86061dad924a93`  
		Last Modified: Fri, 16 Feb 2018 05:31:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c314f829926b5c925ecf3bd0be99fc46713d84a35abef56d2b9b26fbbe2de87a`  
		Last Modified: Fri, 16 Feb 2018 14:19:11 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adee3e9d5754efb09d986cbae987b5886a08ddfefc8b4a4cc5f885116228fe7`  
		Last Modified: Fri, 16 Feb 2018 14:19:16 GMT  
		Size: 14.5 MB (14462684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b26fc6c4ead63bc008b4d3f070f1cd77e7abfe5ca481ff086b5cc268e79cc48`  
		Last Modified: Fri, 16 Feb 2018 14:19:09 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfcf41e307f79134971493718a947ceaf5cd379b1d6a08b053721438fb47414`  
		Last Modified: Fri, 16 Feb 2018 14:19:09 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cade52d35cf8168a2dec54b127b96eebdae8afa41ff4b6b958f5ffbdc498c175`  
		Last Modified: Fri, 16 Feb 2018 14:19:28 GMT  
		Size: 55.8 MB (55795238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35a8680b7dd469935081068408934e23d84b02dfb99d6fda96b4110cd07999b`  
		Last Modified: Fri, 16 Feb 2018 14:19:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f656ccaf350d5f522993b94c3b3ce24031679ca517da9a05da750d5fdf98783f`  
		Last Modified: Fri, 16 Feb 2018 14:19:08 GMT  
		Size: 2.4 MB (2392396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d64246c66f0cfbfd26c591fc1403b10a2b5a897657d3cf29bb148d4f30790b`  
		Last Modified: Fri, 16 Feb 2018 14:22:07 GMT  
		Size: 78.3 MB (78267703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6ed6e4891cc9d29e3bbe0b7ea51dabe7ab1a1a6c32a41724b32e783c28d658`  
		Last Modified: Fri, 16 Feb 2018 14:19:07 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:e7bce2c349328ab5835479b3e6fe575f4ffe76a73c534af0b566f0756cc02fce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252832626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6c97a7ddeacd86539ebfcd560fb9057943285d1563e747384887c82c06989f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 06:54:32 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 06:54:32 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 06:58:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 07:07:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 07:07:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 07:07:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 07:07:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 07:07:48 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 16:00:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 16:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 16:09:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 16:09:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 16:09:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 16:09:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 16:10:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 16:10:35 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 16:10:35 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 16:10:36 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 16:10:36 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 16:10:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 16:16:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 16:16:02 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 16:16:03 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 16:16:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 16:16:04 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 16:16:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b12c4f3e1cba7e20f956b6e600a73b9ba2428cddbf3853b1634373f9217f14`  
		Last Modified: Wed, 07 Feb 2018 11:24:16 GMT  
		Size: 29.3 MB (29347141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ded981266580b099670f4c97748a5a87982c376f68ea5fdce713f10a12a4ce`  
		Last Modified: Wed, 07 Feb 2018 11:24:02 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e25ac4bb81756a6f04d8320e563b3811a560bccd688d1eda5468cccdc72c264`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cf5a3de417d7a52329d65f3fc0699f9f0a8b57cf627cf22aad1c6c97bbfdc`  
		Last Modified: Wed, 07 Feb 2018 17:09:43 GMT  
		Size: 14.8 MB (14817502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a1a5d8d2599bb89c59f8b386ed131cb73c3422f83c121ac4952e0ce2ca5afc`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 480.6 KB (480575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5103c4f003d89ea5582e90f246a29009078d56db3992928e8f4eaf6644ed83e4`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 8.6 KB (8570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598d69170f812682199afaecaf76da272a30ec21b429d7e49e1244d2fd4484a8`  
		Last Modified: Wed, 07 Feb 2018 17:10:05 GMT  
		Size: 60.1 MB (60147202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a00c0a8d0d39acfa4d6f405d263684040549c2ff112434ce5d8b4d22e881be1`  
		Last Modified: Wed, 07 Feb 2018 17:09:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e713fb3f03ef73e0e5864f819310843191a2dea543114a1e83df59dfabbc68`  
		Last Modified: Wed, 07 Feb 2018 17:09:46 GMT  
		Size: 2.4 MB (2392399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938fd6aeefb804ec2f95e0337260d2c7fa6ec352411e2aa7166a376305868dbd`  
		Last Modified: Wed, 07 Feb 2018 17:10:08 GMT  
		Size: 78.2 MB (78209207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f6dd5d99d4206740315458b1047b4f244859302cf60e22c9634112738e93e7`  
		Last Modified: Wed, 07 Feb 2018 17:09:35 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:07f4846a0133821dba103b89c0ccf8a602478310060663fc03fffb69632c4e5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250328333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfbb309c290ae846e2248930487116c387078c6d1b73bbb9615d04354f6bc518`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:09:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:09:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 06:38:49 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 06:38:50 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 06:38:51 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:04:52 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:04:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:15:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:15:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:15:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:15:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:15:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:15:52 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:57:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:58:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:58:12 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:58:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:58:19 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:58:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:00:57 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:00:58 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:00:59 GMT
ENV REDMINE_VERSION=3.3.6
# Sun, 18 Feb 2018 04:01:00 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Sun, 18 Feb 2018 04:01:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:10:27 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:10:29 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:10:30 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:10:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:10:33 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:10:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ee5ec8a068e0b0eb050931eb39551e708bf4b6e672265a9064d2f52e04a37`  
		Last Modified: Thu, 15 Feb 2018 06:47:52 GMT  
		Size: 10.2 MB (10157460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea4863957858b9bfe6972d64fcfe4c7100822b21dbac759a2fd0e13158d59e`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d6dafe28a54aea2c22c4a08315950998d492ead93cc0d1dbae59da0cb9e0a6`  
		Last Modified: Sun, 18 Feb 2018 03:27:30 GMT  
		Size: 33.5 MB (33482152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf07d3a9f09bbbdb5a0c1af46579109f3177365466f6982ebde07886bcabc0`  
		Last Modified: Sun, 18 Feb 2018 03:27:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f419ea267d265dc99e311e9e3021fa1756129c72486163cd8ef627b8fdbf3dd`  
		Last Modified: Sun, 18 Feb 2018 04:24:53 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7fa74187572704dada490f9265294ef2d22fdd041b0899bd8e78f5268d7d92`  
		Last Modified: Sun, 18 Feb 2018 04:24:56 GMT  
		Size: 14.7 MB (14720951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49331b00db660f0579a92c296ea04bcc39581a932186d913848e02bf2a5b5e50`  
		Last Modified: Sun, 18 Feb 2018 04:24:51 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35cc4fe989e420c55dc15b65ea3017e9f9cc12423b5b23087241897eb53336c`  
		Last Modified: Sun, 18 Feb 2018 04:24:50 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da656757ff8c7f41ab3f0fe1af0a0063ced87a54b5a78347e104f71073bf33a`  
		Last Modified: Sun, 18 Feb 2018 04:25:02 GMT  
		Size: 58.1 MB (58133691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3b81cf365da0330a36763ed3f53aa702a2ae42bdbc40d56e72475f3cecafe7`  
		Last Modified: Sun, 18 Feb 2018 04:24:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d92dd8499c2cb0066afc0c277428fa263367d969d77178377c76d2a3dc228c`  
		Last Modified: Sun, 18 Feb 2018 04:24:49 GMT  
		Size: 2.4 MB (2392595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81a4e1ed94818c4d4f6d28c9b54e300b41e8865b23ff91be81c03c30bc1628f`  
		Last Modified: Sun, 18 Feb 2018 04:25:03 GMT  
		Size: 79.1 MB (79141457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be0f75ad82cb6a01af947b36715e95a393a3004a794b0ea3e5888361dbccbea`  
		Last Modified: Sun, 18 Feb 2018 04:24:46 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:173e5228adfff6bda1e4479f4bbf7f0ade0f29da149f11bb9a029e763de1c93d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256496184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f623c60b767f4d4485efe8c9eb2252418c859c54d8dbaeb13ef23d030df34a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:47:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:47:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Feb 2018 09:05:13 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 09:05:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 09:08:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 09:08:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 09:08:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 09:08:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 09:08:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 09:08:38 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 13:05:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 13:05:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:05:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:05:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:05:47 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 13:05:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 13:06:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:06:19 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 13:06:20 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 13:06:20 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Feb 2018 13:06:20 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Feb 2018 13:06:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 13:08:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 13:08:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 13:08:30 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 13:08:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:08:30 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 13:08:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64961cc40148ffb163ca2599da0c05cbde730fdf536900b9b8f0078e156b6401`  
		Last Modified: Thu, 15 Feb 2018 09:11:00 GMT  
		Size: 10.0 MB (9980133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac745e8a10da2fca0458aefb3a5aa46bb13fb7bd309c294efab2c83db1a812d`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131620f83f0c7871a1e9c0932fe8113a2586e95342c422a09e7207b33cdaa63a`  
		Last Modified: Thu, 15 Feb 2018 09:13:55 GMT  
		Size: 35.5 MB (35543077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834525a823fe5df00e9d033cdf5cb585f78441140923975e4d163cdf346eaf2c`  
		Last Modified: Thu, 15 Feb 2018 09:13:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284bbf000637142b7f996839c5975348fdb3e3d6ff45918c770c4f24fcd1e31c`  
		Last Modified: Thu, 15 Feb 2018 13:11:59 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c635f136c827b1a9ac37a8723bb4c39fd8ddc3ba1142d7aca37acd56ad87c4`  
		Last Modified: Thu, 15 Feb 2018 13:12:02 GMT  
		Size: 14.8 MB (14815075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aed0ce8065a3b76b4d0f00d6b2ad4da54f3eca80670b49928a9d037b438aa1a`  
		Last Modified: Thu, 15 Feb 2018 13:11:57 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7650ed1c7f618646807875ddde75272d32360fa6238c70f27a38962efa267d`  
		Last Modified: Thu, 15 Feb 2018 13:11:59 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5127479be826172aae9fbd2b4292c9180f1cbc31b4ec8747e523179ec01222`  
		Last Modified: Thu, 15 Feb 2018 13:12:15 GMT  
		Size: 59.1 MB (59109019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2919dc1e2cfcb51d7dca7fd8ce3c9131da75f3e584c5390a6a41a3eda63d94c`  
		Last Modified: Thu, 15 Feb 2018 13:11:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e19488450d8eff3172125056f8077d04e6bd86c3347764e9354294f1941a76`  
		Last Modified: Thu, 15 Feb 2018 13:11:57 GMT  
		Size: 2.4 MB (2392398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78891c9964ea91964525427aa67e64d7b90381396c03b6f66dd88c4ecabe6639`  
		Last Modified: Thu, 15 Feb 2018 13:12:30 GMT  
		Size: 81.4 MB (81361796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00992d1443828e5686874f5859a6374b5fa8ce87c10653da9275825f7913490d`  
		Last Modified: Thu, 15 Feb 2018 13:11:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.6`

```console
$ docker pull redmine@sha256:f6130ee71891d2e09b7fd6e04c9239affb143890efa876665e33822f92091f0c
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

### `redmine:3.3.6` - linux; amd64

```console
$ docker pull redmine@sha256:476b594c88eee4375b4650853482565cd5ea57114125d8c935107e99639d6a8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.1 MB (251054713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1456e9ab24264f24df53bde54e2c13ef4d8e1b2e0be0d7ae4e0fa8a06174eee7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 19:26:26 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 00:08:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 00:08:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 00:11:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 00:11:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 00:11:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 00:11:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:06:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:06:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:06:37 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:06:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:06:41 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:08:13 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:08:13 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:08:14 GMT
ENV REDMINE_VERSION=3.3.6
# Sun, 18 Feb 2018 04:08:14 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Sun, 18 Feb 2018 04:08:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:10:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:13:07 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:13:07 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:13:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:17:21 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:17:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13b37ec8c33bc3f208043304b6909d3c2ef0840076ad4e0d67a82835ebf9fa5`  
		Last Modified: Sun, 18 Feb 2018 01:29:25 GMT  
		Size: 32.4 MB (32443808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5718bcaed796d08a571649b66c00c29dedcd84091b121d777acddf5116f3e9ed`  
		Last Modified: Sun, 18 Feb 2018 01:29:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a9e083038d38cc73ae613c564198dbfc72b3f53b8d05d6dfebee24b791125`  
		Last Modified: Sun, 18 Feb 2018 04:35:25 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5555ee84dd9a8c8d2ba18c3ef08915e72e97869aa0689bc97ace1058546555`  
		Last Modified: Sun, 18 Feb 2018 04:35:29 GMT  
		Size: 14.7 MB (14650860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc735fd5cfffe445f9a8e22a37ab2a4bcb70ca86ef03946f388f8edb47869eb`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d43bba34706da8d0fa285a4f34fbee46d6a43b753de1464935f19329f01bd`  
		Last Modified: Sun, 18 Feb 2018 04:35:22 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c237fe1087fe306af5a97b60ca43c29edd285bdd46504e5d296f5ba553a9ba`  
		Last Modified: Sun, 18 Feb 2018 04:35:41 GMT  
		Size: 59.3 MB (59272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c0d65c6c8e49fb63fe3a66817e5319a52cef1eb4237b99dbb89a4600b0189`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c3f990917574949c1634133156f1db68181c3206e4e064ca9d4474fec943fc`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 2.4 MB (2392397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c84d09148c350e5c743fe8269b8f197fce5e0c2cbd3e441c8049b0e1dfdc2a6`  
		Last Modified: Sun, 18 Feb 2018 04:35:39 GMT  
		Size: 79.0 MB (78987634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb6deac4fbc75e1b5e361cd2d67fa89156815f249aa5ab6ce068ee7c68a2ebb`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm variant v5

```console
$ docker pull redmine@sha256:ed7d245a27dac32745507f9e6dbefcf84ff0706dc29991f1baab4d97108e4cce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243423796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7c1be482d323a112b41527250311b1be7442f2d6eb03d6c8d595a6aa6f497c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:27:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 22:57:02 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 22:57:03 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 22:57:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:14:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:14:42 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:19:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:19:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:19:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:19:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:19:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:19:06 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:53:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:53:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:53:47 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:53:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:53:49 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:53:51 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:54:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:54:43 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:54:44 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:54:44 GMT
ENV REDMINE_VERSION=3.3.6
# Sun, 18 Feb 2018 03:54:44 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Sun, 18 Feb 2018 03:54:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:59:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:59:10 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:59:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:59:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:59:11 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:59:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ca9b88c473d3be3575ff4ae0cad91c4ef255c03215cc8baf86ae31f9fdfb7`  
		Last Modified: Thu, 15 Feb 2018 23:06:29 GMT  
		Size: 9.1 MB (9133359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260097b731d55069d7db925a95b239a954a691694f422a9325b9e0fb3f05a9ec`  
		Last Modified: Thu, 15 Feb 2018 23:06:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28813f8e0432378ead212a4f153bc0ce3514651b96671512250e7280bd86eaa7`  
		Last Modified: Sun, 18 Feb 2018 03:29:25 GMT  
		Size: 31.3 MB (31335209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb9d9b7f2b93bf1db42be455506a8bc5afef001a26f248093bbe3bff850e82c`  
		Last Modified: Sun, 18 Feb 2018 03:29:15 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e669c43ae14e8facb5857da57862a14db239eb8da0fe80116f885573d00653`  
		Last Modified: Sun, 18 Feb 2018 04:06:19 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8c4fa96b1bfade4bec4fcb929bff6f86959d4c03e532579d4b9223346e817`  
		Last Modified: Sun, 18 Feb 2018 04:06:22 GMT  
		Size: 14.3 MB (14347939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce77c968f9f6651b7ec028e914de37e79b709e4b25a27b6792e6023acc4597bf`  
		Last Modified: Sun, 18 Feb 2018 04:06:18 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f98c2ee2de2512685e5d32e65e9ebc40147d43afea057b4c246aa5d31d05ee`  
		Last Modified: Sun, 18 Feb 2018 04:06:17 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf70036211458d77d45c7e4d093d2a94edf4b1c85cd337082476704aff3f829`  
		Last Modified: Sun, 18 Feb 2018 04:06:35 GMT  
		Size: 56.6 MB (56611256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d54b98acf2d93f1e0cb9244bcbf9449d0b227be01c79181a2c09e192fb50f68`  
		Last Modified: Sun, 18 Feb 2018 04:06:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac76ba0a1f70f97561a325717277f8d0921d5071e50bbb44eed8a776d77eb59`  
		Last Modified: Sun, 18 Feb 2018 04:06:17 GMT  
		Size: 2.4 MB (2392602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc62510d83d91332a3cd974ba9cd502690e46dbe6be15de396d82dc846f90670`  
		Last Modified: Sun, 18 Feb 2018 04:06:36 GMT  
		Size: 78.2 MB (78210389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f64328f43d219e2feae3c436fa14d58d3c4ad986f02fb240cdd9dbb398e369c`  
		Last Modified: Sun, 18 Feb 2018 04:06:16 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm variant v7

```console
$ docker pull redmine@sha256:7a043b3ca6a0c7a89195c3831704e7b3d00c370ae0df60532decfe3033722654
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237592520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ccd9a36bd49a6f507403ec27790bf976d959b6546d3e7a9e30a34badb4538e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:42:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:42:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:00:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:00:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:04:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:04:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:04:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:04:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:04:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:04:59 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:39:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:40:18 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:40:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:40:21 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:40:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:41:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:41:17 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:41:17 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:41:17 GMT
ENV REDMINE_VERSION=3.3.6
# Sun, 18 Feb 2018 03:41:17 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Sun, 18 Feb 2018 03:41:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:45:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:45:33 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:45:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:45:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:45:34 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:45:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6420e9fe85a4dfc8671dec12a73cef954ad80f657f4554c5cdd39581792af816`  
		Last Modified: Thu, 15 Feb 2018 17:23:02 GMT  
		Size: 8.8 MB (8785785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d111bbb582d5bd73a5b3e81b059b5a652723f92838b08810b8e9b41a44f39a3`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c700475408770fe144f8e11ed5f34375a3a8cdbe3298c43c46920157599e9c`  
		Last Modified: Sun, 18 Feb 2018 03:16:09 GMT  
		Size: 31.1 MB (31094731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989c68589f0738b115d11b0039a83897662b168cb0906b5461f920086d62708b`  
		Last Modified: Sun, 18 Feb 2018 03:15:58 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f18cee6e4b83580dff427e28400990bf62e1f227ca9c947c07700edc84ad093`  
		Last Modified: Sun, 18 Feb 2018 03:51:50 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6f204f33b8b9c38a1471ceed3e3e2afc3a11c865b6f989ae402c6f4b0c5632`  
		Last Modified: Sun, 18 Feb 2018 03:51:53 GMT  
		Size: 14.1 MB (14134934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5c262f5b1bcd68ac567fc08a6fbc9e8ab2a757362d62ded58bfd31bbb7f76f`  
		Last Modified: Sun, 18 Feb 2018 03:51:48 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135dd1b6d8634e372dca91c54ecfcfc57293dd08870c50c4824193e1843d5674`  
		Last Modified: Sun, 18 Feb 2018 03:51:48 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b9e106534c821c7eb7c5be63642163a9046547f0e1c9dc42831ccb15d58404`  
		Last Modified: Sun, 18 Feb 2018 03:52:02 GMT  
		Size: 54.3 MB (54345501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a491874a637920ac265b836667273ac00bb2cb2f10446818a407416516d01b7`  
		Last Modified: Sun, 18 Feb 2018 03:51:46 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24af429299a5322fe33d19ba69b9739f239abba264a1ccb06ca1c81804469a90`  
		Last Modified: Sun, 18 Feb 2018 03:51:47 GMT  
		Size: 2.4 MB (2392604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45558c1c29aa9b3f8aa201d88fa3e923689354636090984bcb6d29421118e384`  
		Last Modified: Sun, 18 Feb 2018 03:52:04 GMT  
		Size: 77.7 MB (77650528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9705009367f21af9c3d4b79216ed90c67976210511b1b0a1e5245ea5a8df0a2`  
		Last Modified: Sun, 18 Feb 2018 03:51:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:275b223bacb01960a4c0f5ab48b2a9085a3f7d7557402a92b47f91428d876efe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242688321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b467d77057bb0e13f8cf9fcf5e59f376926a4ff8b1500b3d01fc63ca03b45f4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:07:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:07:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 05:06:38 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 05:06:38 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 05:06:39 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Fri, 16 Feb 2018 05:06:40 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Fri, 16 Feb 2018 05:06:40 GMT
ENV BUNDLER_VERSION=1.16.1
# Fri, 16 Feb 2018 05:14:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Feb 2018 05:14:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Feb 2018 05:14:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Feb 2018 05:14:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 05:14:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 16 Feb 2018 05:14:04 GMT
CMD ["irb"]
# Fri, 16 Feb 2018 13:53:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Feb 2018 13:53:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:53:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 13:53:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 13:53:54 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Feb 2018 13:53:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Feb 2018 13:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:55:41 GMT
ENV RAILS_ENV=production
# Fri, 16 Feb 2018 13:55:42 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Feb 2018 13:55:43 GMT
ENV REDMINE_VERSION=3.3.6
# Fri, 16 Feb 2018 13:55:43 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Fri, 16 Feb 2018 13:55:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Feb 2018 14:06:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 14:06:42 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Feb 2018 14:06:42 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Feb 2018 14:06:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:06:46 GMT
EXPOSE 3000/tcp
# Fri, 16 Feb 2018 14:06:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccfe391b2c8441bb4bcd899cfb14b86c2525659cfb704a2027adaf784c1b064`  
		Last Modified: Fri, 16 Feb 2018 05:22:29 GMT  
		Size: 9.4 MB (9355476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7ec15a80ed0454ca97abf1366ef6c8e73c0095306d096f8c14dfd85b90fed4`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6fb99903f46526bebb4d4fec6be05ce388474eac0ce4e43e3f7bdd2aaf3b1d`  
		Last Modified: Fri, 16 Feb 2018 05:31:31 GMT  
		Size: 32.0 MB (31999726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee6ecee66f616b972a60e98e81468adeff80f258b0c2491ff86061dad924a93`  
		Last Modified: Fri, 16 Feb 2018 05:31:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c314f829926b5c925ecf3bd0be99fc46713d84a35abef56d2b9b26fbbe2de87a`  
		Last Modified: Fri, 16 Feb 2018 14:19:11 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adee3e9d5754efb09d986cbae987b5886a08ddfefc8b4a4cc5f885116228fe7`  
		Last Modified: Fri, 16 Feb 2018 14:19:16 GMT  
		Size: 14.5 MB (14462684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b26fc6c4ead63bc008b4d3f070f1cd77e7abfe5ca481ff086b5cc268e79cc48`  
		Last Modified: Fri, 16 Feb 2018 14:19:09 GMT  
		Size: 468.7 KB (468695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfcf41e307f79134971493718a947ceaf5cd379b1d6a08b053721438fb47414`  
		Last Modified: Fri, 16 Feb 2018 14:19:09 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cade52d35cf8168a2dec54b127b96eebdae8afa41ff4b6b958f5ffbdc498c175`  
		Last Modified: Fri, 16 Feb 2018 14:19:28 GMT  
		Size: 55.8 MB (55795238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35a8680b7dd469935081068408934e23d84b02dfb99d6fda96b4110cd07999b`  
		Last Modified: Fri, 16 Feb 2018 14:19:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f656ccaf350d5f522993b94c3b3ce24031679ca517da9a05da750d5fdf98783f`  
		Last Modified: Fri, 16 Feb 2018 14:19:08 GMT  
		Size: 2.4 MB (2392396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d64246c66f0cfbfd26c591fc1403b10a2b5a897657d3cf29bb148d4f30790b`  
		Last Modified: Fri, 16 Feb 2018 14:22:07 GMT  
		Size: 78.3 MB (78267703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6ed6e4891cc9d29e3bbe0b7ea51dabe7ab1a1a6c32a41724b32e783c28d658`  
		Last Modified: Fri, 16 Feb 2018 14:19:07 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; 386

```console
$ docker pull redmine@sha256:e7bce2c349328ab5835479b3e6fe575f4ffe76a73c534af0b566f0756cc02fce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252832626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6c97a7ddeacd86539ebfcd560fb9057943285d1563e747384887c82c06989f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 06:54:32 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 06:54:32 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 06:58:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 07:07:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 07:07:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 07:07:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 07:07:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 07:07:48 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 16:00:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 16:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 16:09:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 16:09:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 16:09:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 16:09:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 16:10:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 16:10:35 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 16:10:35 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 16:10:36 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 16:10:36 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 16:10:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 16:16:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 16:16:02 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 16:16:03 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 16:16:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 16:16:04 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 16:16:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b12c4f3e1cba7e20f956b6e600a73b9ba2428cddbf3853b1634373f9217f14`  
		Last Modified: Wed, 07 Feb 2018 11:24:16 GMT  
		Size: 29.3 MB (29347141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ded981266580b099670f4c97748a5a87982c376f68ea5fdce713f10a12a4ce`  
		Last Modified: Wed, 07 Feb 2018 11:24:02 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e25ac4bb81756a6f04d8320e563b3811a560bccd688d1eda5468cccdc72c264`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cf5a3de417d7a52329d65f3fc0699f9f0a8b57cf627cf22aad1c6c97bbfdc`  
		Last Modified: Wed, 07 Feb 2018 17:09:43 GMT  
		Size: 14.8 MB (14817502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a1a5d8d2599bb89c59f8b386ed131cb73c3422f83c121ac4952e0ce2ca5afc`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 480.6 KB (480575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5103c4f003d89ea5582e90f246a29009078d56db3992928e8f4eaf6644ed83e4`  
		Last Modified: Wed, 07 Feb 2018 17:09:36 GMT  
		Size: 8.6 KB (8570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598d69170f812682199afaecaf76da272a30ec21b429d7e49e1244d2fd4484a8`  
		Last Modified: Wed, 07 Feb 2018 17:10:05 GMT  
		Size: 60.1 MB (60147202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a00c0a8d0d39acfa4d6f405d263684040549c2ff112434ce5d8b4d22e881be1`  
		Last Modified: Wed, 07 Feb 2018 17:09:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e713fb3f03ef73e0e5864f819310843191a2dea543114a1e83df59dfabbc68`  
		Last Modified: Wed, 07 Feb 2018 17:09:46 GMT  
		Size: 2.4 MB (2392399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938fd6aeefb804ec2f95e0337260d2c7fa6ec352411e2aa7166a376305868dbd`  
		Last Modified: Wed, 07 Feb 2018 17:10:08 GMT  
		Size: 78.2 MB (78209207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f6dd5d99d4206740315458b1047b4f244859302cf60e22c9634112738e93e7`  
		Last Modified: Wed, 07 Feb 2018 17:09:35 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; ppc64le

```console
$ docker pull redmine@sha256:07f4846a0133821dba103b89c0ccf8a602478310060663fc03fffb69632c4e5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250328333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfbb309c290ae846e2248930487116c387078c6d1b73bbb9615d04354f6bc518`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:09:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:09:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 06:38:49 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 06:38:50 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 06:38:51 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 03:04:52 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 03:04:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 03:15:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 03:15:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 03:15:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 03:15:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 03:15:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 03:15:52 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:57:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:58:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:58:12 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:58:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:58:19 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:58:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:00:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:00:57 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:00:58 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:00:59 GMT
ENV REDMINE_VERSION=3.3.6
# Sun, 18 Feb 2018 04:01:00 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Sun, 18 Feb 2018 04:01:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:10:27 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:10:29 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:10:30 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:10:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:10:33 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:10:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ee5ec8a068e0b0eb050931eb39551e708bf4b6e672265a9064d2f52e04a37`  
		Last Modified: Thu, 15 Feb 2018 06:47:52 GMT  
		Size: 10.2 MB (10157460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea4863957858b9bfe6972d64fcfe4c7100822b21dbac759a2fd0e13158d59e`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d6dafe28a54aea2c22c4a08315950998d492ead93cc0d1dbae59da0cb9e0a6`  
		Last Modified: Sun, 18 Feb 2018 03:27:30 GMT  
		Size: 33.5 MB (33482152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf07d3a9f09bbbdb5a0c1af46579109f3177365466f6982ebde07886bcabc0`  
		Last Modified: Sun, 18 Feb 2018 03:27:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f419ea267d265dc99e311e9e3021fa1756129c72486163cd8ef627b8fdbf3dd`  
		Last Modified: Sun, 18 Feb 2018 04:24:53 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7fa74187572704dada490f9265294ef2d22fdd041b0899bd8e78f5268d7d92`  
		Last Modified: Sun, 18 Feb 2018 04:24:56 GMT  
		Size: 14.7 MB (14720951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49331b00db660f0579a92c296ea04bcc39581a932186d913848e02bf2a5b5e50`  
		Last Modified: Sun, 18 Feb 2018 04:24:51 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35cc4fe989e420c55dc15b65ea3017e9f9cc12423b5b23087241897eb53336c`  
		Last Modified: Sun, 18 Feb 2018 04:24:50 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da656757ff8c7f41ab3f0fe1af0a0063ced87a54b5a78347e104f71073bf33a`  
		Last Modified: Sun, 18 Feb 2018 04:25:02 GMT  
		Size: 58.1 MB (58133691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3b81cf365da0330a36763ed3f53aa702a2ae42bdbc40d56e72475f3cecafe7`  
		Last Modified: Sun, 18 Feb 2018 04:24:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d92dd8499c2cb0066afc0c277428fa263367d969d77178377c76d2a3dc228c`  
		Last Modified: Sun, 18 Feb 2018 04:24:49 GMT  
		Size: 2.4 MB (2392595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81a4e1ed94818c4d4f6d28c9b54e300b41e8865b23ff91be81c03c30bc1628f`  
		Last Modified: Sun, 18 Feb 2018 04:25:03 GMT  
		Size: 79.1 MB (79141457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be0f75ad82cb6a01af947b36715e95a393a3004a794b0ea3e5888361dbccbea`  
		Last Modified: Sun, 18 Feb 2018 04:24:46 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; s390x

```console
$ docker pull redmine@sha256:173e5228adfff6bda1e4479f4bbf7f0ade0f29da149f11bb9a029e763de1c93d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256496184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f623c60b767f4d4485efe8c9eb2252418c859c54d8dbaeb13ef23d030df34a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:47:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:47:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Feb 2018 09:05:12 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Feb 2018 09:05:13 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 09:05:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 09:08:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 09:08:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 09:08:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 09:08:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 09:08:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 09:08:38 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 13:05:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 13:05:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:05:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:05:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:05:47 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 13:05:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 13:06:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:06:19 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 13:06:20 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 13:06:20 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Feb 2018 13:06:20 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Feb 2018 13:06:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 13:08:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 13:08:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 13:08:30 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 13:08:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:08:30 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 13:08:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64961cc40148ffb163ca2599da0c05cbde730fdf536900b9b8f0078e156b6401`  
		Last Modified: Thu, 15 Feb 2018 09:11:00 GMT  
		Size: 10.0 MB (9980133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac745e8a10da2fca0458aefb3a5aa46bb13fb7bd309c294efab2c83db1a812d`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131620f83f0c7871a1e9c0932fe8113a2586e95342c422a09e7207b33cdaa63a`  
		Last Modified: Thu, 15 Feb 2018 09:13:55 GMT  
		Size: 35.5 MB (35543077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834525a823fe5df00e9d033cdf5cb585f78441140923975e4d163cdf346eaf2c`  
		Last Modified: Thu, 15 Feb 2018 09:13:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284bbf000637142b7f996839c5975348fdb3e3d6ff45918c770c4f24fcd1e31c`  
		Last Modified: Thu, 15 Feb 2018 13:11:59 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c635f136c827b1a9ac37a8723bb4c39fd8ddc3ba1142d7aca37acd56ad87c4`  
		Last Modified: Thu, 15 Feb 2018 13:12:02 GMT  
		Size: 14.8 MB (14815075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aed0ce8065a3b76b4d0f00d6b2ad4da54f3eca80670b49928a9d037b438aa1a`  
		Last Modified: Thu, 15 Feb 2018 13:11:57 GMT  
		Size: 486.8 KB (486825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7650ed1c7f618646807875ddde75272d32360fa6238c70f27a38962efa267d`  
		Last Modified: Thu, 15 Feb 2018 13:11:59 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5127479be826172aae9fbd2b4292c9180f1cbc31b4ec8747e523179ec01222`  
		Last Modified: Thu, 15 Feb 2018 13:12:15 GMT  
		Size: 59.1 MB (59109019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2919dc1e2cfcb51d7dca7fd8ce3c9131da75f3e584c5390a6a41a3eda63d94c`  
		Last Modified: Thu, 15 Feb 2018 13:11:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e19488450d8eff3172125056f8077d04e6bd86c3347764e9354294f1941a76`  
		Last Modified: Thu, 15 Feb 2018 13:11:57 GMT  
		Size: 2.4 MB (2392398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78891c9964ea91964525427aa67e64d7b90381396c03b6f66dd88c4ecabe6639`  
		Last Modified: Thu, 15 Feb 2018 13:12:30 GMT  
		Size: 81.4 MB (81361796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00992d1443828e5686874f5859a6374b5fa8ce87c10653da9275825f7913490d`  
		Last Modified: Thu, 15 Feb 2018 13:11:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.6-passenger`

```console
$ docker pull redmine@sha256:b622dffafbef51a62859b78b09d86da44c554476cadaa1da5baf038c2c5d3114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.6-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:ea78b2701e91acea6a612c125192e7a62356b91385065a1abb9115326a38edea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269892574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4db48ed299a5ff8f9f219669a1bc5c8bd210af8d80e9119ae35e9b01ff9925`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 19:26:26 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 00:08:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 00:08:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 00:11:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 00:11:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 00:11:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 00:11:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:06:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:06:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:06:37 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:06:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:06:41 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:08:13 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:08:13 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:08:14 GMT
ENV REDMINE_VERSION=3.3.6
# Sun, 18 Feb 2018 04:08:14 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Sun, 18 Feb 2018 04:08:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:10:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:13:07 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:13:07 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:13:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:17:21 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:17:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sun, 18 Feb 2018 04:28:58 GMT
ENV PASSENGER_VERSION=5.2.0
# Sun, 18 Feb 2018 04:29:19 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:29:28 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sun, 18 Feb 2018 04:29:40 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13b37ec8c33bc3f208043304b6909d3c2ef0840076ad4e0d67a82835ebf9fa5`  
		Last Modified: Sun, 18 Feb 2018 01:29:25 GMT  
		Size: 32.4 MB (32443808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5718bcaed796d08a571649b66c00c29dedcd84091b121d777acddf5116f3e9ed`  
		Last Modified: Sun, 18 Feb 2018 01:29:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a9e083038d38cc73ae613c564198dbfc72b3f53b8d05d6dfebee24b791125`  
		Last Modified: Sun, 18 Feb 2018 04:35:25 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5555ee84dd9a8c8d2ba18c3ef08915e72e97869aa0689bc97ace1058546555`  
		Last Modified: Sun, 18 Feb 2018 04:35:29 GMT  
		Size: 14.7 MB (14650860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc735fd5cfffe445f9a8e22a37ab2a4bcb70ca86ef03946f388f8edb47869eb`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d43bba34706da8d0fa285a4f34fbee46d6a43b753de1464935f19329f01bd`  
		Last Modified: Sun, 18 Feb 2018 04:35:22 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c237fe1087fe306af5a97b60ca43c29edd285bdd46504e5d296f5ba553a9ba`  
		Last Modified: Sun, 18 Feb 2018 04:35:41 GMT  
		Size: 59.3 MB (59272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c0d65c6c8e49fb63fe3a66817e5319a52cef1eb4237b99dbb89a4600b0189`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c3f990917574949c1634133156f1db68181c3206e4e064ca9d4474fec943fc`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 2.4 MB (2392397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c84d09148c350e5c743fe8269b8f197fce5e0c2cbd3e441c8049b0e1dfdc2a6`  
		Last Modified: Sun, 18 Feb 2018 04:35:39 GMT  
		Size: 79.0 MB (78987634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb6deac4fbc75e1b5e361cd2d67fa89156815f249aa5ab6ce068ee7c68a2ebb`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d23bb2c9345875058255c2f2228a6eb0508177a8668485617deecf58e9e9d0`  
		Last Modified: Sun, 18 Feb 2018 04:52:07 GMT  
		Size: 14.5 MB (14482885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48c3d0c56ba5a8453b2540e8ac982f5ce8051db1e74720e34de76642ef813c9`  
		Last Modified: Sun, 18 Feb 2018 04:52:00 GMT  
		Size: 4.4 MB (4354976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:b622dffafbef51a62859b78b09d86da44c554476cadaa1da5baf038c2c5d3114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:ea78b2701e91acea6a612c125192e7a62356b91385065a1abb9115326a38edea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269892574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4db48ed299a5ff8f9f219669a1bc5c8bd210af8d80e9119ae35e9b01ff9925`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_MAJOR=2.2
# Fri, 16 Feb 2018 19:26:25 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 16 Feb 2018 19:26:26 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 18 Feb 2018 00:08:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 00:08:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 00:11:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 00:11:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 00:11:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 00:11:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 00:11:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:06:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:06:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:06:37 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:06:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:06:41 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:06:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:07:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:08:13 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:08:13 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:08:14 GMT
ENV REDMINE_VERSION=3.3.6
# Sun, 18 Feb 2018 04:08:14 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Sun, 18 Feb 2018 04:08:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 04:10:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:13:07 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 04:13:07 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 04:13:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 04:17:21 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 04:17:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sun, 18 Feb 2018 04:28:58 GMT
ENV PASSENGER_VERSION=5.2.0
# Sun, 18 Feb 2018 04:29:19 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 04:29:28 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sun, 18 Feb 2018 04:29:40 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13b37ec8c33bc3f208043304b6909d3c2ef0840076ad4e0d67a82835ebf9fa5`  
		Last Modified: Sun, 18 Feb 2018 01:29:25 GMT  
		Size: 32.4 MB (32443808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5718bcaed796d08a571649b66c00c29dedcd84091b121d777acddf5116f3e9ed`  
		Last Modified: Sun, 18 Feb 2018 01:29:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a9e083038d38cc73ae613c564198dbfc72b3f53b8d05d6dfebee24b791125`  
		Last Modified: Sun, 18 Feb 2018 04:35:25 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5555ee84dd9a8c8d2ba18c3ef08915e72e97869aa0689bc97ace1058546555`  
		Last Modified: Sun, 18 Feb 2018 04:35:29 GMT  
		Size: 14.7 MB (14650860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc735fd5cfffe445f9a8e22a37ab2a4bcb70ca86ef03946f388f8edb47869eb`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d43bba34706da8d0fa285a4f34fbee46d6a43b753de1464935f19329f01bd`  
		Last Modified: Sun, 18 Feb 2018 04:35:22 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c237fe1087fe306af5a97b60ca43c29edd285bdd46504e5d296f5ba553a9ba`  
		Last Modified: Sun, 18 Feb 2018 04:35:41 GMT  
		Size: 59.3 MB (59272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410c0d65c6c8e49fb63fe3a66817e5319a52cef1eb4237b99dbb89a4600b0189`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c3f990917574949c1634133156f1db68181c3206e4e064ca9d4474fec943fc`  
		Last Modified: Sun, 18 Feb 2018 04:35:23 GMT  
		Size: 2.4 MB (2392397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c84d09148c350e5c743fe8269b8f197fce5e0c2cbd3e441c8049b0e1dfdc2a6`  
		Last Modified: Sun, 18 Feb 2018 04:35:39 GMT  
		Size: 79.0 MB (78987634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb6deac4fbc75e1b5e361cd2d67fa89156815f249aa5ab6ce068ee7c68a2ebb`  
		Last Modified: Sun, 18 Feb 2018 04:35:20 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d23bb2c9345875058255c2f2228a6eb0508177a8668485617deecf58e9e9d0`  
		Last Modified: Sun, 18 Feb 2018 04:52:07 GMT  
		Size: 14.5 MB (14482885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48c3d0c56ba5a8453b2540e8ac982f5ce8051db1e74720e34de76642ef813c9`  
		Last Modified: Sun, 18 Feb 2018 04:52:00 GMT  
		Size: 4.4 MB (4354976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:13569dab6616c49158b39a7f5cb2c7970881b5dfc5e051ec0b0a4b5f66dd321f
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
$ docker pull redmine@sha256:f810929be8cfe122cea1049146c2c7be429a23abd7a17b578b41ab0778648338
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260419087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4833bd4f6e084f02de271715e9fdf6b6f7b6bd69e94cb6467e587576daaa3b67`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:10:13 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 17 Feb 2018 22:58:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 17 Feb 2018 22:58:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 17 Feb 2018 23:02:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 17 Feb 2018 23:14:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 23:14:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 17 Feb 2018 23:14:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:58:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:59:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:59:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:59:07 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:59:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:46 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:59:46 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:59:46 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 04:59:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 04:59:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 05:02:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:02:59 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 05:03:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 05:03:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 05:03:00 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 05:03:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add45ef49d053f084c22a9cc5f8798bb50273788ff9030c844f637bc57fb5e3c`  
		Last Modified: Sun, 18 Feb 2018 01:13:35 GMT  
		Size: 21.8 MB (21836247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda51b43d9368a17f98a4bb12bb4b0c02ab55c3f85058f789b9c6cf1ac3fce0b`  
		Last Modified: Sun, 18 Feb 2018 01:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e032675b01b42559a0356c5b73ecb01c987ba13a31fab4ad9dcfab54aeb93`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83824ca60996e8c260d78755c8eaa3f11ea65fb20a5a825c5ca40c4ad1eb2a77`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 14.7 MB (14650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def8f266fd26b3932658f9524fb42f1dd023014c137581ca4d35a5df2625ee1`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ba34d32a5394d698b8742025b22e9ea3c3f5343d80d60629bbb199abf9a53`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7883f0b877993d4eee1fdf902e69032916cebc342f8606cc3abc4da30225b6`  
		Last Modified: Sun, 18 Feb 2018 05:18:58 GMT  
		Size: 59.3 MB (59273170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e719b4e216c1b8af9fa8948d88ddd7bbd9db24b6917c03f216ab71dc35129e3c`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2c258f6c4fbe2c2157f2c3d0a4ad30da004f531b019d4f4f9ba3a80443325`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 2.5 MB (2454041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89cead59b97110e3ab851d2b1be749467cc54ecf5da935b077dc4373b3ee09a`  
		Last Modified: Sun, 18 Feb 2018 05:19:00 GMT  
		Size: 98.9 MB (98896946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2431695884df6a20a1c006393f12b59d4dbb4082f34069cbb1f85dfdd03550f2`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:75e65f15844f9fc97340a0f0ddd13a2f8eb58273949fb4a36302f12cf3abf5f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253687271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbce0379261333366ea14a985d4a3ecb1b28f38af19db25ba24bce923597aa7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:27:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 22:27:00 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 22:27:01 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 22:27:01 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 02:45:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 02:45:14 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:51:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:51:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:51:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:51:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:51:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:51:20 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:45:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:46:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:46:30 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:46:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:46:32 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:46:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:47:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:47:33 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:47:34 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:47:34 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:47:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:47:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:52:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:52:55 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:52:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:52:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:52:56 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:52:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ca9b88c473d3be3575ff4ae0cad91c4ef255c03215cc8baf86ae31f9fdfb7`  
		Last Modified: Thu, 15 Feb 2018 23:06:29 GMT  
		Size: 9.1 MB (9133359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260097b731d55069d7db925a95b239a954a691694f422a9325b9e0fb3f05a9ec`  
		Last Modified: Thu, 15 Feb 2018 23:06:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cd7fe618fe5f51d5426dd289185eaa231f2bbe653b5bca28047b407bcc0710`  
		Last Modified: Sun, 18 Feb 2018 03:24:18 GMT  
		Size: 21.6 MB (21570414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50735e96aaa705a9298eb3a0760be5c7e45defd735aca388ddf6db7df8fd01ef`  
		Last Modified: Sun, 18 Feb 2018 03:24:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106d54cd6510d9ea66159b135c9d77bc39e4b2d2afac5297d1fe478472f432e1`  
		Last Modified: Sun, 18 Feb 2018 04:05:03 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eca6a668501d782d1740565caa06622a92299be51be5d2ecb08967070d69384`  
		Last Modified: Sun, 18 Feb 2018 04:05:07 GMT  
		Size: 14.3 MB (14347963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4857f19cf059b0edd31db81bc91b29aa5d08acce0007c3a953997dd65b9e78`  
		Last Modified: Sun, 18 Feb 2018 04:05:02 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3193b2bebde2d5608cc229baaa4105c3c3108ac01d72b2048b1628a533d3cd96`  
		Last Modified: Sun, 18 Feb 2018 04:05:01 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078587a426897e06dfdde749a134fe76ace7fe4830a23f0569eb18cf9e4c3a0`  
		Last Modified: Sun, 18 Feb 2018 04:05:30 GMT  
		Size: 56.6 MB (56611405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a150f134952a4934ad926e60aafaadcee91cc06a9bc2ea4b1f9c86e872f052`  
		Last Modified: Sun, 18 Feb 2018 04:05:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d29f6db9e4b3f963400341665dd61670dae5aeba7c70bdc4211f232a598ecb`  
		Last Modified: Sun, 18 Feb 2018 04:05:02 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83344698e8f07c0229fe6f9bca6d8e4c46be0f399df4f2ec21e971e563ab8924`  
		Last Modified: Sun, 18 Feb 2018 04:05:27 GMT  
		Size: 98.2 MB (98176501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b602fc792045002b0445a40a91c533faaa6001c469320b0304bc949af24b05b8`  
		Last Modified: Sun, 18 Feb 2018 04:05:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:1ff9031d8e64e0e44a8f4078794a4ed9d15579b9e9ac48b61fd25fe631b087f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247714891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9f124a479d0da9f1ba88aa6607d79c45ece1d43e07ab9773d6334fe9be562d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:42:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:42:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 02:33:18 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 02:33:18 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:38:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:38:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:38:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:38:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:38:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:38:50 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:32:51 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:33:20 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:33:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:33:22 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:33:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:34:20 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:34:20 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:34:21 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:34:21 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:34:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:39:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:39:25 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:39:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:39:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:39:26 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:39:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6420e9fe85a4dfc8671dec12a73cef954ad80f657f4554c5cdd39581792af816`  
		Last Modified: Thu, 15 Feb 2018 17:23:02 GMT  
		Size: 8.8 MB (8785785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d111bbb582d5bd73a5b3e81b059b5a652723f92838b08810b8e9b41a44f39a3`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaddc8a1df67b03569a277ab33159a48d39776be60350459660efb1d964f0f04`  
		Last Modified: Sun, 18 Feb 2018 03:10:35 GMT  
		Size: 21.4 MB (21421873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a38d1eb4d6ae0fe039ab63d95f9904e67e915e579199705ab0bc30600b5ae3`  
		Last Modified: Sun, 18 Feb 2018 03:10:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1133e6a4ceb12aae158f7a8ec43022490e5bc8c8ae1572d7d7d948f6ffefb87`  
		Last Modified: Sun, 18 Feb 2018 03:50:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e313c71afc9a3bd40c732ec2c9e3c3c43f61e6a243c759d1adb4e3d186b1e2bc`  
		Last Modified: Sun, 18 Feb 2018 03:50:41 GMT  
		Size: 14.1 MB (14134934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0901fb885f1c626b57d5e64a0ac50647dac14da97b64cf444163ed731ec8d`  
		Last Modified: Sun, 18 Feb 2018 03:50:37 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e640c889319d2df80d94d02b9ca72c1643888928c148b3718c8fcbfb62202ad`  
		Last Modified: Sun, 18 Feb 2018 03:50:35 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733c19ecfc54ecda353a11083d921580243e8cb583909fdbb2ed171c6ec26395`  
		Last Modified: Sun, 18 Feb 2018 03:50:50 GMT  
		Size: 54.3 MB (54345521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ac0ed83c1e96f2083432bbf5278543f592af04c9f97d25c8ed9ad5bad55efe`  
		Last Modified: Sun, 18 Feb 2018 03:50:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ba8665666540033bedf133c7d7ad91ec03ada7c196f79c3978ff3591d328bf`  
		Last Modified: Sun, 18 Feb 2018 03:50:36 GMT  
		Size: 2.5 MB (2454587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d59b75dd99b0f9ed0333b61c8a419c2667e613aa9281d4f2d5dcd31a976ca04`  
		Last Modified: Sun, 18 Feb 2018 03:51:00 GMT  
		Size: 97.4 MB (97383758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862e1238c37e98417eac92315f1efcfec345dd49d062215d3a64b9569c08709`  
		Last Modified: Sun, 18 Feb 2018 03:50:34 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:8af7746f64aaa7882c16991ae086d8f1b5cb55239089a834e4b761e957ee302f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.1 MB (252129052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bc20f6a013ff14795f185dbeb5838cb139eb426978cd4a0d7220418006a08b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:07:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:07:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 04:07:45 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 04:07:46 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 04:07:46 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 16 Feb 2018 04:07:47 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Fri, 16 Feb 2018 04:07:47 GMT
ENV BUNDLER_VERSION=1.16.1
# Fri, 16 Feb 2018 04:19:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Feb 2018 04:19:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Feb 2018 04:19:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Feb 2018 04:19:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 04:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 16 Feb 2018 04:19:15 GMT
CMD ["irb"]
# Fri, 16 Feb 2018 13:39:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Feb 2018 13:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:40:12 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 13:40:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 13:40:18 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Feb 2018 13:40:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Feb 2018 13:42:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:42:06 GMT
ENV RAILS_ENV=production
# Fri, 16 Feb 2018 13:42:07 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Feb 2018 13:42:07 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Feb 2018 13:42:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Feb 2018 13:42:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Feb 2018 13:52:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 13:52:21 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Feb 2018 13:52:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Feb 2018 13:52:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 13:52:24 GMT
EXPOSE 3000/tcp
# Fri, 16 Feb 2018 13:52:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccfe391b2c8441bb4bcd899cfb14b86c2525659cfb704a2027adaf784c1b064`  
		Last Modified: Fri, 16 Feb 2018 05:22:29 GMT  
		Size: 9.4 MB (9355476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7ec15a80ed0454ca97abf1366ef6c8e73c0095306d096f8c14dfd85b90fed4`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacf80a2603ec29d0c3177edae7612906d13692fdf98125096df079cd329fa4f`  
		Last Modified: Fri, 16 Feb 2018 05:22:34 GMT  
		Size: 21.2 MB (21240352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9798fd1b383c10d2f2e1d05bf19e9037547b85b9ec3d7f0530a7216f189fcb5b`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049c4667e08b87ffc3a48c6515df5383c89951b8575d436a9ae432031f04e59f`  
		Last Modified: Fri, 16 Feb 2018 14:17:42 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b52211a8a91a7ebca70692d83995ad53cb9dfaaf650f6e9904138af977dfbe`  
		Last Modified: Fri, 16 Feb 2018 14:17:47 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274ef55f7fb7cb703edac0511202cdcbc84325c9c60267fcf4519defb3daf504`  
		Last Modified: Fri, 16 Feb 2018 14:17:40 GMT  
		Size: 468.7 KB (468699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7009f4f1642b07549fa9753c8bc5bcef3c2e703eddbcfe51a6fe772c14447507`  
		Last Modified: Fri, 16 Feb 2018 14:17:40 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f72ec906f7315db72851e35ac51fbd67fbd1530f1e0135cec62e2f23eac8043`  
		Last Modified: Fri, 16 Feb 2018 14:17:56 GMT  
		Size: 55.8 MB (55795130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded757d2aef798eacc0c2e6229e47fbebbae0c6a7fb83bb11fc85a84d13faba6`  
		Last Modified: Fri, 16 Feb 2018 14:17:35 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb7f3cd523f7f2b3d1248c5210c3e2fcd8eefc1e9024c9d5056e32fcea54a1b`  
		Last Modified: Fri, 16 Feb 2018 14:17:39 GMT  
		Size: 2.5 MB (2454050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f6ad846be8c43a37a9fd4db1b695d4a3f570a2f3cb5e9d147885e825c8e79`  
		Last Modified: Fri, 16 Feb 2018 14:18:07 GMT  
		Size: 98.4 MB (98406027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1997c23dcc8fc9e3b69bdf46799abc2fc49c9e4c40b90364ef1c94eea8d6e66`  
		Last Modified: Fri, 16 Feb 2018 14:17:35 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:33952ccd860cf8e8e4013ccbd04dcff67dbb203afc09994255f11c7e7951439b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262817489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e0b64ff6b826da356c2ca48d19377378a9b3876989c752cb104500783eb478`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 05:00:41 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 05:00:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 05:05:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 05:05:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 05:05:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 05:05:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 05:05:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 05:05:07 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 15:24:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 15:25:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 15:25:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 15:25:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 15:25:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 15:26:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 15:26:58 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 15:26:59 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 15:26:59 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 15:26:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 15:27:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 15:32:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 15:47:14 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 15:47:14 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 15:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 15:47:15 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 15:47:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf8a023cee4478aac3e42dc9c080707f7dadb9192fc5a26f47c2f9d2b94201`  
		Last Modified: Wed, 07 Feb 2018 08:47:36 GMT  
		Size: 20.3 MB (20270533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93265ad4855a1e9361435df0a8472dad6d75908a967f2f5b4f98ecd6df2a0bb`  
		Last Modified: Wed, 07 Feb 2018 08:47:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a159e21c92274a288504e881722100ae8e8508c7cfb917c7bc911a18d8a9b4de`  
		Last Modified: Wed, 07 Feb 2018 16:51:00 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b5f0320cdd9784b720651a1983c9047c16d78236c32a23f86bcdb1a2a5889e`  
		Last Modified: Wed, 07 Feb 2018 16:51:09 GMT  
		Size: 14.8 MB (14817575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05f031aeea99e359ccd3a6eb3c1c6c6b3cb788fc71f2a851c1093301e11d999`  
		Last Modified: Wed, 07 Feb 2018 16:51:00 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d4fa48c2ce1388c46a43592d4571e6ee9b7f3ee4d93c49f107c6441ad5ae37`  
		Last Modified: Wed, 07 Feb 2018 16:51:01 GMT  
		Size: 8.6 KB (8568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c2a492909498c474271e579248c3881f7f3c47e2863fcc0a488c01adf146dd`  
		Last Modified: Wed, 07 Feb 2018 16:51:32 GMT  
		Size: 60.1 MB (60147242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17503d527d33f8f3fb724e53b3bdfafa2b222776b00ce6b25c9f7969e0c7a04`  
		Last Modified: Wed, 07 Feb 2018 16:51:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ec4b0bbfdc6dd65fbda8ac868b74d5752940fb486b4d46f966f1ce4757d7d`  
		Last Modified: Wed, 07 Feb 2018 16:51:09 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95163ecd8e45a35e29469de9d05e182b65f4ecb7d653ecb15436dd82a0ac03b`  
		Last Modified: Wed, 07 Feb 2018 16:51:50 GMT  
		Size: 97.2 MB (97208920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca59a0645a8802ad6378918cff7d8ed1636e48bf45be4747f263be79aa7fb85e`  
		Last Modified: Wed, 07 Feb 2018 16:51:01 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:85d617698cb4b7c4b2e4d6025d69659ccb484d096a3736e3d0b193661a2bfeca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259649037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ff873186f9654fd8a23cf2c4341badce6388f1f8caa2987bbbdc9e9a5a9c63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:09:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:09:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 06:09:48 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 06:09:50 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 06:09:52 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 01:50:23 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 01:50:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:01:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:01:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:01:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:01:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:02:01 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:43:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:44:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:44:23 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:44:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:44:31 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:44:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:47:15 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:47:16 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:47:17 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:47:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:47:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:57:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:57:08 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:57:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:57:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:57:12 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:57:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ee5ec8a068e0b0eb050931eb39551e708bf4b6e672265a9064d2f52e04a37`  
		Last Modified: Thu, 15 Feb 2018 06:47:52 GMT  
		Size: 10.2 MB (10157460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea4863957858b9bfe6972d64fcfe4c7100822b21dbac759a2fd0e13158d59e`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e74bc8294e791dd3b2ddf462f9d49594b7a10a05ce8864d92e563e3f2aa46`  
		Last Modified: Sun, 18 Feb 2018 03:21:55 GMT  
		Size: 22.3 MB (22320321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e012211edd7459266ccda4b534b5db191d3300034fd54e07077b778e813da2`  
		Last Modified: Sun, 18 Feb 2018 03:21:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b760f3f9e8f5bbf43869eefaf99aa2f981f6d08bbd7ddf81f5ec9e2dc3d26047`  
		Last Modified: Sun, 18 Feb 2018 04:23:50 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ea9005e6393fbe4bd037475195495946fbc063193a6d822ea8a1ca003873f3`  
		Last Modified: Sun, 18 Feb 2018 04:23:54 GMT  
		Size: 14.7 MB (14720957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525fd0d7d69c919e3c6b48012821ead2c37a2e9f32b96103354399c440ad790`  
		Last Modified: Sun, 18 Feb 2018 04:23:49 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a038e2b747b70d4d9d3400d07903cd5deaff16afe4cb00e69ba541652cf549e9`  
		Last Modified: Sun, 18 Feb 2018 04:23:48 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15f85eb983083f62651fbd493eb6ff446246fe492b02591c8ce912fc96c34b6`  
		Last Modified: Sun, 18 Feb 2018 04:24:02 GMT  
		Size: 58.1 MB (58133491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a801cd801ceaf9cf458d0caa0481b1347d680ac7db353c2e8b59e4a11605151a`  
		Last Modified: Sun, 18 Feb 2018 04:23:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e349a427ed4f47796c81a86b38f097cfd1ff5ca2b39cdd6fd31808e4d4078a59`  
		Last Modified: Sun, 18 Feb 2018 04:23:47 GMT  
		Size: 2.5 MB (2454588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa9e46a184194e41fb4e965d0c4309627dabcbb1c487d85f21bfc5c395eee56`  
		Last Modified: Sun, 18 Feb 2018 04:24:08 GMT  
		Size: 99.6 MB (99562199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05eba39ebaa875d7f3348a3de5b346dd9cea9b8e847e9526447c7769b8f0a05`  
		Last Modified: Sun, 18 Feb 2018 04:23:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:5090df5f89a83dbf9c057af7e8f71a3382ba3a71a251574599769299c51718bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (263983604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5795493a86be9ff8a7a6c6cc7b1de0803a541f2fd80266ff180b4d89640d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:47:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:47:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 08:47:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 08:50:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 08:50:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 08:50:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 08:50:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 08:50:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 08:50:50 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 13:01:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 13:02:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:02:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:02:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:02:13 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 13:02:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 13:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:02:46 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 13:02:46 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 13:02:46 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 13:02:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 13:02:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 13:05:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 13:05:24 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 13:05:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 13:05:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:05:25 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 13:05:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64961cc40148ffb163ca2599da0c05cbde730fdf536900b9b8f0078e156b6401`  
		Last Modified: Thu, 15 Feb 2018 09:11:00 GMT  
		Size: 10.0 MB (9980133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac745e8a10da2fca0458aefb3a5aa46bb13fb7bd309c294efab2c83db1a812d`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b09e1c937049cd930a2af2986608996c87c1ad444de9574ae5617fd11c51e6`  
		Last Modified: Thu, 15 Feb 2018 09:11:03 GMT  
		Size: 21.7 MB (21667178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9022de23e5456061ff66057dfd3d6d0eb6d61f0233c737919c8cb985edc5e4f`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b426c39dea7006489a448f70806b95896b64f1fa709525eb2a2600730690d4b0`  
		Last Modified: Thu, 15 Feb 2018 13:11:03 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66074e40cc2ca9eba1526e934e6e064460d326234ce72bc1d77a760760e2f594`  
		Last Modified: Thu, 15 Feb 2018 13:11:06 GMT  
		Size: 14.8 MB (14815073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b894922979f3fb8064cc6c1de33088c87c0ec1732085a3c3df8287a17dcf190`  
		Last Modified: Thu, 15 Feb 2018 13:11:01 GMT  
		Size: 486.8 KB (486828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7e3d59487ec50c9b2f433fd302e1a72ab7d970b82a581e541aa97b5b8f757b`  
		Last Modified: Thu, 15 Feb 2018 13:11:01 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a731b0937be032728a4fc3374ac182eb8afb6bfc1a4d6597603f15ce730d3460`  
		Last Modified: Thu, 15 Feb 2018 13:11:34 GMT  
		Size: 59.1 MB (59109033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727a829f67b9cc95d6fe1068c5afb3437ba6f7f90f1048b9f7b331d12feb06bd`  
		Last Modified: Thu, 15 Feb 2018 13:10:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0571397073f24b9d796b46276903c52cc018af672735abc726961ff8182b0`  
		Last Modified: Thu, 15 Feb 2018 13:11:02 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17c257719e4e9589029fcc39de47374c297bf171914476eed0c55f8785d1f33`  
		Last Modified: Thu, 15 Feb 2018 13:11:37 GMT  
		Size: 102.7 MB (102663455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2906a2e437d74e49c5312f9a953a0f4ff40dd5af00b66fcb1140ea05d8c81a`  
		Last Modified: Thu, 15 Feb 2018 13:11:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.4`

```console
$ docker pull redmine@sha256:13569dab6616c49158b39a7f5cb2c7970881b5dfc5e051ec0b0a4b5f66dd321f
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

### `redmine:3.4.4` - linux; amd64

```console
$ docker pull redmine@sha256:f810929be8cfe122cea1049146c2c7be429a23abd7a17b578b41ab0778648338
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260419087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4833bd4f6e084f02de271715e9fdf6b6f7b6bd69e94cb6467e587576daaa3b67`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:10:13 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 17 Feb 2018 22:58:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 17 Feb 2018 22:58:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 17 Feb 2018 23:02:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 17 Feb 2018 23:14:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 23:14:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 17 Feb 2018 23:14:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:58:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:59:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:59:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:59:07 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:59:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:46 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:59:46 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:59:46 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 04:59:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 04:59:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 05:02:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:02:59 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 05:03:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 05:03:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 05:03:00 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 05:03:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add45ef49d053f084c22a9cc5f8798bb50273788ff9030c844f637bc57fb5e3c`  
		Last Modified: Sun, 18 Feb 2018 01:13:35 GMT  
		Size: 21.8 MB (21836247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda51b43d9368a17f98a4bb12bb4b0c02ab55c3f85058f789b9c6cf1ac3fce0b`  
		Last Modified: Sun, 18 Feb 2018 01:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e032675b01b42559a0356c5b73ecb01c987ba13a31fab4ad9dcfab54aeb93`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83824ca60996e8c260d78755c8eaa3f11ea65fb20a5a825c5ca40c4ad1eb2a77`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 14.7 MB (14650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def8f266fd26b3932658f9524fb42f1dd023014c137581ca4d35a5df2625ee1`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ba34d32a5394d698b8742025b22e9ea3c3f5343d80d60629bbb199abf9a53`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7883f0b877993d4eee1fdf902e69032916cebc342f8606cc3abc4da30225b6`  
		Last Modified: Sun, 18 Feb 2018 05:18:58 GMT  
		Size: 59.3 MB (59273170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e719b4e216c1b8af9fa8948d88ddd7bbd9db24b6917c03f216ab71dc35129e3c`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2c258f6c4fbe2c2157f2c3d0a4ad30da004f531b019d4f4f9ba3a80443325`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 2.5 MB (2454041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89cead59b97110e3ab851d2b1be749467cc54ecf5da935b077dc4373b3ee09a`  
		Last Modified: Sun, 18 Feb 2018 05:19:00 GMT  
		Size: 98.9 MB (98896946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2431695884df6a20a1c006393f12b59d4dbb4082f34069cbb1f85dfdd03550f2`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:75e65f15844f9fc97340a0f0ddd13a2f8eb58273949fb4a36302f12cf3abf5f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253687271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbce0379261333366ea14a985d4a3ecb1b28f38af19db25ba24bce923597aa7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:27:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 22:27:00 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 22:27:01 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 22:27:01 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 02:45:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 02:45:14 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:51:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:51:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:51:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:51:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:51:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:51:20 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:45:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:46:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:46:30 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:46:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:46:32 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:46:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:47:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:47:33 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:47:34 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:47:34 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:47:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:47:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:52:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:52:55 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:52:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:52:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:52:56 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:52:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ca9b88c473d3be3575ff4ae0cad91c4ef255c03215cc8baf86ae31f9fdfb7`  
		Last Modified: Thu, 15 Feb 2018 23:06:29 GMT  
		Size: 9.1 MB (9133359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260097b731d55069d7db925a95b239a954a691694f422a9325b9e0fb3f05a9ec`  
		Last Modified: Thu, 15 Feb 2018 23:06:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cd7fe618fe5f51d5426dd289185eaa231f2bbe653b5bca28047b407bcc0710`  
		Last Modified: Sun, 18 Feb 2018 03:24:18 GMT  
		Size: 21.6 MB (21570414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50735e96aaa705a9298eb3a0760be5c7e45defd735aca388ddf6db7df8fd01ef`  
		Last Modified: Sun, 18 Feb 2018 03:24:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106d54cd6510d9ea66159b135c9d77bc39e4b2d2afac5297d1fe478472f432e1`  
		Last Modified: Sun, 18 Feb 2018 04:05:03 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eca6a668501d782d1740565caa06622a92299be51be5d2ecb08967070d69384`  
		Last Modified: Sun, 18 Feb 2018 04:05:07 GMT  
		Size: 14.3 MB (14347963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4857f19cf059b0edd31db81bc91b29aa5d08acce0007c3a953997dd65b9e78`  
		Last Modified: Sun, 18 Feb 2018 04:05:02 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3193b2bebde2d5608cc229baaa4105c3c3108ac01d72b2048b1628a533d3cd96`  
		Last Modified: Sun, 18 Feb 2018 04:05:01 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078587a426897e06dfdde749a134fe76ace7fe4830a23f0569eb18cf9e4c3a0`  
		Last Modified: Sun, 18 Feb 2018 04:05:30 GMT  
		Size: 56.6 MB (56611405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a150f134952a4934ad926e60aafaadcee91cc06a9bc2ea4b1f9c86e872f052`  
		Last Modified: Sun, 18 Feb 2018 04:05:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d29f6db9e4b3f963400341665dd61670dae5aeba7c70bdc4211f232a598ecb`  
		Last Modified: Sun, 18 Feb 2018 04:05:02 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83344698e8f07c0229fe6f9bca6d8e4c46be0f399df4f2ec21e971e563ab8924`  
		Last Modified: Sun, 18 Feb 2018 04:05:27 GMT  
		Size: 98.2 MB (98176501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b602fc792045002b0445a40a91c533faaa6001c469320b0304bc949af24b05b8`  
		Last Modified: Sun, 18 Feb 2018 04:05:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:1ff9031d8e64e0e44a8f4078794a4ed9d15579b9e9ac48b61fd25fe631b087f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247714891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9f124a479d0da9f1ba88aa6607d79c45ece1d43e07ab9773d6334fe9be562d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:42:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:42:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 02:33:18 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 02:33:18 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:38:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:38:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:38:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:38:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:38:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:38:50 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:32:51 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:33:20 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:33:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:33:22 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:33:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:34:20 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:34:20 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:34:21 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:34:21 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:34:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:39:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:39:25 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:39:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:39:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:39:26 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:39:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6420e9fe85a4dfc8671dec12a73cef954ad80f657f4554c5cdd39581792af816`  
		Last Modified: Thu, 15 Feb 2018 17:23:02 GMT  
		Size: 8.8 MB (8785785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d111bbb582d5bd73a5b3e81b059b5a652723f92838b08810b8e9b41a44f39a3`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaddc8a1df67b03569a277ab33159a48d39776be60350459660efb1d964f0f04`  
		Last Modified: Sun, 18 Feb 2018 03:10:35 GMT  
		Size: 21.4 MB (21421873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a38d1eb4d6ae0fe039ab63d95f9904e67e915e579199705ab0bc30600b5ae3`  
		Last Modified: Sun, 18 Feb 2018 03:10:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1133e6a4ceb12aae158f7a8ec43022490e5bc8c8ae1572d7d7d948f6ffefb87`  
		Last Modified: Sun, 18 Feb 2018 03:50:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e313c71afc9a3bd40c732ec2c9e3c3c43f61e6a243c759d1adb4e3d186b1e2bc`  
		Last Modified: Sun, 18 Feb 2018 03:50:41 GMT  
		Size: 14.1 MB (14134934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0901fb885f1c626b57d5e64a0ac50647dac14da97b64cf444163ed731ec8d`  
		Last Modified: Sun, 18 Feb 2018 03:50:37 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e640c889319d2df80d94d02b9ca72c1643888928c148b3718c8fcbfb62202ad`  
		Last Modified: Sun, 18 Feb 2018 03:50:35 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733c19ecfc54ecda353a11083d921580243e8cb583909fdbb2ed171c6ec26395`  
		Last Modified: Sun, 18 Feb 2018 03:50:50 GMT  
		Size: 54.3 MB (54345521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ac0ed83c1e96f2083432bbf5278543f592af04c9f97d25c8ed9ad5bad55efe`  
		Last Modified: Sun, 18 Feb 2018 03:50:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ba8665666540033bedf133c7d7ad91ec03ada7c196f79c3978ff3591d328bf`  
		Last Modified: Sun, 18 Feb 2018 03:50:36 GMT  
		Size: 2.5 MB (2454587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d59b75dd99b0f9ed0333b61c8a419c2667e613aa9281d4f2d5dcd31a976ca04`  
		Last Modified: Sun, 18 Feb 2018 03:51:00 GMT  
		Size: 97.4 MB (97383758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862e1238c37e98417eac92315f1efcfec345dd49d062215d3a64b9569c08709`  
		Last Modified: Sun, 18 Feb 2018 03:50:34 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:8af7746f64aaa7882c16991ae086d8f1b5cb55239089a834e4b761e957ee302f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.1 MB (252129052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bc20f6a013ff14795f185dbeb5838cb139eb426978cd4a0d7220418006a08b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:07:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:07:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 04:07:45 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 04:07:46 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 04:07:46 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 16 Feb 2018 04:07:47 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Fri, 16 Feb 2018 04:07:47 GMT
ENV BUNDLER_VERSION=1.16.1
# Fri, 16 Feb 2018 04:19:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Feb 2018 04:19:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Feb 2018 04:19:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Feb 2018 04:19:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 04:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 16 Feb 2018 04:19:15 GMT
CMD ["irb"]
# Fri, 16 Feb 2018 13:39:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Feb 2018 13:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:40:12 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 13:40:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 13:40:18 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Feb 2018 13:40:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Feb 2018 13:42:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:42:06 GMT
ENV RAILS_ENV=production
# Fri, 16 Feb 2018 13:42:07 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Feb 2018 13:42:07 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Feb 2018 13:42:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Feb 2018 13:42:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Feb 2018 13:52:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 13:52:21 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Feb 2018 13:52:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Feb 2018 13:52:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 13:52:24 GMT
EXPOSE 3000/tcp
# Fri, 16 Feb 2018 13:52:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccfe391b2c8441bb4bcd899cfb14b86c2525659cfb704a2027adaf784c1b064`  
		Last Modified: Fri, 16 Feb 2018 05:22:29 GMT  
		Size: 9.4 MB (9355476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7ec15a80ed0454ca97abf1366ef6c8e73c0095306d096f8c14dfd85b90fed4`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacf80a2603ec29d0c3177edae7612906d13692fdf98125096df079cd329fa4f`  
		Last Modified: Fri, 16 Feb 2018 05:22:34 GMT  
		Size: 21.2 MB (21240352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9798fd1b383c10d2f2e1d05bf19e9037547b85b9ec3d7f0530a7216f189fcb5b`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049c4667e08b87ffc3a48c6515df5383c89951b8575d436a9ae432031f04e59f`  
		Last Modified: Fri, 16 Feb 2018 14:17:42 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b52211a8a91a7ebca70692d83995ad53cb9dfaaf650f6e9904138af977dfbe`  
		Last Modified: Fri, 16 Feb 2018 14:17:47 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274ef55f7fb7cb703edac0511202cdcbc84325c9c60267fcf4519defb3daf504`  
		Last Modified: Fri, 16 Feb 2018 14:17:40 GMT  
		Size: 468.7 KB (468699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7009f4f1642b07549fa9753c8bc5bcef3c2e703eddbcfe51a6fe772c14447507`  
		Last Modified: Fri, 16 Feb 2018 14:17:40 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f72ec906f7315db72851e35ac51fbd67fbd1530f1e0135cec62e2f23eac8043`  
		Last Modified: Fri, 16 Feb 2018 14:17:56 GMT  
		Size: 55.8 MB (55795130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded757d2aef798eacc0c2e6229e47fbebbae0c6a7fb83bb11fc85a84d13faba6`  
		Last Modified: Fri, 16 Feb 2018 14:17:35 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb7f3cd523f7f2b3d1248c5210c3e2fcd8eefc1e9024c9d5056e32fcea54a1b`  
		Last Modified: Fri, 16 Feb 2018 14:17:39 GMT  
		Size: 2.5 MB (2454050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f6ad846be8c43a37a9fd4db1b695d4a3f570a2f3cb5e9d147885e825c8e79`  
		Last Modified: Fri, 16 Feb 2018 14:18:07 GMT  
		Size: 98.4 MB (98406027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1997c23dcc8fc9e3b69bdf46799abc2fc49c9e4c40b90364ef1c94eea8d6e66`  
		Last Modified: Fri, 16 Feb 2018 14:17:35 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; 386

```console
$ docker pull redmine@sha256:33952ccd860cf8e8e4013ccbd04dcff67dbb203afc09994255f11c7e7951439b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262817489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e0b64ff6b826da356c2ca48d19377378a9b3876989c752cb104500783eb478`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 05:00:41 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 05:00:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 05:05:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 05:05:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 05:05:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 05:05:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 05:05:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 05:05:07 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 15:24:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 15:25:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 15:25:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 15:25:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 15:25:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 15:26:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 15:26:58 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 15:26:59 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 15:26:59 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 15:26:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 15:27:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 15:32:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 15:47:14 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 15:47:14 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 15:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 15:47:15 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 15:47:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf8a023cee4478aac3e42dc9c080707f7dadb9192fc5a26f47c2f9d2b94201`  
		Last Modified: Wed, 07 Feb 2018 08:47:36 GMT  
		Size: 20.3 MB (20270533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93265ad4855a1e9361435df0a8472dad6d75908a967f2f5b4f98ecd6df2a0bb`  
		Last Modified: Wed, 07 Feb 2018 08:47:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a159e21c92274a288504e881722100ae8e8508c7cfb917c7bc911a18d8a9b4de`  
		Last Modified: Wed, 07 Feb 2018 16:51:00 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b5f0320cdd9784b720651a1983c9047c16d78236c32a23f86bcdb1a2a5889e`  
		Last Modified: Wed, 07 Feb 2018 16:51:09 GMT  
		Size: 14.8 MB (14817575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05f031aeea99e359ccd3a6eb3c1c6c6b3cb788fc71f2a851c1093301e11d999`  
		Last Modified: Wed, 07 Feb 2018 16:51:00 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d4fa48c2ce1388c46a43592d4571e6ee9b7f3ee4d93c49f107c6441ad5ae37`  
		Last Modified: Wed, 07 Feb 2018 16:51:01 GMT  
		Size: 8.6 KB (8568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c2a492909498c474271e579248c3881f7f3c47e2863fcc0a488c01adf146dd`  
		Last Modified: Wed, 07 Feb 2018 16:51:32 GMT  
		Size: 60.1 MB (60147242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17503d527d33f8f3fb724e53b3bdfafa2b222776b00ce6b25c9f7969e0c7a04`  
		Last Modified: Wed, 07 Feb 2018 16:51:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ec4b0bbfdc6dd65fbda8ac868b74d5752940fb486b4d46f966f1ce4757d7d`  
		Last Modified: Wed, 07 Feb 2018 16:51:09 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95163ecd8e45a35e29469de9d05e182b65f4ecb7d653ecb15436dd82a0ac03b`  
		Last Modified: Wed, 07 Feb 2018 16:51:50 GMT  
		Size: 97.2 MB (97208920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca59a0645a8802ad6378918cff7d8ed1636e48bf45be4747f263be79aa7fb85e`  
		Last Modified: Wed, 07 Feb 2018 16:51:01 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:85d617698cb4b7c4b2e4d6025d69659ccb484d096a3736e3d0b193661a2bfeca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259649037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ff873186f9654fd8a23cf2c4341badce6388f1f8caa2987bbbdc9e9a5a9c63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:09:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:09:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 06:09:48 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 06:09:50 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 06:09:52 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 01:50:23 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 01:50:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:01:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:01:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:01:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:01:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:02:01 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:43:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:44:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:44:23 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:44:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:44:31 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:44:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:47:15 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:47:16 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:47:17 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:47:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:47:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:57:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:57:08 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:57:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:57:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:57:12 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:57:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ee5ec8a068e0b0eb050931eb39551e708bf4b6e672265a9064d2f52e04a37`  
		Last Modified: Thu, 15 Feb 2018 06:47:52 GMT  
		Size: 10.2 MB (10157460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea4863957858b9bfe6972d64fcfe4c7100822b21dbac759a2fd0e13158d59e`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e74bc8294e791dd3b2ddf462f9d49594b7a10a05ce8864d92e563e3f2aa46`  
		Last Modified: Sun, 18 Feb 2018 03:21:55 GMT  
		Size: 22.3 MB (22320321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e012211edd7459266ccda4b534b5db191d3300034fd54e07077b778e813da2`  
		Last Modified: Sun, 18 Feb 2018 03:21:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b760f3f9e8f5bbf43869eefaf99aa2f981f6d08bbd7ddf81f5ec9e2dc3d26047`  
		Last Modified: Sun, 18 Feb 2018 04:23:50 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ea9005e6393fbe4bd037475195495946fbc063193a6d822ea8a1ca003873f3`  
		Last Modified: Sun, 18 Feb 2018 04:23:54 GMT  
		Size: 14.7 MB (14720957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525fd0d7d69c919e3c6b48012821ead2c37a2e9f32b96103354399c440ad790`  
		Last Modified: Sun, 18 Feb 2018 04:23:49 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a038e2b747b70d4d9d3400d07903cd5deaff16afe4cb00e69ba541652cf549e9`  
		Last Modified: Sun, 18 Feb 2018 04:23:48 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15f85eb983083f62651fbd493eb6ff446246fe492b02591c8ce912fc96c34b6`  
		Last Modified: Sun, 18 Feb 2018 04:24:02 GMT  
		Size: 58.1 MB (58133491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a801cd801ceaf9cf458d0caa0481b1347d680ac7db353c2e8b59e4a11605151a`  
		Last Modified: Sun, 18 Feb 2018 04:23:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e349a427ed4f47796c81a86b38f097cfd1ff5ca2b39cdd6fd31808e4d4078a59`  
		Last Modified: Sun, 18 Feb 2018 04:23:47 GMT  
		Size: 2.5 MB (2454588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa9e46a184194e41fb4e965d0c4309627dabcbb1c487d85f21bfc5c395eee56`  
		Last Modified: Sun, 18 Feb 2018 04:24:08 GMT  
		Size: 99.6 MB (99562199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05eba39ebaa875d7f3348a3de5b346dd9cea9b8e847e9526447c7769b8f0a05`  
		Last Modified: Sun, 18 Feb 2018 04:23:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; s390x

```console
$ docker pull redmine@sha256:5090df5f89a83dbf9c057af7e8f71a3382ba3a71a251574599769299c51718bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (263983604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5795493a86be9ff8a7a6c6cc7b1de0803a541f2fd80266ff180b4d89640d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:47:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:47:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 08:47:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 08:50:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 08:50:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 08:50:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 08:50:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 08:50:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 08:50:50 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 13:01:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 13:02:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:02:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:02:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:02:13 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 13:02:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 13:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:02:46 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 13:02:46 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 13:02:46 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 13:02:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 13:02:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 13:05:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 13:05:24 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 13:05:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 13:05:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:05:25 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 13:05:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64961cc40148ffb163ca2599da0c05cbde730fdf536900b9b8f0078e156b6401`  
		Last Modified: Thu, 15 Feb 2018 09:11:00 GMT  
		Size: 10.0 MB (9980133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac745e8a10da2fca0458aefb3a5aa46bb13fb7bd309c294efab2c83db1a812d`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b09e1c937049cd930a2af2986608996c87c1ad444de9574ae5617fd11c51e6`  
		Last Modified: Thu, 15 Feb 2018 09:11:03 GMT  
		Size: 21.7 MB (21667178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9022de23e5456061ff66057dfd3d6d0eb6d61f0233c737919c8cb985edc5e4f`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b426c39dea7006489a448f70806b95896b64f1fa709525eb2a2600730690d4b0`  
		Last Modified: Thu, 15 Feb 2018 13:11:03 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66074e40cc2ca9eba1526e934e6e064460d326234ce72bc1d77a760760e2f594`  
		Last Modified: Thu, 15 Feb 2018 13:11:06 GMT  
		Size: 14.8 MB (14815073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b894922979f3fb8064cc6c1de33088c87c0ec1732085a3c3df8287a17dcf190`  
		Last Modified: Thu, 15 Feb 2018 13:11:01 GMT  
		Size: 486.8 KB (486828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7e3d59487ec50c9b2f433fd302e1a72ab7d970b82a581e541aa97b5b8f757b`  
		Last Modified: Thu, 15 Feb 2018 13:11:01 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a731b0937be032728a4fc3374ac182eb8afb6bfc1a4d6597603f15ce730d3460`  
		Last Modified: Thu, 15 Feb 2018 13:11:34 GMT  
		Size: 59.1 MB (59109033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727a829f67b9cc95d6fe1068c5afb3437ba6f7f90f1048b9f7b331d12feb06bd`  
		Last Modified: Thu, 15 Feb 2018 13:10:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0571397073f24b9d796b46276903c52cc018af672735abc726961ff8182b0`  
		Last Modified: Thu, 15 Feb 2018 13:11:02 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17c257719e4e9589029fcc39de47374c297bf171914476eed0c55f8785d1f33`  
		Last Modified: Thu, 15 Feb 2018 13:11:37 GMT  
		Size: 102.7 MB (102663455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2906a2e437d74e49c5312f9a953a0f4ff40dd5af00b66fcb1140ea05d8c81a`  
		Last Modified: Thu, 15 Feb 2018 13:11:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.4-passenger`

```console
$ docker pull redmine@sha256:2cbf4c9f29a8ea71997474008ad7d9d64d03bb1289ca9229ad911f90a35762a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:14697081c450b3e3b3af1e750392d043154cec19a27fd0486546d0360bbbc839
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279258083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a584e5049a8066ba326c44ff2d6037813e33bfab7707c567078326cefcd4d95c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:10:13 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 17 Feb 2018 22:58:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 17 Feb 2018 22:58:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 17 Feb 2018 23:02:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 17 Feb 2018 23:14:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 23:14:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 17 Feb 2018 23:14:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:58:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:59:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:59:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:59:07 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:59:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:46 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:59:46 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:59:46 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 04:59:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 04:59:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 05:02:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:02:59 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 05:03:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 05:03:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 05:03:00 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 05:03:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sun, 18 Feb 2018 05:18:02 GMT
ENV PASSENGER_VERSION=5.2.0
# Sun, 18 Feb 2018 05:18:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:18:23 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sun, 18 Feb 2018 05:18:23 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add45ef49d053f084c22a9cc5f8798bb50273788ff9030c844f637bc57fb5e3c`  
		Last Modified: Sun, 18 Feb 2018 01:13:35 GMT  
		Size: 21.8 MB (21836247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda51b43d9368a17f98a4bb12bb4b0c02ab55c3f85058f789b9c6cf1ac3fce0b`  
		Last Modified: Sun, 18 Feb 2018 01:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e032675b01b42559a0356c5b73ecb01c987ba13a31fab4ad9dcfab54aeb93`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83824ca60996e8c260d78755c8eaa3f11ea65fb20a5a825c5ca40c4ad1eb2a77`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 14.7 MB (14650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def8f266fd26b3932658f9524fb42f1dd023014c137581ca4d35a5df2625ee1`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ba34d32a5394d698b8742025b22e9ea3c3f5343d80d60629bbb199abf9a53`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7883f0b877993d4eee1fdf902e69032916cebc342f8606cc3abc4da30225b6`  
		Last Modified: Sun, 18 Feb 2018 05:18:58 GMT  
		Size: 59.3 MB (59273170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e719b4e216c1b8af9fa8948d88ddd7bbd9db24b6917c03f216ab71dc35129e3c`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2c258f6c4fbe2c2157f2c3d0a4ad30da004f531b019d4f4f9ba3a80443325`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 2.5 MB (2454041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89cead59b97110e3ab851d2b1be749467cc54ecf5da935b077dc4373b3ee09a`  
		Last Modified: Sun, 18 Feb 2018 05:19:00 GMT  
		Size: 98.9 MB (98896946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2431695884df6a20a1c006393f12b59d4dbb4082f34069cbb1f85dfdd03550f2`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62703508501d32db02e7e141842db21ad3671f1c837ff013fa09c3f84cb4863d`  
		Last Modified: Sun, 18 Feb 2018 05:20:16 GMT  
		Size: 14.5 MB (14484009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa761fb57ee2b8e4bdd2370e71270247c374362ae5e9f02663ad11722944549`  
		Last Modified: Sun, 18 Feb 2018 05:20:14 GMT  
		Size: 4.4 MB (4354987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:2cbf4c9f29a8ea71997474008ad7d9d64d03bb1289ca9229ad911f90a35762a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:14697081c450b3e3b3af1e750392d043154cec19a27fd0486546d0360bbbc839
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279258083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a584e5049a8066ba326c44ff2d6037813e33bfab7707c567078326cefcd4d95c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:10:13 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 17 Feb 2018 22:58:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 17 Feb 2018 22:58:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 17 Feb 2018 23:02:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 17 Feb 2018 23:14:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 23:14:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 17 Feb 2018 23:14:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:58:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:59:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:59:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:59:07 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:59:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:46 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:59:46 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:59:46 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 04:59:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 04:59:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 05:02:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:02:59 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 05:03:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 05:03:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 05:03:00 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 05:03:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sun, 18 Feb 2018 05:18:02 GMT
ENV PASSENGER_VERSION=5.2.0
# Sun, 18 Feb 2018 05:18:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:18:23 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sun, 18 Feb 2018 05:18:23 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add45ef49d053f084c22a9cc5f8798bb50273788ff9030c844f637bc57fb5e3c`  
		Last Modified: Sun, 18 Feb 2018 01:13:35 GMT  
		Size: 21.8 MB (21836247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda51b43d9368a17f98a4bb12bb4b0c02ab55c3f85058f789b9c6cf1ac3fce0b`  
		Last Modified: Sun, 18 Feb 2018 01:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e032675b01b42559a0356c5b73ecb01c987ba13a31fab4ad9dcfab54aeb93`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83824ca60996e8c260d78755c8eaa3f11ea65fb20a5a825c5ca40c4ad1eb2a77`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 14.7 MB (14650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def8f266fd26b3932658f9524fb42f1dd023014c137581ca4d35a5df2625ee1`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ba34d32a5394d698b8742025b22e9ea3c3f5343d80d60629bbb199abf9a53`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7883f0b877993d4eee1fdf902e69032916cebc342f8606cc3abc4da30225b6`  
		Last Modified: Sun, 18 Feb 2018 05:18:58 GMT  
		Size: 59.3 MB (59273170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e719b4e216c1b8af9fa8948d88ddd7bbd9db24b6917c03f216ab71dc35129e3c`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2c258f6c4fbe2c2157f2c3d0a4ad30da004f531b019d4f4f9ba3a80443325`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 2.5 MB (2454041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89cead59b97110e3ab851d2b1be749467cc54ecf5da935b077dc4373b3ee09a`  
		Last Modified: Sun, 18 Feb 2018 05:19:00 GMT  
		Size: 98.9 MB (98896946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2431695884df6a20a1c006393f12b59d4dbb4082f34069cbb1f85dfdd03550f2`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62703508501d32db02e7e141842db21ad3671f1c837ff013fa09c3f84cb4863d`  
		Last Modified: Sun, 18 Feb 2018 05:20:16 GMT  
		Size: 14.5 MB (14484009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa761fb57ee2b8e4bdd2370e71270247c374362ae5e9f02663ad11722944549`  
		Last Modified: Sun, 18 Feb 2018 05:20:14 GMT  
		Size: 4.4 MB (4354987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:2cbf4c9f29a8ea71997474008ad7d9d64d03bb1289ca9229ad911f90a35762a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:14697081c450b3e3b3af1e750392d043154cec19a27fd0486546d0360bbbc839
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279258083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a584e5049a8066ba326c44ff2d6037813e33bfab7707c567078326cefcd4d95c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:10:13 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 17 Feb 2018 22:58:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 17 Feb 2018 22:58:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 17 Feb 2018 23:02:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 17 Feb 2018 23:14:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 23:14:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 17 Feb 2018 23:14:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:58:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:59:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:59:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:59:07 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:59:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:46 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:59:46 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:59:46 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 04:59:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 04:59:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 05:02:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:02:59 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 05:03:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 05:03:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 05:03:00 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 05:03:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sun, 18 Feb 2018 05:18:02 GMT
ENV PASSENGER_VERSION=5.2.0
# Sun, 18 Feb 2018 05:18:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:18:23 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sun, 18 Feb 2018 05:18:23 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add45ef49d053f084c22a9cc5f8798bb50273788ff9030c844f637bc57fb5e3c`  
		Last Modified: Sun, 18 Feb 2018 01:13:35 GMT  
		Size: 21.8 MB (21836247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda51b43d9368a17f98a4bb12bb4b0c02ab55c3f85058f789b9c6cf1ac3fce0b`  
		Last Modified: Sun, 18 Feb 2018 01:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e032675b01b42559a0356c5b73ecb01c987ba13a31fab4ad9dcfab54aeb93`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83824ca60996e8c260d78755c8eaa3f11ea65fb20a5a825c5ca40c4ad1eb2a77`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 14.7 MB (14650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def8f266fd26b3932658f9524fb42f1dd023014c137581ca4d35a5df2625ee1`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ba34d32a5394d698b8742025b22e9ea3c3f5343d80d60629bbb199abf9a53`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7883f0b877993d4eee1fdf902e69032916cebc342f8606cc3abc4da30225b6`  
		Last Modified: Sun, 18 Feb 2018 05:18:58 GMT  
		Size: 59.3 MB (59273170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e719b4e216c1b8af9fa8948d88ddd7bbd9db24b6917c03f216ab71dc35129e3c`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2c258f6c4fbe2c2157f2c3d0a4ad30da004f531b019d4f4f9ba3a80443325`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 2.5 MB (2454041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89cead59b97110e3ab851d2b1be749467cc54ecf5da935b077dc4373b3ee09a`  
		Last Modified: Sun, 18 Feb 2018 05:19:00 GMT  
		Size: 98.9 MB (98896946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2431695884df6a20a1c006393f12b59d4dbb4082f34069cbb1f85dfdd03550f2`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62703508501d32db02e7e141842db21ad3671f1c837ff013fa09c3f84cb4863d`  
		Last Modified: Sun, 18 Feb 2018 05:20:16 GMT  
		Size: 14.5 MB (14484009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa761fb57ee2b8e4bdd2370e71270247c374362ae5e9f02663ad11722944549`  
		Last Modified: Sun, 18 Feb 2018 05:20:14 GMT  
		Size: 4.4 MB (4354987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:c5acd37abcda155415120fa8922830bcfd787b4288f7eecaeeb9c737c09d5bd4
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
$ docker pull redmine@sha256:feddd1ee33084d772f5d97b81cf0cfcf515991bce78f3565babcfc421f13b492
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259857690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d722ac707a5fbccace40e68ef35e7a79894412dba9d0cd4cb728b7b952f777`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:10:13 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 16 Feb 2018 19:10:26 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Fri, 16 Feb 2018 19:10:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Fri, 16 Feb 2018 19:14:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Feb 2018 19:22:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Feb 2018 19:22:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Feb 2018 19:22:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 19:22:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 16 Feb 2018 19:22:11 GMT
CMD ["irb"]
# Fri, 16 Feb 2018 21:33:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Feb 2018 21:33:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 21:33:55 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 21:34:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 21:34:09 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Feb 2018 21:34:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Feb 2018 21:34:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 21:35:03 GMT
ENV RAILS_ENV=production
# Fri, 16 Feb 2018 21:35:04 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Feb 2018 21:35:04 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Feb 2018 21:35:04 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Feb 2018 21:35:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Feb 2018 21:38:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 21:39:53 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Feb 2018 21:39:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Feb 2018 21:39:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 21:40:06 GMT
EXPOSE 3000/tcp
# Fri, 16 Feb 2018 21:40:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0ec88d1509380a504b5dc0a1621f00b20964b4ea2470dcd498b1c93f9fbf8e`  
		Last Modified: Fri, 16 Feb 2018 19:46:46 GMT  
		Size: 21.3 MB (21268735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273566f370eed7f94db1d8a8a6fcbbad45fbfc58c2ce4dccfb59d15357d29187`  
		Last Modified: Fri, 16 Feb 2018 19:46:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9457294098cd1de6bc8e18e2abc6f6720a39f32121c9323aabe17059478ce0b`  
		Last Modified: Fri, 16 Feb 2018 22:09:40 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c7aff6399d18d2683bc56c6c6b2289b3db23ba5306048a70209d8d44362822`  
		Last Modified: Fri, 16 Feb 2018 22:09:40 GMT  
		Size: 14.7 MB (14650376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ccd79940111ded51cffbadc92bbe06e39789403eb0bcec68bdbacdbd63825d`  
		Last Modified: Fri, 16 Feb 2018 22:09:36 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af0963d992462bdf0041d99132b5606a946fdb0515e05e3c4d44620beaf5ab9`  
		Last Modified: Fri, 16 Feb 2018 22:09:34 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368d4bc3e95725893b5c09bb6a8bb91704b16f2addf9d3589b3a96a276098078`  
		Last Modified: Fri, 16 Feb 2018 22:09:52 GMT  
		Size: 59.3 MB (59271089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7494d2d98eae6a52b7024f2ed7c63f55adad07bd4f33cb05ad8834c01cb73215`  
		Last Modified: Fri, 16 Feb 2018 22:09:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9292bb78f7ea077dbfd70660e717055a693a7673fcd796d08b26e5d323c563`  
		Last Modified: Fri, 16 Feb 2018 22:09:36 GMT  
		Size: 2.5 MB (2454045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5641b497d90865ee4ab9a9ec9ead0a71cfd14cff220ff999a321c9493da045d`  
		Last Modified: Fri, 16 Feb 2018 22:10:03 GMT  
		Size: 98.9 MB (98905589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d10734ff95947a0b00890f222260c8c55da12ff575808ad3f4dff8a08506c6`  
		Last Modified: Fri, 16 Feb 2018 22:09:32 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:75e65f15844f9fc97340a0f0ddd13a2f8eb58273949fb4a36302f12cf3abf5f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253687271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbce0379261333366ea14a985d4a3ecb1b28f38af19db25ba24bce923597aa7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:27:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 22:27:00 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 22:27:01 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 22:27:01 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 02:45:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 02:45:14 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:51:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:51:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:51:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:51:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:51:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:51:20 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:45:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:46:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:46:30 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:46:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:46:32 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:46:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:47:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:47:33 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:47:34 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:47:34 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:47:34 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:47:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:52:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:52:55 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:52:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:52:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:52:56 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:52:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17ca9b88c473d3be3575ff4ae0cad91c4ef255c03215cc8baf86ae31f9fdfb7`  
		Last Modified: Thu, 15 Feb 2018 23:06:29 GMT  
		Size: 9.1 MB (9133359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260097b731d55069d7db925a95b239a954a691694f422a9325b9e0fb3f05a9ec`  
		Last Modified: Thu, 15 Feb 2018 23:06:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cd7fe618fe5f51d5426dd289185eaa231f2bbe653b5bca28047b407bcc0710`  
		Last Modified: Sun, 18 Feb 2018 03:24:18 GMT  
		Size: 21.6 MB (21570414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50735e96aaa705a9298eb3a0760be5c7e45defd735aca388ddf6db7df8fd01ef`  
		Last Modified: Sun, 18 Feb 2018 03:24:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106d54cd6510d9ea66159b135c9d77bc39e4b2d2afac5297d1fe478472f432e1`  
		Last Modified: Sun, 18 Feb 2018 04:05:03 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eca6a668501d782d1740565caa06622a92299be51be5d2ecb08967070d69384`  
		Last Modified: Sun, 18 Feb 2018 04:05:07 GMT  
		Size: 14.3 MB (14347963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4857f19cf059b0edd31db81bc91b29aa5d08acce0007c3a953997dd65b9e78`  
		Last Modified: Sun, 18 Feb 2018 04:05:02 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3193b2bebde2d5608cc229baaa4105c3c3108ac01d72b2048b1628a533d3cd96`  
		Last Modified: Sun, 18 Feb 2018 04:05:01 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c078587a426897e06dfdde749a134fe76ace7fe4830a23f0569eb18cf9e4c3a0`  
		Last Modified: Sun, 18 Feb 2018 04:05:30 GMT  
		Size: 56.6 MB (56611405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a150f134952a4934ad926e60aafaadcee91cc06a9bc2ea4b1f9c86e872f052`  
		Last Modified: Sun, 18 Feb 2018 04:05:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d29f6db9e4b3f963400341665dd61670dae5aeba7c70bdc4211f232a598ecb`  
		Last Modified: Sun, 18 Feb 2018 04:05:02 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83344698e8f07c0229fe6f9bca6d8e4c46be0f399df4f2ec21e971e563ab8924`  
		Last Modified: Sun, 18 Feb 2018 04:05:27 GMT  
		Size: 98.2 MB (98176501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b602fc792045002b0445a40a91c533faaa6001c469320b0304bc949af24b05b8`  
		Last Modified: Sun, 18 Feb 2018 04:05:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:1ff9031d8e64e0e44a8f4078794a4ed9d15579b9e9ac48b61fd25fe631b087f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247714891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9f124a479d0da9f1ba88aa6607d79c45ece1d43e07ab9773d6334fe9be562d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:42:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:42:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 16:42:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 02:33:18 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 02:33:18 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:38:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:38:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:38:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:38:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:38:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:38:50 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:32:51 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:33:20 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:33:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:33:22 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:33:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:34:20 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:34:20 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:34:21 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:34:21 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:34:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:39:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:39:25 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:39:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:39:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:39:26 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:39:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6420e9fe85a4dfc8671dec12a73cef954ad80f657f4554c5cdd39581792af816`  
		Last Modified: Thu, 15 Feb 2018 17:23:02 GMT  
		Size: 8.8 MB (8785785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d111bbb582d5bd73a5b3e81b059b5a652723f92838b08810b8e9b41a44f39a3`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaddc8a1df67b03569a277ab33159a48d39776be60350459660efb1d964f0f04`  
		Last Modified: Sun, 18 Feb 2018 03:10:35 GMT  
		Size: 21.4 MB (21421873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a38d1eb4d6ae0fe039ab63d95f9904e67e915e579199705ab0bc30600b5ae3`  
		Last Modified: Sun, 18 Feb 2018 03:10:27 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1133e6a4ceb12aae158f7a8ec43022490e5bc8c8ae1572d7d7d948f6ffefb87`  
		Last Modified: Sun, 18 Feb 2018 03:50:38 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e313c71afc9a3bd40c732ec2c9e3c3c43f61e6a243c759d1adb4e3d186b1e2bc`  
		Last Modified: Sun, 18 Feb 2018 03:50:41 GMT  
		Size: 14.1 MB (14134934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b0901fb885f1c626b57d5e64a0ac50647dac14da97b64cf444163ed731ec8d`  
		Last Modified: Sun, 18 Feb 2018 03:50:37 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e640c889319d2df80d94d02b9ca72c1643888928c148b3718c8fcbfb62202ad`  
		Last Modified: Sun, 18 Feb 2018 03:50:35 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733c19ecfc54ecda353a11083d921580243e8cb583909fdbb2ed171c6ec26395`  
		Last Modified: Sun, 18 Feb 2018 03:50:50 GMT  
		Size: 54.3 MB (54345521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ac0ed83c1e96f2083432bbf5278543f592af04c9f97d25c8ed9ad5bad55efe`  
		Last Modified: Sun, 18 Feb 2018 03:50:34 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ba8665666540033bedf133c7d7ad91ec03ada7c196f79c3978ff3591d328bf`  
		Last Modified: Sun, 18 Feb 2018 03:50:36 GMT  
		Size: 2.5 MB (2454587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d59b75dd99b0f9ed0333b61c8a419c2667e613aa9281d4f2d5dcd31a976ca04`  
		Last Modified: Sun, 18 Feb 2018 03:51:00 GMT  
		Size: 97.4 MB (97383758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862e1238c37e98417eac92315f1efcfec345dd49d062215d3a64b9569c08709`  
		Last Modified: Sun, 18 Feb 2018 03:50:34 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:8af7746f64aaa7882c16991ae086d8f1b5cb55239089a834e4b761e957ee302f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.1 MB (252129052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6bc20f6a013ff14795f185dbeb5838cb139eb426978cd4a0d7220418006a08b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:07:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:07:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 04:07:45 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 04:07:46 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 04:07:46 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Fri, 16 Feb 2018 04:07:47 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Fri, 16 Feb 2018 04:07:47 GMT
ENV BUNDLER_VERSION=1.16.1
# Fri, 16 Feb 2018 04:19:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Feb 2018 04:19:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Feb 2018 04:19:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Feb 2018 04:19:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 04:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 16 Feb 2018 04:19:15 GMT
CMD ["irb"]
# Fri, 16 Feb 2018 13:39:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Feb 2018 13:40:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:40:12 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 13:40:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Feb 2018 13:40:18 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Feb 2018 13:40:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Feb 2018 13:42:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 13:42:06 GMT
ENV RAILS_ENV=production
# Fri, 16 Feb 2018 13:42:07 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Feb 2018 13:42:07 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Feb 2018 13:42:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Feb 2018 13:42:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Feb 2018 13:52:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 13:52:21 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Feb 2018 13:52:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Feb 2018 13:52:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 13:52:24 GMT
EXPOSE 3000/tcp
# Fri, 16 Feb 2018 13:52:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccfe391b2c8441bb4bcd899cfb14b86c2525659cfb704a2027adaf784c1b064`  
		Last Modified: Fri, 16 Feb 2018 05:22:29 GMT  
		Size: 9.4 MB (9355476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7ec15a80ed0454ca97abf1366ef6c8e73c0095306d096f8c14dfd85b90fed4`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacf80a2603ec29d0c3177edae7612906d13692fdf98125096df079cd329fa4f`  
		Last Modified: Fri, 16 Feb 2018 05:22:34 GMT  
		Size: 21.2 MB (21240352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9798fd1b383c10d2f2e1d05bf19e9037547b85b9ec3d7f0530a7216f189fcb5b`  
		Last Modified: Fri, 16 Feb 2018 05:22:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049c4667e08b87ffc3a48c6515df5383c89951b8575d436a9ae432031f04e59f`  
		Last Modified: Fri, 16 Feb 2018 14:17:42 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b52211a8a91a7ebca70692d83995ad53cb9dfaaf650f6e9904138af977dfbe`  
		Last Modified: Fri, 16 Feb 2018 14:17:47 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274ef55f7fb7cb703edac0511202cdcbc84325c9c60267fcf4519defb3daf504`  
		Last Modified: Fri, 16 Feb 2018 14:17:40 GMT  
		Size: 468.7 KB (468699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7009f4f1642b07549fa9753c8bc5bcef3c2e703eddbcfe51a6fe772c14447507`  
		Last Modified: Fri, 16 Feb 2018 14:17:40 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f72ec906f7315db72851e35ac51fbd67fbd1530f1e0135cec62e2f23eac8043`  
		Last Modified: Fri, 16 Feb 2018 14:17:56 GMT  
		Size: 55.8 MB (55795130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded757d2aef798eacc0c2e6229e47fbebbae0c6a7fb83bb11fc85a84d13faba6`  
		Last Modified: Fri, 16 Feb 2018 14:17:35 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb7f3cd523f7f2b3d1248c5210c3e2fcd8eefc1e9024c9d5056e32fcea54a1b`  
		Last Modified: Fri, 16 Feb 2018 14:17:39 GMT  
		Size: 2.5 MB (2454050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5f6ad846be8c43a37a9fd4db1b695d4a3f570a2f3cb5e9d147885e825c8e79`  
		Last Modified: Fri, 16 Feb 2018 14:18:07 GMT  
		Size: 98.4 MB (98406027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1997c23dcc8fc9e3b69bdf46799abc2fc49c9e4c40b90364ef1c94eea8d6e66`  
		Last Modified: Fri, 16 Feb 2018 14:17:35 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:33952ccd860cf8e8e4013ccbd04dcff67dbb203afc09994255f11c7e7951439b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262817489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e0b64ff6b826da356c2ca48d19377378a9b3876989c752cb104500783eb478`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 05:00:41 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 05:00:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 05:05:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 05:05:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 05:05:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 05:05:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 05:05:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 05:05:07 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 15:24:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 15:25:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 15:25:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 15:25:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 15:25:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 15:26:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 15:26:58 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 15:26:59 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 15:26:59 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 15:26:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 15:27:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 15:32:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 15:47:14 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 15:47:14 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 15:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 15:47:15 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 15:47:15 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf8a023cee4478aac3e42dc9c080707f7dadb9192fc5a26f47c2f9d2b94201`  
		Last Modified: Wed, 07 Feb 2018 08:47:36 GMT  
		Size: 20.3 MB (20270533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93265ad4855a1e9361435df0a8472dad6d75908a967f2f5b4f98ecd6df2a0bb`  
		Last Modified: Wed, 07 Feb 2018 08:47:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a159e21c92274a288504e881722100ae8e8508c7cfb917c7bc911a18d8a9b4de`  
		Last Modified: Wed, 07 Feb 2018 16:51:00 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b5f0320cdd9784b720651a1983c9047c16d78236c32a23f86bcdb1a2a5889e`  
		Last Modified: Wed, 07 Feb 2018 16:51:09 GMT  
		Size: 14.8 MB (14817575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05f031aeea99e359ccd3a6eb3c1c6c6b3cb788fc71f2a851c1093301e11d999`  
		Last Modified: Wed, 07 Feb 2018 16:51:00 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d4fa48c2ce1388c46a43592d4571e6ee9b7f3ee4d93c49f107c6441ad5ae37`  
		Last Modified: Wed, 07 Feb 2018 16:51:01 GMT  
		Size: 8.6 KB (8568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c2a492909498c474271e579248c3881f7f3c47e2863fcc0a488c01adf146dd`  
		Last Modified: Wed, 07 Feb 2018 16:51:32 GMT  
		Size: 60.1 MB (60147242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17503d527d33f8f3fb724e53b3bdfafa2b222776b00ce6b25c9f7969e0c7a04`  
		Last Modified: Wed, 07 Feb 2018 16:51:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ec4b0bbfdc6dd65fbda8ac868b74d5752940fb486b4d46f966f1ce4757d7d`  
		Last Modified: Wed, 07 Feb 2018 16:51:09 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95163ecd8e45a35e29469de9d05e182b65f4ecb7d653ecb15436dd82a0ac03b`  
		Last Modified: Wed, 07 Feb 2018 16:51:50 GMT  
		Size: 97.2 MB (97208920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca59a0645a8802ad6378918cff7d8ed1636e48bf45be4747f263be79aa7fb85e`  
		Last Modified: Wed, 07 Feb 2018 16:51:01 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:85d617698cb4b7c4b2e4d6025d69659ccb484d096a3736e3d0b193661a2bfeca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259649037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ff873186f9654fd8a23cf2c4341badce6388f1f8caa2987bbbdc9e9a5a9c63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:09:43 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:09:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 06:09:48 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 06:09:50 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 06:09:52 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 18 Feb 2018 01:50:23 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 01:50:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:01:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:01:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:01:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:01:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:01:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:02:01 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 03:43:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 03:44:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:44:23 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:44:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 03:44:31 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 03:44:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 03:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:47:15 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 03:47:16 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 03:47:17 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 03:47:19 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 03:47:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 03:57:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 03:57:08 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 03:57:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 03:57:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:57:12 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 03:57:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ee5ec8a068e0b0eb050931eb39551e708bf4b6e672265a9064d2f52e04a37`  
		Last Modified: Thu, 15 Feb 2018 06:47:52 GMT  
		Size: 10.2 MB (10157460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea4863957858b9bfe6972d64fcfe4c7100822b21dbac759a2fd0e13158d59e`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542e74bc8294e791dd3b2ddf462f9d49594b7a10a05ce8864d92e563e3f2aa46`  
		Last Modified: Sun, 18 Feb 2018 03:21:55 GMT  
		Size: 22.3 MB (22320321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e012211edd7459266ccda4b534b5db191d3300034fd54e07077b778e813da2`  
		Last Modified: Sun, 18 Feb 2018 03:21:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b760f3f9e8f5bbf43869eefaf99aa2f981f6d08bbd7ddf81f5ec9e2dc3d26047`  
		Last Modified: Sun, 18 Feb 2018 04:23:50 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ea9005e6393fbe4bd037475195495946fbc063193a6d822ea8a1ca003873f3`  
		Last Modified: Sun, 18 Feb 2018 04:23:54 GMT  
		Size: 14.7 MB (14720957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4525fd0d7d69c919e3c6b48012821ead2c37a2e9f32b96103354399c440ad790`  
		Last Modified: Sun, 18 Feb 2018 04:23:49 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a038e2b747b70d4d9d3400d07903cd5deaff16afe4cb00e69ba541652cf549e9`  
		Last Modified: Sun, 18 Feb 2018 04:23:48 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15f85eb983083f62651fbd493eb6ff446246fe492b02591c8ce912fc96c34b6`  
		Last Modified: Sun, 18 Feb 2018 04:24:02 GMT  
		Size: 58.1 MB (58133491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a801cd801ceaf9cf458d0caa0481b1347d680ac7db353c2e8b59e4a11605151a`  
		Last Modified: Sun, 18 Feb 2018 04:23:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e349a427ed4f47796c81a86b38f097cfd1ff5ca2b39cdd6fd31808e4d4078a59`  
		Last Modified: Sun, 18 Feb 2018 04:23:47 GMT  
		Size: 2.5 MB (2454588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa9e46a184194e41fb4e965d0c4309627dabcbb1c487d85f21bfc5c395eee56`  
		Last Modified: Sun, 18 Feb 2018 04:24:08 GMT  
		Size: 99.6 MB (99562199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05eba39ebaa875d7f3348a3de5b346dd9cea9b8e847e9526447c7769b8f0a05`  
		Last Modified: Sun, 18 Feb 2018 04:23:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:5090df5f89a83dbf9c057af7e8f71a3382ba3a71a251574599769299c51718bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (263983604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5795493a86be9ff8a7a6c6cc7b1de0803a541f2fd80266ff180b4d89640d11b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:47:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:47:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Feb 2018 08:47:46 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 08:47:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 08:50:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 08:50:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 08:50:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 08:50:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 08:50:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 08:50:50 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 13:01:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 13:02:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:02:10 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 13:02:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 13:02:13 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 13:02:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 13:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:02:46 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 13:02:46 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 13:02:46 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 13:02:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 13:02:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 13:05:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 13:05:24 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 13:05:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 13:05:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 13:05:25 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 13:05:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64961cc40148ffb163ca2599da0c05cbde730fdf536900b9b8f0078e156b6401`  
		Last Modified: Thu, 15 Feb 2018 09:11:00 GMT  
		Size: 10.0 MB (9980133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac745e8a10da2fca0458aefb3a5aa46bb13fb7bd309c294efab2c83db1a812d`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b09e1c937049cd930a2af2986608996c87c1ad444de9574ae5617fd11c51e6`  
		Last Modified: Thu, 15 Feb 2018 09:11:03 GMT  
		Size: 21.7 MB (21667178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9022de23e5456061ff66057dfd3d6d0eb6d61f0233c737919c8cb985edc5e4f`  
		Last Modified: Thu, 15 Feb 2018 09:10:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b426c39dea7006489a448f70806b95896b64f1fa709525eb2a2600730690d4b0`  
		Last Modified: Thu, 15 Feb 2018 13:11:03 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66074e40cc2ca9eba1526e934e6e064460d326234ce72bc1d77a760760e2f594`  
		Last Modified: Thu, 15 Feb 2018 13:11:06 GMT  
		Size: 14.8 MB (14815073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b894922979f3fb8064cc6c1de33088c87c0ec1732085a3c3df8287a17dcf190`  
		Last Modified: Thu, 15 Feb 2018 13:11:01 GMT  
		Size: 486.8 KB (486828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7e3d59487ec50c9b2f433fd302e1a72ab7d970b82a581e541aa97b5b8f757b`  
		Last Modified: Thu, 15 Feb 2018 13:11:01 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a731b0937be032728a4fc3374ac182eb8afb6bfc1a4d6597603f15ce730d3460`  
		Last Modified: Thu, 15 Feb 2018 13:11:34 GMT  
		Size: 59.1 MB (59109033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727a829f67b9cc95d6fe1068c5afb3437ba6f7f90f1048b9f7b331d12feb06bd`  
		Last Modified: Thu, 15 Feb 2018 13:10:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0571397073f24b9d796b46276903c52cc018af672735abc726961ff8182b0`  
		Last Modified: Thu, 15 Feb 2018 13:11:02 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17c257719e4e9589029fcc39de47374c297bf171914476eed0c55f8785d1f33`  
		Last Modified: Thu, 15 Feb 2018 13:11:37 GMT  
		Size: 102.7 MB (102663455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2906a2e437d74e49c5312f9a953a0f4ff40dd5af00b66fcb1140ea05d8c81a`  
		Last Modified: Thu, 15 Feb 2018 13:11:00 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:2cbf4c9f29a8ea71997474008ad7d9d64d03bb1289ca9229ad911f90a35762a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:14697081c450b3e3b3af1e750392d043154cec19a27fd0486546d0360bbbc839
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279258083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a584e5049a8066ba326c44ff2d6037813e33bfab7707c567078326cefcd4d95c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 19:10:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:10:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 19:10:13 GMT
ENV RUBY_MAJOR=2.4
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 16 Feb 2018 19:10:25 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sat, 17 Feb 2018 22:58:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 17 Feb 2018 22:58:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 17 Feb 2018 23:02:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 17 Feb 2018 23:14:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Feb 2018 23:14:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 23:14:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 17 Feb 2018 23:14:29 GMT
CMD ["irb"]
# Sun, 18 Feb 2018 04:58:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 18 Feb 2018 04:59:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:02 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 04:59:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 18 Feb 2018 04:59:07 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 18 Feb 2018 04:59:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 18 Feb 2018 04:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 04:59:46 GMT
ENV RAILS_ENV=production
# Sun, 18 Feb 2018 04:59:46 GMT
WORKDIR /usr/src/redmine
# Sun, 18 Feb 2018 04:59:46 GMT
ENV REDMINE_VERSION=3.4.4
# Sun, 18 Feb 2018 04:59:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Sun, 18 Feb 2018 04:59:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 18 Feb 2018 05:02:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:02:59 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 18 Feb 2018 05:03:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sun, 18 Feb 2018 05:03:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 05:03:00 GMT
EXPOSE 3000/tcp
# Sun, 18 Feb 2018 05:03:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sun, 18 Feb 2018 05:18:02 GMT
ENV PASSENGER_VERSION=5.2.0
# Sun, 18 Feb 2018 05:18:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 18 Feb 2018 05:18:23 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sun, 18 Feb 2018 05:18:23 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a5e19da6dc81cda983ecc5eba8a766f8d6f1cfcc167a03fcc72ce6e832de77`  
		Last Modified: Fri, 16 Feb 2018 19:46:42 GMT  
		Size: 10.2 MB (10185989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47263ef438aa5a72b392cbfeebd5c5d425c0c1a524de170fc67a8b3d13f25d63`  
		Last Modified: Fri, 16 Feb 2018 19:46:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add45ef49d053f084c22a9cc5f8798bb50273788ff9030c844f637bc57fb5e3c`  
		Last Modified: Sun, 18 Feb 2018 01:13:35 GMT  
		Size: 21.8 MB (21836247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda51b43d9368a17f98a4bb12bb4b0c02ab55c3f85058f789b9c6cf1ac3fce0b`  
		Last Modified: Sun, 18 Feb 2018 01:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e032675b01b42559a0356c5b73ecb01c987ba13a31fab4ad9dcfab54aeb93`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83824ca60996e8c260d78755c8eaa3f11ea65fb20a5a825c5ca40c4ad1eb2a77`  
		Last Modified: Sun, 18 Feb 2018 05:18:51 GMT  
		Size: 14.7 MB (14650835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6def8f266fd26b3932658f9524fb42f1dd023014c137581ca4d35a5df2625ee1`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783ba34d32a5394d698b8742025b22e9ea3c3f5343d80d60629bbb199abf9a53`  
		Last Modified: Sun, 18 Feb 2018 05:18:48 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7883f0b877993d4eee1fdf902e69032916cebc342f8606cc3abc4da30225b6`  
		Last Modified: Sun, 18 Feb 2018 05:18:58 GMT  
		Size: 59.3 MB (59273170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e719b4e216c1b8af9fa8948d88ddd7bbd9db24b6917c03f216ab71dc35129e3c`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add2c258f6c4fbe2c2157f2c3d0a4ad30da004f531b019d4f4f9ba3a80443325`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 2.5 MB (2454041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89cead59b97110e3ab851d2b1be749467cc54ecf5da935b077dc4373b3ee09a`  
		Last Modified: Sun, 18 Feb 2018 05:19:00 GMT  
		Size: 98.9 MB (98896946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2431695884df6a20a1c006393f12b59d4dbb4082f34069cbb1f85dfdd03550f2`  
		Last Modified: Sun, 18 Feb 2018 05:18:46 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62703508501d32db02e7e141842db21ad3671f1c837ff013fa09c3f84cb4863d`  
		Last Modified: Sun, 18 Feb 2018 05:20:16 GMT  
		Size: 14.5 MB (14484009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa761fb57ee2b8e4bdd2370e71270247c374362ae5e9f02663ad11722944549`  
		Last Modified: Sun, 18 Feb 2018 05:20:14 GMT  
		Size: 4.4 MB (4354987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
