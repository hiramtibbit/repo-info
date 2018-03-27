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
$ docker pull redmine@sha256:45d228acf2e6e0f42b0df3a45be6c3a2ae4fedbd2531c4e903079f644d4d577e
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
$ docker pull redmine@sha256:101108f8e14ffdb58eda52082eb1170ef7c21225a28234bc0ca3b45f39b281ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.1 MB (260109164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f557ec12662cb1b2ccbc12031ac5accac7b3562564dd1ac662c26d8a70315849`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:01:28 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:04:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:04:42 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 00:48:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 00:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:48:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 00:48:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 00:48:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 00:48:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 00:49:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:49:42 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 00:49:43 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Mar 2018 00:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 00:52:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 00:52:36 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 00:52:37 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 00:52:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 00:52:37 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 00:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11be863a5d0ad8d10d8911dbf6b29a4a9e33672ff9ee94114d2c525a6b5cd93`  
		Last Modified: Wed, 14 Mar 2018 20:56:44 GMT  
		Size: 21.3 MB (21275070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1ac0d7045504963750d15c8b27b3e5d9bdead11d46535b9aa1af79358ca366`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414fa21abc62d2105afe9a527f6bc650797f21db1775e80207fcba211f93a06c`  
		Last Modified: Fri, 16 Mar 2018 01:39:21 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c2fe98a1ea9abe38a8b3f3671a0258ec303688ea3c57617520ea113047d790`  
		Last Modified: Fri, 16 Mar 2018 01:39:23 GMT  
		Size: 14.7 MB (14650430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1247165550c8c48efa14e410cd24c12fb01c82e257a2c360c77802c8695d71`  
		Last Modified: Fri, 16 Mar 2018 01:39:18 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5addd8016dbe3ced7eecb54abd829f984e11c643e4663a101d68da6e10b2b7`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 8.5 KB (8502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e0c65b1d34eb0f1008d59074ae239d8a85e2841cf3962273af692d43b9f960`  
		Last Modified: Fri, 16 Mar 2018 01:39:32 GMT  
		Size: 59.3 MB (59270801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293a5004008702ad83edd7f5319168225c0e7424d8e21768f58dbd21232221fc`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d3a509a21c6844ed89cb021d3dcdd26c1f7dff78a13b97a6de38d84a426bd0`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caff02935c779e01b0c7eb1ce5ecc8228a9afbab5572ade0782a4b86ccbe935`  
		Last Modified: Fri, 16 Mar 2018 01:39:41 GMT  
		Size: 99.2 MB (99150771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a898ef6c4de2b6d2f9b89ba04b2d41f710f294cddb91f836d740e6b8cca573b`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:29b82538b7cbc9b06d694498a80ad638e508f325da2c9a2d8367e9316c061e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253408562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97834a6ec48fb16706c0964b817ae62c76d7c94be956f86aa2a620a1d09ac0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:54:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:54:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:54:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:54:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 21:00:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 21:00:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 21:00:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 21:00:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 21:00:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 21:00:24 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 00:22:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 00:22:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:22:34 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:22:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 00:22:41 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 00:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 00:23:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:23:38 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 00:23:38 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 00:23:39 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 00:23:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 00:23:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 00:29:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:29:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 00:29:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 00:29:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 00:29:14 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 00:29:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5473f43f4b59989ac86bfabe67b51edefa4cea3b14253ecfa7eb87fe141c6fdf`  
		Last Modified: Wed, 14 Mar 2018 21:22:45 GMT  
		Size: 9.1 MB (9133325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839ac87b9c320a77dc7a49e28b87c64b9ddfbc570c2bbb0048b0bbf6b6eae293`  
		Last Modified: Wed, 14 Mar 2018 21:22:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc654a792ae0e15452ff96563544505f39a2205ca4efa1e7525c9fa966548e90`  
		Last Modified: Wed, 14 Mar 2018 21:22:48 GMT  
		Size: 21.0 MB (21041111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e05f773d20db3d57a54a6380c00e51585ede9b6a2263dac86d29116e854e4f6`  
		Last Modified: Wed, 14 Mar 2018 21:22:40 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97438663e6af829ec2e11262fa7cb79de8aa6f7dcc78851289a888cb80fce694`  
		Last Modified: Thu, 15 Mar 2018 00:41:28 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add99afd1a8fd045a4c7c693cfeeedc8a930af0af0593f607d9bf07c73c682d4`  
		Last Modified: Thu, 15 Mar 2018 00:41:30 GMT  
		Size: 14.3 MB (14347480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79352480715b9c36fc7e194a030969ddc685bca78c0183a19e3f7c4677bd793b`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f55cba16a4edaa437fc1f10c5936efc58626ec0f7dd6138669f5fec30605e46`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288bae8416a16a76e2bddb78caf60f6908fd9cfd894bd7f89201d7c5ab3ad94b`  
		Last Modified: Thu, 15 Mar 2018 00:41:43 GMT  
		Size: 56.6 MB (56611223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803b65d9214c6a72c7553dd13a606f3014df3142c36c922faf7c14e23b685898`  
		Last Modified: Thu, 15 Mar 2018 00:41:24 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c67d436f570a3efa9ab70f037341e37352c541008dd387c85704993f46c5c8d`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 2.5 MB (2454581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90455565e7ec0e70b3370630915f8629a1f6284f824c973c02a9f1ed0717e11a`  
		Last Modified: Thu, 15 Mar 2018 00:41:50 GMT  
		Size: 98.4 MB (98427407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08799f61d165db5c0edd9358597faac8691368870f2e917e1bd975d89752793f`  
		Last Modified: Thu, 15 Mar 2018 00:41:24 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:a4bb80173ffdf3e38dfd43c321b48cf751b0ce48d69acfcf28372b44de933ed9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247373612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7968db62fd6080bfd7d300fbb2f6b8e66422c838b69bde1fef1b1447d66359`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:17:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:17:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 16:17:11 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 16:17:11 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 16:17:12 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 16:17:12 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 16:17:12 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 16:22:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 16:22:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 16:22:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 16:22:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:22:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 16:22:47 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 19:11:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 19:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:12:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:12:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 19:12:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 19:12:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 19:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:13:16 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 19:13:17 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 19:13:17 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 14 Mar 2018 19:13:18 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 14 Mar 2018 19:13:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 19:18:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:18:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 19:18:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 19:18:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:18:24 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 19:18:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23990e8e0248903864ae0a398aa7696d1f976a252f99c84c8d69f337556d0e`  
		Last Modified: Wed, 14 Mar 2018 17:01:21 GMT  
		Size: 8.8 MB (8785784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c1085b4ef8dafa6f45c42463ec56ae2b446744a75840f17c7609dc7ee71f3`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b74047e0b4ff19a4aee7e14b439a76ee1309df114d001f4ef23b9a2ea22cbc`  
		Last Modified: Wed, 14 Mar 2018 17:01:25 GMT  
		Size: 20.9 MB (20904856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bec4612abc5d5358200933319a6cb460e03a0b6cd089bef37d5aa99657cadc8`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f25e9335e3ad42428904ca33ce2614745f352876d8b9504f3ceacad49e5aea`  
		Last Modified: Wed, 14 Mar 2018 19:30:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8fec847ed59f156468790914c3ce6379452cff9f4a216b37de2014b5d9011a`  
		Last Modified: Wed, 14 Mar 2018 19:30:49 GMT  
		Size: 14.1 MB (14134511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e58090d88f3e9c940fabec6362798754e0ec02bb95ed1edcd45aeae23777432`  
		Last Modified: Wed, 14 Mar 2018 19:30:46 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46ed5354fe9a952b75a70baf9f19c04e5451b3d6c39b504a37015ede7f4189f`  
		Last Modified: Wed, 14 Mar 2018 19:30:44 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260a4bb1bc7da68c5d370c4a3ee9afc18fc4864120dceea9e9a5b76d618d751d`  
		Last Modified: Wed, 14 Mar 2018 19:31:01 GMT  
		Size: 54.3 MB (54344985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c0769da10ffe548069117c2c56e178e2f860886038283f57c24b48d60d7829`  
		Last Modified: Wed, 14 Mar 2018 19:30:43 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b21d2f4adb5d4b16de91c3bb1ff021b22fc405e4ac02c9295a2533de8a9ae7`  
		Last Modified: Wed, 14 Mar 2018 19:30:45 GMT  
		Size: 2.5 MB (2454583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2259d92a9a0d200528263ac5cc0f7b186cb82ef19d426459f7296480216329da`  
		Last Modified: Wed, 14 Mar 2018 19:31:12 GMT  
		Size: 97.6 MB (97559794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9b252c877f726932b7c11620e88a6a7e0b80c55bab42012a79d3e189a0d142`  
		Last Modified: Wed, 14 Mar 2018 19:30:43 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:7c2277b94fa2551bc6ad1c47854e129aaaafbbc85588b0974e832f4688253405
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262753034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e7b0e2162fd45e0a831d7135b541aca39c8ffd2fb2ac0f1372cfc38d822887`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:14:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:14:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 02:54:53 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 02:54:54 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 02:54:55 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 02:54:56 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:54:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 03:03:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 03:04:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 03:04:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 03:04:14 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:40:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:41:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:41:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:41:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:41:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:44:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:44:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:44:21 GMT
WORKDIR /usr/src/redmine
# Tue, 27 Mar 2018 06:39:23 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 27 Mar 2018 06:39:23 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 27 Mar 2018 06:39:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 27 Mar 2018 06:49:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 06:49:21 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 27 Mar 2018 06:49:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 27 Mar 2018 06:49:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Mar 2018 06:49:23 GMT
EXPOSE 3000/tcp
# Tue, 27 Mar 2018 06:49:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b30c443a726219f9a82d88f1e1ba423ef88ef65ed6d12a2c1783c3493cac32`  
		Last Modified: Thu, 15 Mar 2018 03:11:46 GMT  
		Size: 9.4 MB (9355446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c823d913ce2f2a0777694502700425539459c44639c06e22be6ad8313114581e`  
		Last Modified: Thu, 15 Mar 2018 03:11:43 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db17c7fe59df01368666bef8ea8ff426e373acd16e51be5f87ee72fa36976`  
		Last Modified: Thu, 15 Mar 2018 03:16:42 GMT  
		Size: 32.0 MB (32001648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc26c2dbd11a07ee95a3c90fb357dda8ac68ad0e0742b1c2f294155d7284604`  
		Last Modified: Thu, 15 Mar 2018 03:16:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7cf95a58f2304fe4bb2275687c85563566c8f01e3c6306ea017a26cb8ce73`  
		Last Modified: Thu, 15 Mar 2018 11:09:06 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c71a81cfaeeeeeac082a126616814d1ced622aeb7986c3e157add87e81dd49`  
		Last Modified: Thu, 15 Mar 2018 11:09:10 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d1bd0bfa740365a7652f1fdaa31da0efab7510e647fdf6e35ef30adf7b315`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17607dfcc9bbfa72668dd5996fbfdad94c40f708a979f82a955a4548c2188a23`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167540bbef4c1e01c792375ce0275b83d7fad9a274e27588384e90ff8c302f23`  
		Last Modified: Thu, 15 Mar 2018 11:09:23 GMT  
		Size: 55.8 MB (55794788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55705345ace9c0efecec54fccfc9da2748f2199bbc8b2b60a50ca38d5f04132a`  
		Last Modified: Thu, 15 Mar 2018 11:09:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1ba2d61a7f49a87cbb6c4c94cdb365910697f08c51221d648c0e160e692713`  
		Last Modified: Tue, 27 Mar 2018 06:50:06 GMT  
		Size: 2.5 MB (2454056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf307b6651afeb2884c3940eff8603c1562c7ae921062c74ae1439b97ea12f0b`  
		Last Modified: Tue, 27 Mar 2018 06:50:35 GMT  
		Size: 98.3 MB (98269461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9deb9243eba161c8da7d07ca74291d8f682343850fededf204f0d9acbb9baf31`  
		Last Modified: Tue, 27 Mar 2018 06:50:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:7e4cc84ec386553f24f2e4a64c6a57d046bdc51f41a2d4ad154ebcef5c86f957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263539558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1338a26b45ae30284b98988886c84fe18c530b7b684683c21980a9b2e39f57`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 20:08:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 20:08:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Feb 2018 20:08:16 GMT
ENV RUBY_MAJOR=2.4
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBY_VERSION=2.4.3
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 20 Feb 2018 20:08:18 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 20 Feb 2018 20:12:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 20 Feb 2018 20:12:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Feb 2018 20:12:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Feb 2018 20:12:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Feb 2018 20:12:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Feb 2018 20:12:39 GMT
CMD ["irb"]
# Wed, 21 Feb 2018 22:01:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 21 Feb 2018 22:01:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:01:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 22:01:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 21 Feb 2018 22:01:43 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 21 Feb 2018 22:01:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 21 Feb 2018 22:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:02:52 GMT
ENV RAILS_ENV=production
# Wed, 21 Feb 2018 22:02:52 GMT
WORKDIR /usr/src/redmine
# Wed, 21 Feb 2018 22:02:52 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 21 Feb 2018 22:02:53 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 21 Feb 2018 22:02:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 21 Feb 2018 22:06:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 22:06:47 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 21 Feb 2018 22:06:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 21 Feb 2018 22:06:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 22:06:48 GMT
EXPOSE 3000/tcp
# Wed, 21 Feb 2018 22:06:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e7541c989a1ffd223b6a8463f58c88f7627776091817578afe8d24f6713163`  
		Last Modified: Tue, 20 Feb 2018 21:01:28 GMT  
		Size: 14.6 MB (14649460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc8420509b19e956e958680ffe2f7f4c09ed11ed67c784ee733722e5f1bcda4`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a336b4cf83effe213c9513dc62dc507164f002be0c746c3ae443d32ec5c08274`  
		Last Modified: Tue, 20 Feb 2018 21:01:32 GMT  
		Size: 20.9 MB (20873412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff49714f4598c7fd43352e341ed2ad7fb6b132fb88e87abf439f0d7e6e0bb730`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff58c38e34376ca5f43f926a80d6a160912f28248b44bd7949a75e1379b58e0f`  
		Last Modified: Wed, 21 Feb 2018 22:55:38 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b065e24e10bb212d7c2d0dd77023bdd273a4a8cfcf9792ef2d533b95b3101`  
		Last Modified: Wed, 21 Feb 2018 22:55:40 GMT  
		Size: 14.8 MB (14817924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebafef79eba0f1172935873ee0bee42d5acf1556fb035b993398508c2f610b3e`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4c290277408557ab8c2f7b382852168ef6e13767856490ffa341f65e20ba10`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9617544ef6bf1178537db732c2e715b2addcd63ab3c7e8c5865d8a6c2fab6fd9`  
		Last Modified: Wed, 21 Feb 2018 22:56:01 GMT  
		Size: 60.1 MB (60147220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98253cd131cbb7575bb4ad97f1202a6bace3759023086e83a3a33cfe6e7a9e4f`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14db4c6c12640a7c6f63c9cb46be4a93c4c3a7ddbe7ec5376171dfbba1ae306a`  
		Last Modified: Wed, 21 Feb 2018 22:55:41 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698ffcc65f9995ad2adb7108cb223cbf3882d848bd92fe099c8db433593b33dc`  
		Last Modified: Wed, 21 Feb 2018 22:56:11 GMT  
		Size: 97.3 MB (97316259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c551f66e7238676a8c34c5a5b1957529ff431567871ec9ab57ff22623a71b600`  
		Last Modified: Wed, 21 Feb 2018 22:55:34 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:5138a84ad71a1d7ecc799dceedce798f81d1738fa7dc2ab980eb3e03708496c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259277163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55250509bf86610e77652aec5a4759aa4c2987cdbf13087c41021bb61bbaf7ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 05:26:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:26:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 05:26:12 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Mar 2018 05:26:15 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Mar 2018 05:26:17 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Mar 2018 05:26:20 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 05:26:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 05:38:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 05:38:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 05:38:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 05:38:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:38:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 05:38:59 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 12:20:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 12:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:22:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 12:22:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 12:23:00 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 12:23:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 12:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:28:12 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 12:28:14 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 12:28:16 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 12:28:18 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 12:28:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 12:47:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 12:47:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 12:47:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 12:48:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 12:48:04 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 12:48:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a59806018a3029eff71af8a8ee62fff9594b37160fc7cdefb70a2b597db27d`  
		Last Modified: Thu, 15 Mar 2018 06:36:53 GMT  
		Size: 10.2 MB (10157352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080a6f8f48e24550cb5573b4e6130addc9c1ea2820df46ba5efa3a3f93b0a33b`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41451a6818dfda69131a624873eedfdd48fb499463c3caaacd4bbfef80096912`  
		Last Modified: Thu, 15 Mar 2018 06:36:57 GMT  
		Size: 21.7 MB (21721226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8c486c3e2be30bb00d168fd8c6e8c754e8652a3fa891d350aa0be380bb3d81`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d7b95ef19c6bbf2adef7f5ba2dca5585017a0d1f19de9c8aab9404551935f1`  
		Last Modified: Thu, 15 Mar 2018 13:33:43 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9836e940badebaf9828214a12d26902f30569fbc08b40c04b99eb3129ed376`  
		Last Modified: Thu, 15 Mar 2018 13:33:46 GMT  
		Size: 14.7 MB (14720582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6254f2e4c9f4c090d766ccb5b2cd8ce03e81bafe16935bac417df2d5f93d09`  
		Last Modified: Thu, 15 Mar 2018 13:33:41 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8b30169a991555121c04e2c44c7f338a1c579546238763b1bf809986007ad`  
		Last Modified: Thu, 15 Mar 2018 13:33:40 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a9afdbe3b774348c70b85ee4d3f2a49bbb5c76f749e91ce23c3b5955c569c3`  
		Last Modified: Thu, 15 Mar 2018 13:33:53 GMT  
		Size: 58.1 MB (58133424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f2f01e5a374520c6e7c2225ec79b7f4f57cbff097d3a87d84a2905cda66b09`  
		Last Modified: Thu, 15 Mar 2018 13:33:38 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e163cf3e4893d610177b27cea56b6dab27a9435c7336459f94e8e5190b0a26a3`  
		Last Modified: Thu, 15 Mar 2018 13:33:40 GMT  
		Size: 2.5 MB (2454581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608db9ca25f65e2f67a422404402ba1857f8d2511526952109b62805692a7102`  
		Last Modified: Thu, 15 Mar 2018 13:34:01 GMT  
		Size: 99.8 MB (99789871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090101f19b60a483ae03ed1c8a1849fe265cff937a88381e1a413e89ae817d7c`  
		Last Modified: Thu, 15 Mar 2018 13:33:37 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:33a750f8a6d2befc4b752f8b917c8b5e8ffce141a67d56b5c94a88ac4d696f3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264201086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd460976a3861b79e220f431bf8e20f7a30c7675ad59b1be6649480480374686`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:53:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:53:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 07:53:11 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 07:53:12 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 07:56:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 07:56:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 07:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 07:56:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 07:56:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 07:56:38 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 12:08:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 12:08:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:08:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 12:08:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 12:08:54 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 12:08:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 12:09:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:09:24 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 12:09:24 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 12:09:24 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 14 Mar 2018 12:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 14 Mar 2018 12:09:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 12:12:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 12:12:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 12:12:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 12:12:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:12:05 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 12:12:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d3f3fd31e1f3273c5e5d559174055bac89b7a56b71a9eb8417d7125c175d8`  
		Last Modified: Wed, 14 Mar 2018 08:17:52 GMT  
		Size: 10.0 MB (9980125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c861533f4537bbc274ae2279a3536a1a9b4eac8116db94d080fd03eeac81dd1`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea80bc9bd1b49b1ead6705fe8aeaac188b2802cb33349aad8f3198295ebedd83`  
		Last Modified: Wed, 14 Mar 2018 08:17:55 GMT  
		Size: 21.7 MB (21675090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f0818baeecad8da15e86c245534bbecbcb65cb876a11683ec52bdcd03e3a43`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c32fc953f4fdd8dac7958b8eee07eaa8b3bb1ed29485709f98b8a7c903444f`  
		Last Modified: Wed, 14 Mar 2018 12:18:33 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa3f49b4788da6a14f1f170a148d8368742848357c8f207fd966f3057dd09ee`  
		Last Modified: Wed, 14 Mar 2018 12:18:36 GMT  
		Size: 14.8 MB (14815092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a6a7d6105dc70a67089efcdfcdbd83f67ea58724b4cdc338f720c39bf4066f`  
		Last Modified: Wed, 14 Mar 2018 12:18:34 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a955079df70db910f9cb0cca672dd8c03f01b6c590d4800b97bed2562bd7b690`  
		Last Modified: Wed, 14 Mar 2018 12:18:32 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168303f3df6476d70779804d61ec357cb7dbe7b40b63a3460571b46a51a1f2c6`  
		Last Modified: Wed, 14 Mar 2018 12:18:42 GMT  
		Size: 59.1 MB (59109967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924d7afe4ac8d7b445733407367a7171c9ca69ad38b038fac082f66c4dd0db91`  
		Last Modified: Wed, 14 Mar 2018 12:18:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed94a2f4203afed89a006ccd067f4d6ee8d4081f61f8ced8a1753be244e01fb`  
		Last Modified: Wed, 14 Mar 2018 12:18:31 GMT  
		Size: 2.5 MB (2454046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b145aeed197763d74095dd7e74e6504a43f3bbb48473286ad242ece70b384409`  
		Last Modified: Wed, 14 Mar 2018 12:18:47 GMT  
		Size: 102.9 MB (102871450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa75a2db4eb8f106f504e4048e2c2a8f82ef949eb063b04b931d00b045eeebfe`  
		Last Modified: Wed, 14 Mar 2018 12:18:31 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:3abaf6445dd84d9302b16e0c8b02cd145580bc3c110f838745046b5ebc894b38
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
$ docker pull redmine@sha256:df7b8a08fed4d5fbe81cba200cd3f98060250414fc0413c3ca6a31006aa317a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250681095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f08f881e97b6d9f92869887bf5c283c841827e2ce8542207db3fbbe0cf29a2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:39:59 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:40:00 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:42:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:42:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:42:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:42:53 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 01:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 01:08:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:08:27 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 01:08:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 01:08:31 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 01:08:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 01:09:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:09:19 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 01:09:19 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 01:27:24 GMT
ENV REDMINE_VERSION=3.2.9
# Fri, 16 Mar 2018 01:27:24 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Fri, 16 Mar 2018 01:27:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 01:29:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:29:47 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 01:29:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 01:29:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 01:29:48 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 01:29:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432b4d43a69ed1db93de57ff333d72b2603b143e46bc302d70463fe3460f677`  
		Last Modified: Wed, 14 Mar 2018 21:10:16 GMT  
		Size: 31.9 MB (31891010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760db2af24034808277cc60543dc2b093117247e027f0c968741d7ed51228fd3`  
		Last Modified: Wed, 14 Mar 2018 21:10:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090cf6682a5b3940b0752e9e17c5be60516bdde6cb58700879544c8e48dd3e80`  
		Last Modified: Fri, 16 Mar 2018 01:43:06 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a67f1b36432c09be618b98e844c781a0385b3119543d1f6fd631c2e2601bfa4`  
		Last Modified: Fri, 16 Mar 2018 01:43:08 GMT  
		Size: 14.7 MB (14650440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef9580d08304c9a8585b3e89d6d4d8eee7e8653e0e500ddd8b739b91279f391`  
		Last Modified: Fri, 16 Mar 2018 01:43:05 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afb05ae5ef77f2170a2354d3a4ce2d16f17f14b480bad7c357cd2a17e079f3c`  
		Last Modified: Fri, 16 Mar 2018 01:43:01 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e08c68c7793172fda9909e2c5ff4570dfebebfc330a69be1979aeb0cb2d8c50`  
		Last Modified: Fri, 16 Mar 2018 01:43:14 GMT  
		Size: 59.3 MB (59270805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1524776d7bbf69c28513acaebd67f9ba2d6807077ce723e199acbdd124afc8d`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f258d4c4a96d4dc6f88e86ccb3e250feb6394dab06da3b1d7ad0ae0166cb864f`  
		Last Modified: Fri, 16 Mar 2018 01:44:53 GMT  
		Size: 2.3 MB (2347506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd3d422dbc5038dcf8cc5d0674a7eb816342c6b18243430624db2bbeff8ca6a`  
		Last Modified: Fri, 16 Mar 2018 01:45:06 GMT  
		Size: 79.2 MB (79213281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5168d28cdf4cf6ee286feb07c3ee6f6225bb4760ca63528336b84a515e2b552`  
		Last Modified: Fri, 16 Mar 2018 01:44:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a57508ac65b51bddc2506b1064f3b940315b298a4b08d5732c97bbe89a2b78a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.1 MB (243105592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076d0a3d55dc71fe54a7ea149e5fbb55a67fb4208539a6c57d9867611fae26c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:54:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:54:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 21:15:37 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 21:15:39 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 21:20:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 21:20:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 21:20:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 21:20:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 21:20:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 21:20:10 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 00:29:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 00:30:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:30:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:30:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 00:30:18 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 00:30:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 00:31:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:31:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 00:31:20 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 00:36:24 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Mar 2018 00:36:24 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Mar 2018 00:36:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 00:41:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:41:04 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 00:41:04 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 00:41:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 00:41:05 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 00:41:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5473f43f4b59989ac86bfabe67b51edefa4cea3b14253ecfa7eb87fe141c6fdf`  
		Last Modified: Wed, 14 Mar 2018 21:22:45 GMT  
		Size: 9.1 MB (9133325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839ac87b9c320a77dc7a49e28b87c64b9ddfbc570c2bbb0048b0bbf6b6eae293`  
		Last Modified: Wed, 14 Mar 2018 21:22:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e70ad42d333089e500c14c2643d4243eed9ff335fa984c8b92e7b4cf5d19c`  
		Last Modified: Wed, 14 Mar 2018 21:25:33 GMT  
		Size: 30.8 MB (30810734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3301434deb5a1e19b55d0091fdb1ede9d711408ec27e2c5fe562297401b8bf04`  
		Last Modified: Wed, 14 Mar 2018 21:25:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42ae722568f28e8df9956b66811dcdbc93246b831ef40bca0cb84d4c2430d75`  
		Last Modified: Thu, 15 Mar 2018 00:42:41 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03de2059894932d7303c7af356fd739966860e6ea0b6c5186221a8731918883`  
		Last Modified: Thu, 15 Mar 2018 00:42:44 GMT  
		Size: 14.3 MB (14347487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8b3c09d07618d905a9ea61cf0f75bc1a46690f73d9d3773f49a6680682c7fe`  
		Last Modified: Thu, 15 Mar 2018 00:42:40 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7846dfbc8ebb743356a5cdc81dd0e482a226e2d03a1f329ab6a98b78668970`  
		Last Modified: Thu, 15 Mar 2018 00:42:39 GMT  
		Size: 7.8 KB (7845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7224768f25c150d23474c0ef5661df1a85d3ba5f79a6865e08d5a9a8d626a4`  
		Last Modified: Thu, 15 Mar 2018 00:42:56 GMT  
		Size: 56.6 MB (56611384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ae38813bda4163aab705bac60542a9d9d357bba356fc349e9aa416b1160d71`  
		Last Modified: Thu, 15 Mar 2018 00:42:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1f53c59ac72a75339e0831faa69558fda79268cb87161e241dab986a6e19ec`  
		Last Modified: Thu, 15 Mar 2018 00:43:23 GMT  
		Size: 2.3 MB (2347818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bea8d3d4f62dab608e99a2a805a0dd63095afccb38ebaee6be102be74f67db`  
		Last Modified: Thu, 15 Mar 2018 00:43:40 GMT  
		Size: 78.5 MB (78461409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4741b90c57b2c4363b69be31f5971983deaa6571b0f43cd6bea287de29fda64c`  
		Last Modified: Thu, 15 Mar 2018 00:43:24 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:16868fa8e31455678c650cf772340296f722db487951388f295e2f83af036898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237282072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548ef33322ce21c6fe3ed330515b153e8b1c8172d33761e5b0f5536bbca491c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:17:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:17:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 16:47:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 16:47:06 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 16:47:07 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 16:47:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 16:47:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 16:52:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 16:52:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 16:52:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 16:52:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:52:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 16:52:22 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 19:18:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 19:19:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:19:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:19:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 19:19:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 19:19:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 19:20:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:20:36 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 19:20:36 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 19:25:43 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 14 Mar 2018 19:25:43 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 14 Mar 2018 19:25:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 19:29:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:29:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 19:30:07 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 19:30:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:30:07 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 19:30:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23990e8e0248903864ae0a398aa7696d1f976a252f99c84c8d69f337556d0e`  
		Last Modified: Wed, 14 Mar 2018 17:01:21 GMT  
		Size: 8.8 MB (8785784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c1085b4ef8dafa6f45c42463ec56ae2b446744a75840f17c7609dc7ee71f3`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d931e10a204be95ab2521c533de5f161d27c12fa71cd07c1502381afbc25b0`  
		Last Modified: Wed, 14 Mar 2018 17:07:21 GMT  
		Size: 30.6 MB (30586532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1ddf329a53a1aee97771cb6cb92d5c24cda9e5863933a44b2cba81b3e32c58`  
		Last Modified: Wed, 14 Mar 2018 17:07:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5dd2484b6bc74edfc2aba95d7436d19f71ce628ba19cdc0c44a18c931e53fd`  
		Last Modified: Wed, 14 Mar 2018 19:32:37 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fa2bde2052a8b4d39e58e909566d08001f6125dba4472de5ca671e22b2c590`  
		Last Modified: Wed, 14 Mar 2018 19:32:41 GMT  
		Size: 14.1 MB (14134540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25f16c626f42a748a92d03515bdcbfd5a9ff95bb7c53bb9f71e6f9009364995`  
		Last Modified: Wed, 14 Mar 2018 19:32:36 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a85ea2a90f271ed0f34bb5bc41e95c34c0480d54f0d5865a425bc05bb8b422`  
		Last Modified: Wed, 14 Mar 2018 19:32:36 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48c260e217fc68406872dac2e57bccaa19cc52fdaa8b6f0abda747b37833aa2`  
		Last Modified: Wed, 14 Mar 2018 19:32:53 GMT  
		Size: 54.3 MB (54345402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdec975d7a5620d9cf32e5eef393e6d1e4795276b10b56252ec1fdc9eb54627`  
		Last Modified: Wed, 14 Mar 2018 19:32:34 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9cc9dbdd1b3746fc3c00a444cfc52a7b41088ff9e72c1753ca4062903f382c`  
		Last Modified: Wed, 14 Mar 2018 19:33:32 GMT  
		Size: 2.3 MB (2347823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a0e3f2bc2db5b2cb0a120efd0b76871dbc7d0642c9976a129c8fff329344b`  
		Last Modified: Wed, 14 Mar 2018 19:33:50 GMT  
		Size: 77.9 MB (77892893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5b6a33d67b3792c0277be28bc1702c91d85281ffed1777289cce14050d2b64`  
		Last Modified: Wed, 14 Mar 2018 19:33:31 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:72aeccf790820d0c92b18d720a9e0717d8fe8e19852d46c63d2ee3486a50c22d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242875401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9658d352b0fdd7ef56a318ffe57f4f91bfdbadc9f465435b1c2d9d32741ad54a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:14:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:14:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 02:54:53 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 02:54:54 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 02:54:55 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 02:54:56 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:54:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 03:03:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 03:04:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 03:04:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 03:04:14 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:40:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:41:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:41:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:41:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:41:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:44:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:44:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:44:21 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 10:56:27 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Mar 2018 10:56:28 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Mar 2018 10:56:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 11:06:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 11:06:27 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 11:06:28 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 11:06:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 11:06:29 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 11:06:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b30c443a726219f9a82d88f1e1ba423ef88ef65ed6d12a2c1783c3493cac32`  
		Last Modified: Thu, 15 Mar 2018 03:11:46 GMT  
		Size: 9.4 MB (9355446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c823d913ce2f2a0777694502700425539459c44639c06e22be6ad8313114581e`  
		Last Modified: Thu, 15 Mar 2018 03:11:43 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db17c7fe59df01368666bef8ea8ff426e373acd16e51be5f87ee72fa36976`  
		Last Modified: Thu, 15 Mar 2018 03:16:42 GMT  
		Size: 32.0 MB (32001648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc26c2dbd11a07ee95a3c90fb357dda8ac68ad0e0742b1c2f294155d7284604`  
		Last Modified: Thu, 15 Mar 2018 03:16:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7cf95a58f2304fe4bb2275687c85563566c8f01e3c6306ea017a26cb8ce73`  
		Last Modified: Thu, 15 Mar 2018 11:09:06 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c71a81cfaeeeeeac082a126616814d1ced622aeb7986c3e157add87e81dd49`  
		Last Modified: Thu, 15 Mar 2018 11:09:10 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d1bd0bfa740365a7652f1fdaa31da0efab7510e647fdf6e35ef30adf7b315`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17607dfcc9bbfa72668dd5996fbfdad94c40f708a979f82a955a4548c2188a23`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167540bbef4c1e01c792375ce0275b83d7fad9a274e27588384e90ff8c302f23`  
		Last Modified: Thu, 15 Mar 2018 11:09:23 GMT  
		Size: 55.8 MB (55794788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55705345ace9c0efecec54fccfc9da2748f2199bbc8b2b60a50ca38d5f04132a`  
		Last Modified: Thu, 15 Mar 2018 11:09:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168c76e7f8911f96c11f9f97989fa2d1e5b44021009f9c3f4b29dcb1124c23dc`  
		Last Modified: Thu, 15 Mar 2018 11:10:06 GMT  
		Size: 2.3 MB (2347497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03661aeca7a8a76e07fc4ebdd0c7ab19645bcc2bebd43c70a16b4f83e20892a8`  
		Last Modified: Thu, 15 Mar 2018 11:10:28 GMT  
		Size: 78.5 MB (78498386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6437c66b81edfed638785f13b9c4dc1a2d22d38cf9dafa1bbb6f115a096f81b1`  
		Last Modified: Thu, 15 Mar 2018 11:10:06 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:0b3f3396f709857fa074976ee9fcb8ac7215daf8cb2c59dadb47b76b7e9cbabc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.5 MB (253537588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486b7c76f116ef403586343cb317be68b8ef305bab95b10b5a39049eb09402da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 20:08:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 20:08:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_VERSION=2.2.9
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 20 Feb 2018 20:47:08 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 20 Feb 2018 20:47:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 20 Feb 2018 20:50:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 20 Feb 2018 20:50:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Feb 2018 20:50:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Feb 2018 20:50:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Feb 2018 20:50:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Feb 2018 20:50:50 GMT
CMD ["irb"]
# Wed, 21 Feb 2018 22:23:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 21 Feb 2018 22:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:24:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 22:24:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 21 Feb 2018 22:24:09 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 21 Feb 2018 22:24:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 21 Feb 2018 22:25:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:25:05 GMT
ENV RAILS_ENV=production
# Wed, 21 Feb 2018 22:25:05 GMT
WORKDIR /usr/src/redmine
# Wed, 21 Feb 2018 22:40:11 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 21 Feb 2018 22:40:12 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 21 Feb 2018 22:40:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 21 Feb 2018 22:43:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 22:43:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 21 Feb 2018 22:43:32 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 21 Feb 2018 22:43:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 22:43:32 GMT
EXPOSE 3000/tcp
# Wed, 21 Feb 2018 22:43:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e7541c989a1ffd223b6a8463f58c88f7627776091817578afe8d24f6713163`  
		Last Modified: Tue, 20 Feb 2018 21:01:28 GMT  
		Size: 14.6 MB (14649460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc8420509b19e956e958680ffe2f7f4c09ed11ed67c784ee733722e5f1bcda4`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8c2851ba5910f35321695a023a34fdaf956f46ef5ff5f6e34ba80fd6af0516`  
		Last Modified: Tue, 20 Feb 2018 21:58:47 GMT  
		Size: 30.0 MB (29967147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90093db16e622756611a6fdeb338a29dabee1444219830ff5539f257b00803c`  
		Last Modified: Tue, 20 Feb 2018 21:58:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4cc80fe37a05c0deac019656ef06fb0ba65287de4b8f1e39a9fac9ada6513f`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753b2e3d5c2d0a093af61fdc79271af14263e31020c06872c8ed756d52fba1d4`  
		Last Modified: Wed, 21 Feb 2018 23:25:57 GMT  
		Size: 14.8 MB (14817904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7753ab81c2ef44db7fc04e67db4cb88ac74c99278ef370837886aebbf7a428`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b70eeb677b6c79c46ea88ca7012ceee7d9d0617b4eb77697bf092db7adb4f5`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e37c133db4761c608c3d86c502b736fc5fd83f02a062f9a6f5374810e8fab9`  
		Last Modified: Wed, 21 Feb 2018 23:26:20 GMT  
		Size: 60.1 MB (60147265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dbc42dc9af59a8c7a9d2fc23670a34337afecd5f1628b7d5465884b7f0d803`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d126ea1db4a240b5153b7ff9dba566ef61e0b53a5b45cce56bd61f729e87a0`  
		Last Modified: Wed, 21 Feb 2018 23:48:16 GMT  
		Size: 2.3 MB (2347505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6dfea569aac0237860a01ecba92c5df037f35d88dd544382364f14475960527`  
		Last Modified: Wed, 21 Feb 2018 23:48:37 GMT  
		Size: 78.3 MB (78327069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32c1b30cf6117b55db89026ccf064e31b9545b068318e98b16be3e4bab515cb`  
		Last Modified: Wed, 21 Feb 2018 23:48:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:207c237da4c760f2ff4887b60e7545f7b711609920d1760224301cf68ae97ed9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249903473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d24bf68a05968f9632c3c069783dfb401a71faf787270372b613806c750eea6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 05:26:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:26:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 06:19:31 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 06:19:33 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 06:19:37 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 06:19:40 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 06:19:51 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 06:31:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 06:31:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 06:31:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 06:31:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 06:31:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 06:31:47 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 12:48:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 12:49:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:49:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 12:50:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 12:50:11 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 12:50:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 12:54:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:54:30 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 12:54:33 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 13:13:45 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Mar 2018 13:13:48 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Mar 2018 13:13:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 13:32:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 13:32:58 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 13:33:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 13:33:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 13:33:06 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 13:33:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a59806018a3029eff71af8a8ee62fff9594b37160fc7cdefb70a2b597db27d`  
		Last Modified: Thu, 15 Mar 2018 06:36:53 GMT  
		Size: 10.2 MB (10157352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080a6f8f48e24550cb5573b4e6130addc9c1ea2820df46ba5efa3a3f93b0a33b`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66e6c0189fe2b52e60fae63abb4fcb833ea960cfed35188933680d1a3e1a920`  
		Last Modified: Thu, 15 Mar 2018 06:41:09 GMT  
		Size: 32.9 MB (32886365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d1fb67537ebff456460aa2998fc09e381b2bbc135e1d3e200361d0edec9fbb`  
		Last Modified: Thu, 15 Mar 2018 06:40:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ced8ca2a9ed55ab232fe2e026c86e3cd5bf3f8ff196bfc6cb63ce96ff55b9cd`  
		Last Modified: Thu, 15 Mar 2018 13:34:44 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9180944c35b43123af4e1f46b5ed832feb84cda5eb2543a7ca07dc6a9a92e5a2`  
		Last Modified: Thu, 15 Mar 2018 13:34:44 GMT  
		Size: 14.7 MB (14720655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aebba4965cc2edcb013dc9fb01fe8d8cebcd1229f6867b25b00d3c0f7e8de75`  
		Last Modified: Thu, 15 Mar 2018 13:34:40 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3615187630ed624fd0d37d7f77581bd5ac0660899e9a1f07dd12eefda2ddaea7`  
		Last Modified: Thu, 15 Mar 2018 13:34:39 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f358078dda0ee5d70fa1f61fba8e60e281c4159c0f9de40514383dba432724`  
		Last Modified: Thu, 15 Mar 2018 13:34:52 GMT  
		Size: 58.1 MB (58133049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e310d4d63151c64a680e7800a1a7afc3cd54422ab1180511d2da7496633b7f9`  
		Last Modified: Thu, 15 Mar 2018 13:34:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4859677595e5adcb3fa456e1a7c837e8c74d523e2163d0b7d1830b88b35c1ead`  
		Last Modified: Thu, 15 Mar 2018 13:35:14 GMT  
		Size: 2.3 MB (2347828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a938efedcee4f7fdcdd770c544e031511a373f7ff4c4e6c469690de2b9aa5e2`  
		Last Modified: Thu, 15 Mar 2018 13:35:29 GMT  
		Size: 79.4 MB (79358095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224566160979ed6edf6aa47dff69b6bfdf241d4609a4b1150b8644660b97bbf4`  
		Last Modified: Thu, 15 Mar 2018 13:35:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:af454a4c4bacbdb8a170a756e5ed8b2255a76e273c20fe94de45c1bfb1f9acdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256663020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7226d74a85808c935ec7ee5abe204683ffcddc6750b0f30d10f39a1c14f8faf8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:53:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:53:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 08:12:19 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 08:14:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 08:14:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 08:14:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 08:14:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:14:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 08:15:00 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 12:12:16 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 12:12:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:12:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 12:12:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 12:12:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 12:12:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 12:13:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:13:10 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 12:13:15 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 12:15:55 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 14 Mar 2018 12:15:55 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 14 Mar 2018 12:15:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 12:18:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 12:18:08 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 12:18:08 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 12:18:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:18:08 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 12:18:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d3f3fd31e1f3273c5e5d559174055bac89b7a56b71a9eb8417d7125c175d8`  
		Last Modified: Wed, 14 Mar 2018 08:17:52 GMT  
		Size: 10.0 MB (9980125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c861533f4537bbc274ae2279a3536a1a9b4eac8116db94d080fd03eeac81dd1`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb2ff6130c0dad0b2e320bccdf5ea6565345a6c09cd87ecfa45ff14819448b0`  
		Last Modified: Wed, 14 Mar 2018 08:20:53 GMT  
		Size: 35.5 MB (35544819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d7f20fcdd2407e384a9ccfb455df961d610a916eb4116854cca0c324033a70`  
		Last Modified: Wed, 14 Mar 2018 08:20:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c43eba1cd8006a9a68eeeab3e851bba0922b7c2eaeeb48b48dd9790938ec22e`  
		Last Modified: Wed, 14 Mar 2018 12:19:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c697e925f2df7e1179a6750a3e678365b787b2f7df1c03fe88f493632e7fdd71`  
		Last Modified: Wed, 14 Mar 2018 12:19:29 GMT  
		Size: 14.8 MB (14815096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e2001e22dd54cab091de574d8d8fcf4d2adefb3f3235d85dbab748179b4980`  
		Last Modified: Wed, 14 Mar 2018 12:19:24 GMT  
		Size: 486.8 KB (486824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3938d9e6c46392f24838eb796cf8e1611128ad2f88a7d3fc92a5504b2213c412`  
		Last Modified: Wed, 14 Mar 2018 12:19:25 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6402f396abb485843d90be51254d887b1ec6a2f7b8b89abfcbdcb93d751ec4`  
		Last Modified: Wed, 14 Mar 2018 12:19:38 GMT  
		Size: 59.1 MB (59110810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d840047a192d9ee78b134e980b57e8106e562b7a49047109663486be6b5713`  
		Last Modified: Wed, 14 Mar 2018 12:19:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcb4a8d0f0e13dfc1447efec9392a4afc411304a5788f5133338566799fd3d2`  
		Last Modified: Wed, 14 Mar 2018 12:19:54 GMT  
		Size: 2.3 MB (2347495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e94833a0e6140a229b4e18c0eb5a1d936baf6fca905c205cdfbc51de63a7a4`  
		Last Modified: Wed, 14 Mar 2018 12:20:05 GMT  
		Size: 81.6 MB (81569359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74cc1f997390619e76702aad8a888fd7c6e9ff60a91d64d0224d549ee7e4c68`  
		Last Modified: Wed, 14 Mar 2018 12:19:52 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.9`

```console
$ docker pull redmine@sha256:3abaf6445dd84d9302b16e0c8b02cd145580bc3c110f838745046b5ebc894b38
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
$ docker pull redmine@sha256:df7b8a08fed4d5fbe81cba200cd3f98060250414fc0413c3ca6a31006aa317a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250681095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f08f881e97b6d9f92869887bf5c283c841827e2ce8542207db3fbbe0cf29a2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:39:59 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:40:00 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:42:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:42:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:42:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:42:53 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 01:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 01:08:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:08:27 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 01:08:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 01:08:31 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 01:08:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 01:09:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:09:19 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 01:09:19 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 01:27:24 GMT
ENV REDMINE_VERSION=3.2.9
# Fri, 16 Mar 2018 01:27:24 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Fri, 16 Mar 2018 01:27:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 01:29:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:29:47 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 01:29:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 01:29:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 01:29:48 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 01:29:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432b4d43a69ed1db93de57ff333d72b2603b143e46bc302d70463fe3460f677`  
		Last Modified: Wed, 14 Mar 2018 21:10:16 GMT  
		Size: 31.9 MB (31891010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760db2af24034808277cc60543dc2b093117247e027f0c968741d7ed51228fd3`  
		Last Modified: Wed, 14 Mar 2018 21:10:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090cf6682a5b3940b0752e9e17c5be60516bdde6cb58700879544c8e48dd3e80`  
		Last Modified: Fri, 16 Mar 2018 01:43:06 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a67f1b36432c09be618b98e844c781a0385b3119543d1f6fd631c2e2601bfa4`  
		Last Modified: Fri, 16 Mar 2018 01:43:08 GMT  
		Size: 14.7 MB (14650440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef9580d08304c9a8585b3e89d6d4d8eee7e8653e0e500ddd8b739b91279f391`  
		Last Modified: Fri, 16 Mar 2018 01:43:05 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afb05ae5ef77f2170a2354d3a4ce2d16f17f14b480bad7c357cd2a17e079f3c`  
		Last Modified: Fri, 16 Mar 2018 01:43:01 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e08c68c7793172fda9909e2c5ff4570dfebebfc330a69be1979aeb0cb2d8c50`  
		Last Modified: Fri, 16 Mar 2018 01:43:14 GMT  
		Size: 59.3 MB (59270805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1524776d7bbf69c28513acaebd67f9ba2d6807077ce723e199acbdd124afc8d`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f258d4c4a96d4dc6f88e86ccb3e250feb6394dab06da3b1d7ad0ae0166cb864f`  
		Last Modified: Fri, 16 Mar 2018 01:44:53 GMT  
		Size: 2.3 MB (2347506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd3d422dbc5038dcf8cc5d0674a7eb816342c6b18243430624db2bbeff8ca6a`  
		Last Modified: Fri, 16 Mar 2018 01:45:06 GMT  
		Size: 79.2 MB (79213281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5168d28cdf4cf6ee286feb07c3ee6f6225bb4760ca63528336b84a515e2b552`  
		Last Modified: Fri, 16 Mar 2018 01:44:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a57508ac65b51bddc2506b1064f3b940315b298a4b08d5732c97bbe89a2b78a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.1 MB (243105592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076d0a3d55dc71fe54a7ea149e5fbb55a67fb4208539a6c57d9867611fae26c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:54:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:54:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 21:15:37 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 21:15:39 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 21:20:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 21:20:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 21:20:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 21:20:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 21:20:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 21:20:10 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 00:29:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 00:30:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:30:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:30:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 00:30:18 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 00:30:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 00:31:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:31:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 00:31:20 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 00:36:24 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Mar 2018 00:36:24 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Mar 2018 00:36:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 00:41:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:41:04 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 00:41:04 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 00:41:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 00:41:05 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 00:41:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5473f43f4b59989ac86bfabe67b51edefa4cea3b14253ecfa7eb87fe141c6fdf`  
		Last Modified: Wed, 14 Mar 2018 21:22:45 GMT  
		Size: 9.1 MB (9133325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839ac87b9c320a77dc7a49e28b87c64b9ddfbc570c2bbb0048b0bbf6b6eae293`  
		Last Modified: Wed, 14 Mar 2018 21:22:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e70ad42d333089e500c14c2643d4243eed9ff335fa984c8b92e7b4cf5d19c`  
		Last Modified: Wed, 14 Mar 2018 21:25:33 GMT  
		Size: 30.8 MB (30810734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3301434deb5a1e19b55d0091fdb1ede9d711408ec27e2c5fe562297401b8bf04`  
		Last Modified: Wed, 14 Mar 2018 21:25:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42ae722568f28e8df9956b66811dcdbc93246b831ef40bca0cb84d4c2430d75`  
		Last Modified: Thu, 15 Mar 2018 00:42:41 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03de2059894932d7303c7af356fd739966860e6ea0b6c5186221a8731918883`  
		Last Modified: Thu, 15 Mar 2018 00:42:44 GMT  
		Size: 14.3 MB (14347487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8b3c09d07618d905a9ea61cf0f75bc1a46690f73d9d3773f49a6680682c7fe`  
		Last Modified: Thu, 15 Mar 2018 00:42:40 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7846dfbc8ebb743356a5cdc81dd0e482a226e2d03a1f329ab6a98b78668970`  
		Last Modified: Thu, 15 Mar 2018 00:42:39 GMT  
		Size: 7.8 KB (7845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7224768f25c150d23474c0ef5661df1a85d3ba5f79a6865e08d5a9a8d626a4`  
		Last Modified: Thu, 15 Mar 2018 00:42:56 GMT  
		Size: 56.6 MB (56611384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ae38813bda4163aab705bac60542a9d9d357bba356fc349e9aa416b1160d71`  
		Last Modified: Thu, 15 Mar 2018 00:42:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1f53c59ac72a75339e0831faa69558fda79268cb87161e241dab986a6e19ec`  
		Last Modified: Thu, 15 Mar 2018 00:43:23 GMT  
		Size: 2.3 MB (2347818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bea8d3d4f62dab608e99a2a805a0dd63095afccb38ebaee6be102be74f67db`  
		Last Modified: Thu, 15 Mar 2018 00:43:40 GMT  
		Size: 78.5 MB (78461409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4741b90c57b2c4363b69be31f5971983deaa6571b0f43cd6bea287de29fda64c`  
		Last Modified: Thu, 15 Mar 2018 00:43:24 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm variant v7

```console
$ docker pull redmine@sha256:16868fa8e31455678c650cf772340296f722db487951388f295e2f83af036898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237282072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548ef33322ce21c6fe3ed330515b153e8b1c8172d33761e5b0f5536bbca491c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:17:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:17:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 16:47:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 16:47:06 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 16:47:07 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 16:47:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 16:47:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 16:52:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 16:52:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 16:52:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 16:52:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:52:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 16:52:22 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 19:18:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 19:19:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:19:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:19:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 19:19:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 19:19:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 19:20:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:20:36 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 19:20:36 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 19:25:43 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 14 Mar 2018 19:25:43 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 14 Mar 2018 19:25:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 19:29:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:29:55 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 19:30:07 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 19:30:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:30:07 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 19:30:08 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23990e8e0248903864ae0a398aa7696d1f976a252f99c84c8d69f337556d0e`  
		Last Modified: Wed, 14 Mar 2018 17:01:21 GMT  
		Size: 8.8 MB (8785784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c1085b4ef8dafa6f45c42463ec56ae2b446744a75840f17c7609dc7ee71f3`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d931e10a204be95ab2521c533de5f161d27c12fa71cd07c1502381afbc25b0`  
		Last Modified: Wed, 14 Mar 2018 17:07:21 GMT  
		Size: 30.6 MB (30586532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1ddf329a53a1aee97771cb6cb92d5c24cda9e5863933a44b2cba81b3e32c58`  
		Last Modified: Wed, 14 Mar 2018 17:07:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5dd2484b6bc74edfc2aba95d7436d19f71ce628ba19cdc0c44a18c931e53fd`  
		Last Modified: Wed, 14 Mar 2018 19:32:37 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fa2bde2052a8b4d39e58e909566d08001f6125dba4472de5ca671e22b2c590`  
		Last Modified: Wed, 14 Mar 2018 19:32:41 GMT  
		Size: 14.1 MB (14134540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25f16c626f42a748a92d03515bdcbfd5a9ff95bb7c53bb9f71e6f9009364995`  
		Last Modified: Wed, 14 Mar 2018 19:32:36 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a85ea2a90f271ed0f34bb5bc41e95c34c0480d54f0d5865a425bc05bb8b422`  
		Last Modified: Wed, 14 Mar 2018 19:32:36 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48c260e217fc68406872dac2e57bccaa19cc52fdaa8b6f0abda747b37833aa2`  
		Last Modified: Wed, 14 Mar 2018 19:32:53 GMT  
		Size: 54.3 MB (54345402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdec975d7a5620d9cf32e5eef393e6d1e4795276b10b56252ec1fdc9eb54627`  
		Last Modified: Wed, 14 Mar 2018 19:32:34 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9cc9dbdd1b3746fc3c00a444cfc52a7b41088ff9e72c1753ca4062903f382c`  
		Last Modified: Wed, 14 Mar 2018 19:33:32 GMT  
		Size: 2.3 MB (2347823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a0e3f2bc2db5b2cb0a120efd0b76871dbc7d0642c9976a129c8fff329344b`  
		Last Modified: Wed, 14 Mar 2018 19:33:50 GMT  
		Size: 77.9 MB (77892893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5b6a33d67b3792c0277be28bc1702c91d85281ffed1777289cce14050d2b64`  
		Last Modified: Wed, 14 Mar 2018 19:33:31 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:72aeccf790820d0c92b18d720a9e0717d8fe8e19852d46c63d2ee3486a50c22d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242875401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9658d352b0fdd7ef56a318ffe57f4f91bfdbadc9f465435b1c2d9d32741ad54a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:14:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:14:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 02:54:53 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 02:54:54 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 02:54:55 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 02:54:56 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:54:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 03:03:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 03:04:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 03:04:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 03:04:14 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:40:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:41:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:41:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:41:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:41:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:44:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:44:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:44:21 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 10:56:27 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Mar 2018 10:56:28 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Mar 2018 10:56:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 11:06:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 11:06:27 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 11:06:28 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 11:06:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 11:06:29 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 11:06:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b30c443a726219f9a82d88f1e1ba423ef88ef65ed6d12a2c1783c3493cac32`  
		Last Modified: Thu, 15 Mar 2018 03:11:46 GMT  
		Size: 9.4 MB (9355446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c823d913ce2f2a0777694502700425539459c44639c06e22be6ad8313114581e`  
		Last Modified: Thu, 15 Mar 2018 03:11:43 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db17c7fe59df01368666bef8ea8ff426e373acd16e51be5f87ee72fa36976`  
		Last Modified: Thu, 15 Mar 2018 03:16:42 GMT  
		Size: 32.0 MB (32001648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc26c2dbd11a07ee95a3c90fb357dda8ac68ad0e0742b1c2f294155d7284604`  
		Last Modified: Thu, 15 Mar 2018 03:16:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7cf95a58f2304fe4bb2275687c85563566c8f01e3c6306ea017a26cb8ce73`  
		Last Modified: Thu, 15 Mar 2018 11:09:06 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c71a81cfaeeeeeac082a126616814d1ced622aeb7986c3e157add87e81dd49`  
		Last Modified: Thu, 15 Mar 2018 11:09:10 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d1bd0bfa740365a7652f1fdaa31da0efab7510e647fdf6e35ef30adf7b315`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17607dfcc9bbfa72668dd5996fbfdad94c40f708a979f82a955a4548c2188a23`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167540bbef4c1e01c792375ce0275b83d7fad9a274e27588384e90ff8c302f23`  
		Last Modified: Thu, 15 Mar 2018 11:09:23 GMT  
		Size: 55.8 MB (55794788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55705345ace9c0efecec54fccfc9da2748f2199bbc8b2b60a50ca38d5f04132a`  
		Last Modified: Thu, 15 Mar 2018 11:09:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168c76e7f8911f96c11f9f97989fa2d1e5b44021009f9c3f4b29dcb1124c23dc`  
		Last Modified: Thu, 15 Mar 2018 11:10:06 GMT  
		Size: 2.3 MB (2347497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03661aeca7a8a76e07fc4ebdd0c7ab19645bcc2bebd43c70a16b4f83e20892a8`  
		Last Modified: Thu, 15 Mar 2018 11:10:28 GMT  
		Size: 78.5 MB (78498386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6437c66b81edfed638785f13b9c4dc1a2d22d38cf9dafa1bbb6f115a096f81b1`  
		Last Modified: Thu, 15 Mar 2018 11:10:06 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; 386

```console
$ docker pull redmine@sha256:0b3f3396f709857fa074976ee9fcb8ac7215daf8cb2c59dadb47b76b7e9cbabc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.5 MB (253537588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486b7c76f116ef403586343cb317be68b8ef305bab95b10b5a39049eb09402da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 20:08:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 20:08:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_VERSION=2.2.9
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 20 Feb 2018 20:47:08 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 20 Feb 2018 20:47:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 20 Feb 2018 20:50:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 20 Feb 2018 20:50:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Feb 2018 20:50:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Feb 2018 20:50:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Feb 2018 20:50:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Feb 2018 20:50:50 GMT
CMD ["irb"]
# Wed, 21 Feb 2018 22:23:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 21 Feb 2018 22:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:24:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 22:24:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 21 Feb 2018 22:24:09 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 21 Feb 2018 22:24:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 21 Feb 2018 22:25:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:25:05 GMT
ENV RAILS_ENV=production
# Wed, 21 Feb 2018 22:25:05 GMT
WORKDIR /usr/src/redmine
# Wed, 21 Feb 2018 22:40:11 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 21 Feb 2018 22:40:12 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 21 Feb 2018 22:40:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 21 Feb 2018 22:43:31 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 22:43:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 21 Feb 2018 22:43:32 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 21 Feb 2018 22:43:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 22:43:32 GMT
EXPOSE 3000/tcp
# Wed, 21 Feb 2018 22:43:32 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e7541c989a1ffd223b6a8463f58c88f7627776091817578afe8d24f6713163`  
		Last Modified: Tue, 20 Feb 2018 21:01:28 GMT  
		Size: 14.6 MB (14649460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc8420509b19e956e958680ffe2f7f4c09ed11ed67c784ee733722e5f1bcda4`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8c2851ba5910f35321695a023a34fdaf956f46ef5ff5f6e34ba80fd6af0516`  
		Last Modified: Tue, 20 Feb 2018 21:58:47 GMT  
		Size: 30.0 MB (29967147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90093db16e622756611a6fdeb338a29dabee1444219830ff5539f257b00803c`  
		Last Modified: Tue, 20 Feb 2018 21:58:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4cc80fe37a05c0deac019656ef06fb0ba65287de4b8f1e39a9fac9ada6513f`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753b2e3d5c2d0a093af61fdc79271af14263e31020c06872c8ed756d52fba1d4`  
		Last Modified: Wed, 21 Feb 2018 23:25:57 GMT  
		Size: 14.8 MB (14817904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7753ab81c2ef44db7fc04e67db4cb88ac74c99278ef370837886aebbf7a428`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b70eeb677b6c79c46ea88ca7012ceee7d9d0617b4eb77697bf092db7adb4f5`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e37c133db4761c608c3d86c502b736fc5fd83f02a062f9a6f5374810e8fab9`  
		Last Modified: Wed, 21 Feb 2018 23:26:20 GMT  
		Size: 60.1 MB (60147265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dbc42dc9af59a8c7a9d2fc23670a34337afecd5f1628b7d5465884b7f0d803`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d126ea1db4a240b5153b7ff9dba566ef61e0b53a5b45cce56bd61f729e87a0`  
		Last Modified: Wed, 21 Feb 2018 23:48:16 GMT  
		Size: 2.3 MB (2347505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6dfea569aac0237860a01ecba92c5df037f35d88dd544382364f14475960527`  
		Last Modified: Wed, 21 Feb 2018 23:48:37 GMT  
		Size: 78.3 MB (78327069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32c1b30cf6117b55db89026ccf064e31b9545b068318e98b16be3e4bab515cb`  
		Last Modified: Wed, 21 Feb 2018 23:48:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; ppc64le

```console
$ docker pull redmine@sha256:207c237da4c760f2ff4887b60e7545f7b711609920d1760224301cf68ae97ed9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249903473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d24bf68a05968f9632c3c069783dfb401a71faf787270372b613806c750eea6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 05:26:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:26:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 06:19:31 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 06:19:33 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 06:19:37 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 06:19:40 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 06:19:51 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 06:31:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 06:31:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 06:31:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 06:31:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 06:31:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 06:31:47 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 12:48:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 12:49:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:49:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 12:50:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 12:50:11 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 12:50:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 12:54:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:54:30 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 12:54:33 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 13:13:45 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Mar 2018 13:13:48 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Mar 2018 13:13:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 13:32:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 13:32:58 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 13:33:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 13:33:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 13:33:06 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 13:33:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a59806018a3029eff71af8a8ee62fff9594b37160fc7cdefb70a2b597db27d`  
		Last Modified: Thu, 15 Mar 2018 06:36:53 GMT  
		Size: 10.2 MB (10157352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080a6f8f48e24550cb5573b4e6130addc9c1ea2820df46ba5efa3a3f93b0a33b`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66e6c0189fe2b52e60fae63abb4fcb833ea960cfed35188933680d1a3e1a920`  
		Last Modified: Thu, 15 Mar 2018 06:41:09 GMT  
		Size: 32.9 MB (32886365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d1fb67537ebff456460aa2998fc09e381b2bbc135e1d3e200361d0edec9fbb`  
		Last Modified: Thu, 15 Mar 2018 06:40:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ced8ca2a9ed55ab232fe2e026c86e3cd5bf3f8ff196bfc6cb63ce96ff55b9cd`  
		Last Modified: Thu, 15 Mar 2018 13:34:44 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9180944c35b43123af4e1f46b5ed832feb84cda5eb2543a7ca07dc6a9a92e5a2`  
		Last Modified: Thu, 15 Mar 2018 13:34:44 GMT  
		Size: 14.7 MB (14720655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aebba4965cc2edcb013dc9fb01fe8d8cebcd1229f6867b25b00d3c0f7e8de75`  
		Last Modified: Thu, 15 Mar 2018 13:34:40 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3615187630ed624fd0d37d7f77581bd5ac0660899e9a1f07dd12eefda2ddaea7`  
		Last Modified: Thu, 15 Mar 2018 13:34:39 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f358078dda0ee5d70fa1f61fba8e60e281c4159c0f9de40514383dba432724`  
		Last Modified: Thu, 15 Mar 2018 13:34:52 GMT  
		Size: 58.1 MB (58133049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e310d4d63151c64a680e7800a1a7afc3cd54422ab1180511d2da7496633b7f9`  
		Last Modified: Thu, 15 Mar 2018 13:34:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4859677595e5adcb3fa456e1a7c837e8c74d523e2163d0b7d1830b88b35c1ead`  
		Last Modified: Thu, 15 Mar 2018 13:35:14 GMT  
		Size: 2.3 MB (2347828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a938efedcee4f7fdcdd770c544e031511a373f7ff4c4e6c469690de2b9aa5e2`  
		Last Modified: Thu, 15 Mar 2018 13:35:29 GMT  
		Size: 79.4 MB (79358095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224566160979ed6edf6aa47dff69b6bfdf241d4609a4b1150b8644660b97bbf4`  
		Last Modified: Thu, 15 Mar 2018 13:35:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; s390x

```console
$ docker pull redmine@sha256:af454a4c4bacbdb8a170a756e5ed8b2255a76e273c20fe94de45c1bfb1f9acdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256663020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7226d74a85808c935ec7ee5abe204683ffcddc6750b0f30d10f39a1c14f8faf8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:53:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:53:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 08:12:19 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 08:14:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 08:14:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 08:14:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 08:14:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:14:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 08:15:00 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 12:12:16 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 12:12:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:12:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 12:12:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 12:12:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 12:12:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 12:13:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:13:10 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 12:13:15 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 12:15:55 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 14 Mar 2018 12:15:55 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 14 Mar 2018 12:15:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 12:18:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 12:18:08 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 12:18:08 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 12:18:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:18:08 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 12:18:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d3f3fd31e1f3273c5e5d559174055bac89b7a56b71a9eb8417d7125c175d8`  
		Last Modified: Wed, 14 Mar 2018 08:17:52 GMT  
		Size: 10.0 MB (9980125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c861533f4537bbc274ae2279a3536a1a9b4eac8116db94d080fd03eeac81dd1`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb2ff6130c0dad0b2e320bccdf5ea6565345a6c09cd87ecfa45ff14819448b0`  
		Last Modified: Wed, 14 Mar 2018 08:20:53 GMT  
		Size: 35.5 MB (35544819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d7f20fcdd2407e384a9ccfb455df961d610a916eb4116854cca0c324033a70`  
		Last Modified: Wed, 14 Mar 2018 08:20:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c43eba1cd8006a9a68eeeab3e851bba0922b7c2eaeeb48b48dd9790938ec22e`  
		Last Modified: Wed, 14 Mar 2018 12:19:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c697e925f2df7e1179a6750a3e678365b787b2f7df1c03fe88f493632e7fdd71`  
		Last Modified: Wed, 14 Mar 2018 12:19:29 GMT  
		Size: 14.8 MB (14815096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e2001e22dd54cab091de574d8d8fcf4d2adefb3f3235d85dbab748179b4980`  
		Last Modified: Wed, 14 Mar 2018 12:19:24 GMT  
		Size: 486.8 KB (486824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3938d9e6c46392f24838eb796cf8e1611128ad2f88a7d3fc92a5504b2213c412`  
		Last Modified: Wed, 14 Mar 2018 12:19:25 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6402f396abb485843d90be51254d887b1ec6a2f7b8b89abfcbdcb93d751ec4`  
		Last Modified: Wed, 14 Mar 2018 12:19:38 GMT  
		Size: 59.1 MB (59110810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d840047a192d9ee78b134e980b57e8106e562b7a49047109663486be6b5713`  
		Last Modified: Wed, 14 Mar 2018 12:19:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcb4a8d0f0e13dfc1447efec9392a4afc411304a5788f5133338566799fd3d2`  
		Last Modified: Wed, 14 Mar 2018 12:19:54 GMT  
		Size: 2.3 MB (2347495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e94833a0e6140a229b4e18c0eb5a1d936baf6fca905c205cdfbc51de63a7a4`  
		Last Modified: Wed, 14 Mar 2018 12:20:05 GMT  
		Size: 81.6 MB (81569359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74cc1f997390619e76702aad8a888fd7c6e9ff60a91d64d0224d549ee7e4c68`  
		Last Modified: Wed, 14 Mar 2018 12:19:52 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.9-passenger`

```console
$ docker pull redmine@sha256:164410891ccaf57bde59f3dfd27beaea3ba6072441ec6604968cf7e04539181a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.9-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e137f2fab451869caabdb70fc0e7c318c1977bc4dd7c11c55a80f5d0696a4954
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269527087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09c6fd665b624951dd27fbba0173f696b41b1cfa3a98cd15c26d0957fc676b59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:39:59 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:40:00 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:42:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:42:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:42:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:42:53 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 01:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 01:08:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:08:27 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 01:08:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 01:08:31 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 01:08:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 01:09:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:09:19 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 01:09:19 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 01:27:24 GMT
ENV REDMINE_VERSION=3.2.9
# Fri, 16 Mar 2018 01:27:24 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Fri, 16 Mar 2018 01:27:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 01:29:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:29:47 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 01:29:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 01:29:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 01:29:48 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 01:29:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Mar 2018 01:38:18 GMT
ENV PASSENGER_VERSION=5.2.1
# Fri, 16 Mar 2018 01:38:47 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:38:49 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 16 Mar 2018 01:38:49 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432b4d43a69ed1db93de57ff333d72b2603b143e46bc302d70463fe3460f677`  
		Last Modified: Wed, 14 Mar 2018 21:10:16 GMT  
		Size: 31.9 MB (31891010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760db2af24034808277cc60543dc2b093117247e027f0c968741d7ed51228fd3`  
		Last Modified: Wed, 14 Mar 2018 21:10:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090cf6682a5b3940b0752e9e17c5be60516bdde6cb58700879544c8e48dd3e80`  
		Last Modified: Fri, 16 Mar 2018 01:43:06 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a67f1b36432c09be618b98e844c781a0385b3119543d1f6fd631c2e2601bfa4`  
		Last Modified: Fri, 16 Mar 2018 01:43:08 GMT  
		Size: 14.7 MB (14650440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef9580d08304c9a8585b3e89d6d4d8eee7e8653e0e500ddd8b739b91279f391`  
		Last Modified: Fri, 16 Mar 2018 01:43:05 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afb05ae5ef77f2170a2354d3a4ce2d16f17f14b480bad7c357cd2a17e079f3c`  
		Last Modified: Fri, 16 Mar 2018 01:43:01 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e08c68c7793172fda9909e2c5ff4570dfebebfc330a69be1979aeb0cb2d8c50`  
		Last Modified: Fri, 16 Mar 2018 01:43:14 GMT  
		Size: 59.3 MB (59270805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1524776d7bbf69c28513acaebd67f9ba2d6807077ce723e199acbdd124afc8d`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f258d4c4a96d4dc6f88e86ccb3e250feb6394dab06da3b1d7ad0ae0166cb864f`  
		Last Modified: Fri, 16 Mar 2018 01:44:53 GMT  
		Size: 2.3 MB (2347506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd3d422dbc5038dcf8cc5d0674a7eb816342c6b18243430624db2bbeff8ca6a`  
		Last Modified: Fri, 16 Mar 2018 01:45:06 GMT  
		Size: 79.2 MB (79213281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5168d28cdf4cf6ee286feb07c3ee6f6225bb4760ca63528336b84a515e2b552`  
		Last Modified: Fri, 16 Mar 2018 01:44:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337a68bf80148bca34077ad3d768fd461376d2e3dd6d8b7b5170d8b078537034`  
		Last Modified: Fri, 16 Mar 2018 01:51:19 GMT  
		Size: 14.5 MB (14491283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2af45b7e7755b0bc29d77f6c48bb5bb8e344bf8a9ac77f740e0718fc5d73353`  
		Last Modified: Fri, 16 Mar 2018 01:51:16 GMT  
		Size: 4.4 MB (4354709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:164410891ccaf57bde59f3dfd27beaea3ba6072441ec6604968cf7e04539181a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e137f2fab451869caabdb70fc0e7c318c1977bc4dd7c11c55a80f5d0696a4954
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269527087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09c6fd665b624951dd27fbba0173f696b41b1cfa3a98cd15c26d0957fc676b59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:39:59 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:40:00 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:42:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:42:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:42:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:42:53 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 01:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 01:08:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:08:27 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 01:08:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 01:08:31 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 01:08:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 01:09:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:09:19 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 01:09:19 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 01:27:24 GMT
ENV REDMINE_VERSION=3.2.9
# Fri, 16 Mar 2018 01:27:24 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Fri, 16 Mar 2018 01:27:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 01:29:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:29:47 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 01:29:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 01:29:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 01:29:48 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 01:29:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Mar 2018 01:38:18 GMT
ENV PASSENGER_VERSION=5.2.1
# Fri, 16 Mar 2018 01:38:47 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:38:49 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 16 Mar 2018 01:38:49 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432b4d43a69ed1db93de57ff333d72b2603b143e46bc302d70463fe3460f677`  
		Last Modified: Wed, 14 Mar 2018 21:10:16 GMT  
		Size: 31.9 MB (31891010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760db2af24034808277cc60543dc2b093117247e027f0c968741d7ed51228fd3`  
		Last Modified: Wed, 14 Mar 2018 21:10:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090cf6682a5b3940b0752e9e17c5be60516bdde6cb58700879544c8e48dd3e80`  
		Last Modified: Fri, 16 Mar 2018 01:43:06 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a67f1b36432c09be618b98e844c781a0385b3119543d1f6fd631c2e2601bfa4`  
		Last Modified: Fri, 16 Mar 2018 01:43:08 GMT  
		Size: 14.7 MB (14650440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef9580d08304c9a8585b3e89d6d4d8eee7e8653e0e500ddd8b739b91279f391`  
		Last Modified: Fri, 16 Mar 2018 01:43:05 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afb05ae5ef77f2170a2354d3a4ce2d16f17f14b480bad7c357cd2a17e079f3c`  
		Last Modified: Fri, 16 Mar 2018 01:43:01 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e08c68c7793172fda9909e2c5ff4570dfebebfc330a69be1979aeb0cb2d8c50`  
		Last Modified: Fri, 16 Mar 2018 01:43:14 GMT  
		Size: 59.3 MB (59270805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1524776d7bbf69c28513acaebd67f9ba2d6807077ce723e199acbdd124afc8d`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f258d4c4a96d4dc6f88e86ccb3e250feb6394dab06da3b1d7ad0ae0166cb864f`  
		Last Modified: Fri, 16 Mar 2018 01:44:53 GMT  
		Size: 2.3 MB (2347506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd3d422dbc5038dcf8cc5d0674a7eb816342c6b18243430624db2bbeff8ca6a`  
		Last Modified: Fri, 16 Mar 2018 01:45:06 GMT  
		Size: 79.2 MB (79213281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5168d28cdf4cf6ee286feb07c3ee6f6225bb4760ca63528336b84a515e2b552`  
		Last Modified: Fri, 16 Mar 2018 01:44:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337a68bf80148bca34077ad3d768fd461376d2e3dd6d8b7b5170d8b078537034`  
		Last Modified: Fri, 16 Mar 2018 01:51:19 GMT  
		Size: 14.5 MB (14491283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2af45b7e7755b0bc29d77f6c48bb5bb8e344bf8a9ac77f740e0718fc5d73353`  
		Last Modified: Fri, 16 Mar 2018 01:51:16 GMT  
		Size: 4.4 MB (4354709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:84e51544cf35ea02d430c1e21f790a231646e537e1fcafd8d7dd2e404038c960
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
$ docker pull redmine@sha256:3d2b3c1288d12cd7f41a361d4b7dccf3954d7148255b8910d83d5e8d26e0c208
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250760918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25401599add934764d41995ef5fa9fee02a053d05779cbfb157ec3352c538a08`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:39:59 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:40:00 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:42:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:42:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:42:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:42:53 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 01:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 01:08:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:08:27 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 01:08:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 01:08:31 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 01:08:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 01:09:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:09:19 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 01:09:19 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 01:09:19 GMT
ENV REDMINE_VERSION=3.3.6
# Fri, 16 Mar 2018 01:09:19 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Fri, 16 Mar 2018 01:09:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 01:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 01:12:06 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 01:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 01:12:07 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 01:12:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432b4d43a69ed1db93de57ff333d72b2603b143e46bc302d70463fe3460f677`  
		Last Modified: Wed, 14 Mar 2018 21:10:16 GMT  
		Size: 31.9 MB (31891010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760db2af24034808277cc60543dc2b093117247e027f0c968741d7ed51228fd3`  
		Last Modified: Wed, 14 Mar 2018 21:10:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090cf6682a5b3940b0752e9e17c5be60516bdde6cb58700879544c8e48dd3e80`  
		Last Modified: Fri, 16 Mar 2018 01:43:06 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a67f1b36432c09be618b98e844c781a0385b3119543d1f6fd631c2e2601bfa4`  
		Last Modified: Fri, 16 Mar 2018 01:43:08 GMT  
		Size: 14.7 MB (14650440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef9580d08304c9a8585b3e89d6d4d8eee7e8653e0e500ddd8b739b91279f391`  
		Last Modified: Fri, 16 Mar 2018 01:43:05 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afb05ae5ef77f2170a2354d3a4ce2d16f17f14b480bad7c357cd2a17e079f3c`  
		Last Modified: Fri, 16 Mar 2018 01:43:01 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e08c68c7793172fda9909e2c5ff4570dfebebfc330a69be1979aeb0cb2d8c50`  
		Last Modified: Fri, 16 Mar 2018 01:43:14 GMT  
		Size: 59.3 MB (59270805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1524776d7bbf69c28513acaebd67f9ba2d6807077ce723e199acbdd124afc8d`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d1ff2eef5861325ef1690ee8c0f4fefd25516d279f16e396c4196ebb04c26d`  
		Last Modified: Fri, 16 Mar 2018 01:43:04 GMT  
		Size: 2.4 MB (2392398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc245ae560b1686f9c5dc2b2eebe16035fa384876b6729eb991ca1ef2bab6076`  
		Last Modified: Fri, 16 Mar 2018 01:43:19 GMT  
		Size: 79.2 MB (79248212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fb18b24808c017c718c46336ca04788e4022ebacd031592b79fa615f1c2907`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:06bcb3c8243d2861eb2715ce35d1b77bf093dfe060e39e59d36d2be7eca5a95e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243151468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840900b271642320f0efb57efc204f48fc67cc7daf6fb9a7182271b874dff0e5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:54:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:54:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 21:15:37 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 21:15:39 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 21:20:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 21:20:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 21:20:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 21:20:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 21:20:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 21:20:10 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 00:29:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 00:30:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:30:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:30:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 00:30:18 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 00:30:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 00:31:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:31:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 00:31:20 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 00:31:20 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Mar 2018 00:31:21 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Mar 2018 00:31:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 00:35:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:35:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 00:36:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 00:36:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 00:36:00 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 00:36:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5473f43f4b59989ac86bfabe67b51edefa4cea3b14253ecfa7eb87fe141c6fdf`  
		Last Modified: Wed, 14 Mar 2018 21:22:45 GMT  
		Size: 9.1 MB (9133325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839ac87b9c320a77dc7a49e28b87c64b9ddfbc570c2bbb0048b0bbf6b6eae293`  
		Last Modified: Wed, 14 Mar 2018 21:22:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e70ad42d333089e500c14c2643d4243eed9ff335fa984c8b92e7b4cf5d19c`  
		Last Modified: Wed, 14 Mar 2018 21:25:33 GMT  
		Size: 30.8 MB (30810734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3301434deb5a1e19b55d0091fdb1ede9d711408ec27e2c5fe562297401b8bf04`  
		Last Modified: Wed, 14 Mar 2018 21:25:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42ae722568f28e8df9956b66811dcdbc93246b831ef40bca0cb84d4c2430d75`  
		Last Modified: Thu, 15 Mar 2018 00:42:41 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03de2059894932d7303c7af356fd739966860e6ea0b6c5186221a8731918883`  
		Last Modified: Thu, 15 Mar 2018 00:42:44 GMT  
		Size: 14.3 MB (14347487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8b3c09d07618d905a9ea61cf0f75bc1a46690f73d9d3773f49a6680682c7fe`  
		Last Modified: Thu, 15 Mar 2018 00:42:40 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7846dfbc8ebb743356a5cdc81dd0e482a226e2d03a1f329ab6a98b78668970`  
		Last Modified: Thu, 15 Mar 2018 00:42:39 GMT  
		Size: 7.8 KB (7845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7224768f25c150d23474c0ef5661df1a85d3ba5f79a6865e08d5a9a8d626a4`  
		Last Modified: Thu, 15 Mar 2018 00:42:56 GMT  
		Size: 56.6 MB (56611384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ae38813bda4163aab705bac60542a9d9d357bba356fc349e9aa416b1160d71`  
		Last Modified: Thu, 15 Mar 2018 00:42:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad4902b9e3dc6c2e5868579c2b576c0712505c038d30f44394136818d135275`  
		Last Modified: Thu, 15 Mar 2018 00:42:41 GMT  
		Size: 2.4 MB (2392602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d600d7a1faf87c9722e74694505eedb907841023991cee674956871a76758a`  
		Last Modified: Thu, 15 Mar 2018 00:42:56 GMT  
		Size: 78.5 MB (78462498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3322ab018c2eb42b44a6e23e371cd762544241a774b517f92483e5d60737e0bc`  
		Last Modified: Thu, 15 Mar 2018 00:42:37 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:779a93b152d31df6cdbf4323ab589c68ff4cb810cf685e56a032a20845010ee5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237327822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a76131f26e6532202d6ce75c057bfed4121b384600980561f2ca6565952b927`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:17:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:17:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 16:47:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 16:47:06 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 16:47:07 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 16:47:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 16:47:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 16:52:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 16:52:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 16:52:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 16:52:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:52:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 16:52:22 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 19:18:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 19:19:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:19:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:19:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 19:19:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 19:19:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 19:20:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:20:36 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 19:20:36 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 19:20:37 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 14 Mar 2018 19:20:37 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 14 Mar 2018 19:20:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 19:24:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:25:04 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 19:25:04 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 19:25:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:25:05 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 19:25:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23990e8e0248903864ae0a398aa7696d1f976a252f99c84c8d69f337556d0e`  
		Last Modified: Wed, 14 Mar 2018 17:01:21 GMT  
		Size: 8.8 MB (8785784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c1085b4ef8dafa6f45c42463ec56ae2b446744a75840f17c7609dc7ee71f3`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d931e10a204be95ab2521c533de5f161d27c12fa71cd07c1502381afbc25b0`  
		Last Modified: Wed, 14 Mar 2018 17:07:21 GMT  
		Size: 30.6 MB (30586532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1ddf329a53a1aee97771cb6cb92d5c24cda9e5863933a44b2cba81b3e32c58`  
		Last Modified: Wed, 14 Mar 2018 17:07:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5dd2484b6bc74edfc2aba95d7436d19f71ce628ba19cdc0c44a18c931e53fd`  
		Last Modified: Wed, 14 Mar 2018 19:32:37 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fa2bde2052a8b4d39e58e909566d08001f6125dba4472de5ca671e22b2c590`  
		Last Modified: Wed, 14 Mar 2018 19:32:41 GMT  
		Size: 14.1 MB (14134540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25f16c626f42a748a92d03515bdcbfd5a9ff95bb7c53bb9f71e6f9009364995`  
		Last Modified: Wed, 14 Mar 2018 19:32:36 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a85ea2a90f271ed0f34bb5bc41e95c34c0480d54f0d5865a425bc05bb8b422`  
		Last Modified: Wed, 14 Mar 2018 19:32:36 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48c260e217fc68406872dac2e57bccaa19cc52fdaa8b6f0abda747b37833aa2`  
		Last Modified: Wed, 14 Mar 2018 19:32:53 GMT  
		Size: 54.3 MB (54345402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdec975d7a5620d9cf32e5eef393e6d1e4795276b10b56252ec1fdc9eb54627`  
		Last Modified: Wed, 14 Mar 2018 19:32:34 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5cfdcc50a2bbac8015a46c69cdbc31645c70b38d8e218a4748d74d05bf3144`  
		Last Modified: Wed, 14 Mar 2018 19:32:36 GMT  
		Size: 2.4 MB (2392599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac9f3897210fd434fb92db1b1c9061690b79b3726830f5407379e3cc0a920a7`  
		Last Modified: Wed, 14 Mar 2018 19:32:54 GMT  
		Size: 77.9 MB (77893867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc8426d6dd012d277700cdb143f0efa55305a48e56f0d30416690f41b538fad`  
		Last Modified: Wed, 14 Mar 2018 19:32:34 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:6451a8ae947fbc7838f507183b91f4073c55e7ac81fe62844ef8d597d1584590
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242885348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b4e5ef05d9734b14cde920e022c03659b0998649013e888b0609e54ec150e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:14:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:14:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 02:54:53 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 02:54:54 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 02:54:55 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 02:54:56 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:54:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 03:03:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 03:04:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 03:04:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 03:04:14 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:40:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:41:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:41:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:41:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:41:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:44:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:44:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:44:21 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 10:44:22 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Mar 2018 10:44:22 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Mar 2018 10:44:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 10:55:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 10:55:55 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 10:55:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 10:56:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 10:56:01 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 10:56:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b30c443a726219f9a82d88f1e1ba423ef88ef65ed6d12a2c1783c3493cac32`  
		Last Modified: Thu, 15 Mar 2018 03:11:46 GMT  
		Size: 9.4 MB (9355446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c823d913ce2f2a0777694502700425539459c44639c06e22be6ad8313114581e`  
		Last Modified: Thu, 15 Mar 2018 03:11:43 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db17c7fe59df01368666bef8ea8ff426e373acd16e51be5f87ee72fa36976`  
		Last Modified: Thu, 15 Mar 2018 03:16:42 GMT  
		Size: 32.0 MB (32001648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc26c2dbd11a07ee95a3c90fb357dda8ac68ad0e0742b1c2f294155d7284604`  
		Last Modified: Thu, 15 Mar 2018 03:16:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7cf95a58f2304fe4bb2275687c85563566c8f01e3c6306ea017a26cb8ce73`  
		Last Modified: Thu, 15 Mar 2018 11:09:06 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c71a81cfaeeeeeac082a126616814d1ced622aeb7986c3e157add87e81dd49`  
		Last Modified: Thu, 15 Mar 2018 11:09:10 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d1bd0bfa740365a7652f1fdaa31da0efab7510e647fdf6e35ef30adf7b315`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17607dfcc9bbfa72668dd5996fbfdad94c40f708a979f82a955a4548c2188a23`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167540bbef4c1e01c792375ce0275b83d7fad9a274e27588384e90ff8c302f23`  
		Last Modified: Thu, 15 Mar 2018 11:09:23 GMT  
		Size: 55.8 MB (55794788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55705345ace9c0efecec54fccfc9da2748f2199bbc8b2b60a50ca38d5f04132a`  
		Last Modified: Thu, 15 Mar 2018 11:09:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983f59839d07091d17866c133f5a65dcfd1adf7ec7e2f07b35078a3e4e1d3412`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 2.4 MB (2392396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec30372f87b4039b14ec1da77a6be31fed8da6b6bec0aeb24723edc8c3da965`  
		Last Modified: Thu, 15 Mar 2018 11:09:24 GMT  
		Size: 78.5 MB (78463435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22edb9539a735db4c8328726ad598089a0da37c39dad6447760ee21213e1a9da`  
		Last Modified: Thu, 15 Mar 2018 11:09:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:473ce6b90c3cba14a1e3d5d248ba9bf00635948fbaa298b104783ffdbbabe97a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.5 MB (253544212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d238e121b7f29c995f80bc634ccbd2b1a8dd6b3d39c79a0d7c2a5a1944688685`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 20:08:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 20:08:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_VERSION=2.2.9
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 20 Feb 2018 20:47:08 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 20 Feb 2018 20:47:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 20 Feb 2018 20:50:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 20 Feb 2018 20:50:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Feb 2018 20:50:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Feb 2018 20:50:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Feb 2018 20:50:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Feb 2018 20:50:50 GMT
CMD ["irb"]
# Wed, 21 Feb 2018 22:23:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 21 Feb 2018 22:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:24:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 22:24:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 21 Feb 2018 22:24:09 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 21 Feb 2018 22:24:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 21 Feb 2018 22:25:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:25:05 GMT
ENV RAILS_ENV=production
# Wed, 21 Feb 2018 22:25:05 GMT
WORKDIR /usr/src/redmine
# Wed, 21 Feb 2018 22:25:06 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 21 Feb 2018 22:25:06 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 21 Feb 2018 22:25:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 21 Feb 2018 22:28:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 22:28:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 21 Feb 2018 22:28:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 21 Feb 2018 22:28:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 22:28:06 GMT
EXPOSE 3000/tcp
# Wed, 21 Feb 2018 22:28:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e7541c989a1ffd223b6a8463f58c88f7627776091817578afe8d24f6713163`  
		Last Modified: Tue, 20 Feb 2018 21:01:28 GMT  
		Size: 14.6 MB (14649460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc8420509b19e956e958680ffe2f7f4c09ed11ed67c784ee733722e5f1bcda4`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8c2851ba5910f35321695a023a34fdaf956f46ef5ff5f6e34ba80fd6af0516`  
		Last Modified: Tue, 20 Feb 2018 21:58:47 GMT  
		Size: 30.0 MB (29967147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90093db16e622756611a6fdeb338a29dabee1444219830ff5539f257b00803c`  
		Last Modified: Tue, 20 Feb 2018 21:58:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4cc80fe37a05c0deac019656ef06fb0ba65287de4b8f1e39a9fac9ada6513f`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753b2e3d5c2d0a093af61fdc79271af14263e31020c06872c8ed756d52fba1d4`  
		Last Modified: Wed, 21 Feb 2018 23:25:57 GMT  
		Size: 14.8 MB (14817904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7753ab81c2ef44db7fc04e67db4cb88ac74c99278ef370837886aebbf7a428`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b70eeb677b6c79c46ea88ca7012ceee7d9d0617b4eb77697bf092db7adb4f5`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e37c133db4761c608c3d86c502b736fc5fd83f02a062f9a6f5374810e8fab9`  
		Last Modified: Wed, 21 Feb 2018 23:26:20 GMT  
		Size: 60.1 MB (60147265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dbc42dc9af59a8c7a9d2fc23670a34337afecd5f1628b7d5465884b7f0d803`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54580d839c4f4074e4a138326f40221580ba947fe2afea9f879de2dbe4e5dd3`  
		Last Modified: Wed, 21 Feb 2018 23:26:00 GMT  
		Size: 2.4 MB (2392400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2c012631b03bd21ff96cf073d6bca195b5d5fc307914ff1a8e0ca0f3871245`  
		Last Modified: Wed, 21 Feb 2018 23:26:18 GMT  
		Size: 78.3 MB (78288798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4666702778e11769c9f741fd5bc572b096af3cff14648ab73ff8e39cca5fbdcf`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:69ef8bd8f1916fc9a9fc714274023f4f806d94fc765ffc5ddd5236610d9154c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (249983319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce429de2ffcc31dda56af32815c6798be1619149d93a4c65f99bc515bef882a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 05:26:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:26:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 06:19:31 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 06:19:33 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 06:19:37 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 06:19:40 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 06:19:51 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 06:31:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 06:31:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 06:31:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 06:31:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 06:31:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 06:31:47 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 12:48:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 12:49:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:49:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 12:50:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 12:50:11 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 12:50:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 12:54:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:54:30 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 12:54:33 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 12:54:35 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Mar 2018 12:54:38 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Mar 2018 12:54:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 13:13:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 13:13:20 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 13:13:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 13:13:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 13:13:29 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 13:13:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a59806018a3029eff71af8a8ee62fff9594b37160fc7cdefb70a2b597db27d`  
		Last Modified: Thu, 15 Mar 2018 06:36:53 GMT  
		Size: 10.2 MB (10157352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080a6f8f48e24550cb5573b4e6130addc9c1ea2820df46ba5efa3a3f93b0a33b`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66e6c0189fe2b52e60fae63abb4fcb833ea960cfed35188933680d1a3e1a920`  
		Last Modified: Thu, 15 Mar 2018 06:41:09 GMT  
		Size: 32.9 MB (32886365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d1fb67537ebff456460aa2998fc09e381b2bbc135e1d3e200361d0edec9fbb`  
		Last Modified: Thu, 15 Mar 2018 06:40:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ced8ca2a9ed55ab232fe2e026c86e3cd5bf3f8ff196bfc6cb63ce96ff55b9cd`  
		Last Modified: Thu, 15 Mar 2018 13:34:44 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9180944c35b43123af4e1f46b5ed832feb84cda5eb2543a7ca07dc6a9a92e5a2`  
		Last Modified: Thu, 15 Mar 2018 13:34:44 GMT  
		Size: 14.7 MB (14720655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aebba4965cc2edcb013dc9fb01fe8d8cebcd1229f6867b25b00d3c0f7e8de75`  
		Last Modified: Thu, 15 Mar 2018 13:34:40 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3615187630ed624fd0d37d7f77581bd5ac0660899e9a1f07dd12eefda2ddaea7`  
		Last Modified: Thu, 15 Mar 2018 13:34:39 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f358078dda0ee5d70fa1f61fba8e60e281c4159c0f9de40514383dba432724`  
		Last Modified: Thu, 15 Mar 2018 13:34:52 GMT  
		Size: 58.1 MB (58133049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e310d4d63151c64a680e7800a1a7afc3cd54422ab1180511d2da7496633b7f9`  
		Last Modified: Thu, 15 Mar 2018 13:34:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa697c49bcf2d59b69dd5a5f35429d84b19a6a3c4532947f4bf294300d9398`  
		Last Modified: Thu, 15 Mar 2018 13:34:37 GMT  
		Size: 2.4 MB (2392595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ded02d4785275ae7e3974657c4f7ac3fcfa1fa5a12c673756ff745af4f0ff01`  
		Last Modified: Thu, 15 Mar 2018 13:34:53 GMT  
		Size: 79.4 MB (79393174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38532d320240668339ebd9c18292539d823b1a2ee0c3156f2ce0cc4f12cd2c47`  
		Last Modified: Thu, 15 Mar 2018 13:34:37 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:fb409b1d13a8cad15f28bb8b27022f4f1d9d8d7d97c867c06a73d11caba448ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256707686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6671bc4ba87d5d5ce2fa5469c7f38e1d4410b63abbff5086e827cbcad8ae86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:53:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:53:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 08:12:19 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 08:14:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 08:14:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 08:14:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 08:14:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:14:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 08:15:00 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 12:12:16 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 12:12:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:12:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 12:12:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 12:12:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 12:12:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 12:13:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:13:10 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 12:13:15 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 12:13:15 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 14 Mar 2018 12:13:15 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 14 Mar 2018 12:13:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 12:15:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 12:15:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 12:15:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 12:15:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:15:44 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 12:15:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d3f3fd31e1f3273c5e5d559174055bac89b7a56b71a9eb8417d7125c175d8`  
		Last Modified: Wed, 14 Mar 2018 08:17:52 GMT  
		Size: 10.0 MB (9980125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c861533f4537bbc274ae2279a3536a1a9b4eac8116db94d080fd03eeac81dd1`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb2ff6130c0dad0b2e320bccdf5ea6565345a6c09cd87ecfa45ff14819448b0`  
		Last Modified: Wed, 14 Mar 2018 08:20:53 GMT  
		Size: 35.5 MB (35544819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d7f20fcdd2407e384a9ccfb455df961d610a916eb4116854cca0c324033a70`  
		Last Modified: Wed, 14 Mar 2018 08:20:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c43eba1cd8006a9a68eeeab3e851bba0922b7c2eaeeb48b48dd9790938ec22e`  
		Last Modified: Wed, 14 Mar 2018 12:19:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c697e925f2df7e1179a6750a3e678365b787b2f7df1c03fe88f493632e7fdd71`  
		Last Modified: Wed, 14 Mar 2018 12:19:29 GMT  
		Size: 14.8 MB (14815096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e2001e22dd54cab091de574d8d8fcf4d2adefb3f3235d85dbab748179b4980`  
		Last Modified: Wed, 14 Mar 2018 12:19:24 GMT  
		Size: 486.8 KB (486824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3938d9e6c46392f24838eb796cf8e1611128ad2f88a7d3fc92a5504b2213c412`  
		Last Modified: Wed, 14 Mar 2018 12:19:25 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6402f396abb485843d90be51254d887b1ec6a2f7b8b89abfcbdcb93d751ec4`  
		Last Modified: Wed, 14 Mar 2018 12:19:38 GMT  
		Size: 59.1 MB (59110810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d840047a192d9ee78b134e980b57e8106e562b7a49047109663486be6b5713`  
		Last Modified: Wed, 14 Mar 2018 12:19:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380faadf0400e32ff35c02adb7c3a73a1092132d1b938ec8684a392e199d4b18`  
		Last Modified: Wed, 14 Mar 2018 12:19:22 GMT  
		Size: 2.4 MB (2392401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51b9e48d6099d0d235cb2f51aed0dd37addb95c91811e019e1bbaebd49f533a`  
		Last Modified: Wed, 14 Mar 2018 12:19:33 GMT  
		Size: 81.6 MB (81569118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee899b584be63c726c6271c28d6cbc0b2e8b1685d02d9bd4d9789a7b1407675c`  
		Last Modified: Wed, 14 Mar 2018 12:19:22 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.6`

```console
$ docker pull redmine@sha256:84e51544cf35ea02d430c1e21f790a231646e537e1fcafd8d7dd2e404038c960
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
$ docker pull redmine@sha256:3d2b3c1288d12cd7f41a361d4b7dccf3954d7148255b8910d83d5e8d26e0c208
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250760918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25401599add934764d41995ef5fa9fee02a053d05779cbfb157ec3352c538a08`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:39:59 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:40:00 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:42:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:42:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:42:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:42:53 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 01:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 01:08:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:08:27 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 01:08:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 01:08:31 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 01:08:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 01:09:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:09:19 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 01:09:19 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 01:09:19 GMT
ENV REDMINE_VERSION=3.3.6
# Fri, 16 Mar 2018 01:09:19 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Fri, 16 Mar 2018 01:09:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 01:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 01:12:06 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 01:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 01:12:07 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 01:12:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432b4d43a69ed1db93de57ff333d72b2603b143e46bc302d70463fe3460f677`  
		Last Modified: Wed, 14 Mar 2018 21:10:16 GMT  
		Size: 31.9 MB (31891010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760db2af24034808277cc60543dc2b093117247e027f0c968741d7ed51228fd3`  
		Last Modified: Wed, 14 Mar 2018 21:10:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090cf6682a5b3940b0752e9e17c5be60516bdde6cb58700879544c8e48dd3e80`  
		Last Modified: Fri, 16 Mar 2018 01:43:06 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a67f1b36432c09be618b98e844c781a0385b3119543d1f6fd631c2e2601bfa4`  
		Last Modified: Fri, 16 Mar 2018 01:43:08 GMT  
		Size: 14.7 MB (14650440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef9580d08304c9a8585b3e89d6d4d8eee7e8653e0e500ddd8b739b91279f391`  
		Last Modified: Fri, 16 Mar 2018 01:43:05 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afb05ae5ef77f2170a2354d3a4ce2d16f17f14b480bad7c357cd2a17e079f3c`  
		Last Modified: Fri, 16 Mar 2018 01:43:01 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e08c68c7793172fda9909e2c5ff4570dfebebfc330a69be1979aeb0cb2d8c50`  
		Last Modified: Fri, 16 Mar 2018 01:43:14 GMT  
		Size: 59.3 MB (59270805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1524776d7bbf69c28513acaebd67f9ba2d6807077ce723e199acbdd124afc8d`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d1ff2eef5861325ef1690ee8c0f4fefd25516d279f16e396c4196ebb04c26d`  
		Last Modified: Fri, 16 Mar 2018 01:43:04 GMT  
		Size: 2.4 MB (2392398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc245ae560b1686f9c5dc2b2eebe16035fa384876b6729eb991ca1ef2bab6076`  
		Last Modified: Fri, 16 Mar 2018 01:43:19 GMT  
		Size: 79.2 MB (79248212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fb18b24808c017c718c46336ca04788e4022ebacd031592b79fa615f1c2907`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm variant v5

```console
$ docker pull redmine@sha256:06bcb3c8243d2861eb2715ce35d1b77bf093dfe060e39e59d36d2be7eca5a95e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243151468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840900b271642320f0efb57efc204f48fc67cc7daf6fb9a7182271b874dff0e5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:54:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:54:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 21:15:37 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 21:15:38 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 21:15:39 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 21:20:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 21:20:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 21:20:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 21:20:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 21:20:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 21:20:10 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 00:29:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 00:30:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:30:15 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:30:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 00:30:18 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 00:30:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 00:31:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:31:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 00:31:20 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 00:31:20 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Mar 2018 00:31:21 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Mar 2018 00:31:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 00:35:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:35:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 00:36:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 00:36:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 00:36:00 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 00:36:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5473f43f4b59989ac86bfabe67b51edefa4cea3b14253ecfa7eb87fe141c6fdf`  
		Last Modified: Wed, 14 Mar 2018 21:22:45 GMT  
		Size: 9.1 MB (9133325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839ac87b9c320a77dc7a49e28b87c64b9ddfbc570c2bbb0048b0bbf6b6eae293`  
		Last Modified: Wed, 14 Mar 2018 21:22:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e70ad42d333089e500c14c2643d4243eed9ff335fa984c8b92e7b4cf5d19c`  
		Last Modified: Wed, 14 Mar 2018 21:25:33 GMT  
		Size: 30.8 MB (30810734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3301434deb5a1e19b55d0091fdb1ede9d711408ec27e2c5fe562297401b8bf04`  
		Last Modified: Wed, 14 Mar 2018 21:25:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42ae722568f28e8df9956b66811dcdbc93246b831ef40bca0cb84d4c2430d75`  
		Last Modified: Thu, 15 Mar 2018 00:42:41 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03de2059894932d7303c7af356fd739966860e6ea0b6c5186221a8731918883`  
		Last Modified: Thu, 15 Mar 2018 00:42:44 GMT  
		Size: 14.3 MB (14347487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8b3c09d07618d905a9ea61cf0f75bc1a46690f73d9d3773f49a6680682c7fe`  
		Last Modified: Thu, 15 Mar 2018 00:42:40 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7846dfbc8ebb743356a5cdc81dd0e482a226e2d03a1f329ab6a98b78668970`  
		Last Modified: Thu, 15 Mar 2018 00:42:39 GMT  
		Size: 7.8 KB (7845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7224768f25c150d23474c0ef5661df1a85d3ba5f79a6865e08d5a9a8d626a4`  
		Last Modified: Thu, 15 Mar 2018 00:42:56 GMT  
		Size: 56.6 MB (56611384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ae38813bda4163aab705bac60542a9d9d357bba356fc349e9aa416b1160d71`  
		Last Modified: Thu, 15 Mar 2018 00:42:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad4902b9e3dc6c2e5868579c2b576c0712505c038d30f44394136818d135275`  
		Last Modified: Thu, 15 Mar 2018 00:42:41 GMT  
		Size: 2.4 MB (2392602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d600d7a1faf87c9722e74694505eedb907841023991cee674956871a76758a`  
		Last Modified: Thu, 15 Mar 2018 00:42:56 GMT  
		Size: 78.5 MB (78462498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3322ab018c2eb42b44a6e23e371cd762544241a774b517f92483e5d60737e0bc`  
		Last Modified: Thu, 15 Mar 2018 00:42:37 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm variant v7

```console
$ docker pull redmine@sha256:779a93b152d31df6cdbf4323ab589c68ff4cb810cf685e56a032a20845010ee5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237327822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a76131f26e6532202d6ce75c057bfed4121b384600980561f2ca6565952b927`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:17:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:17:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 16:47:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 16:47:06 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 16:47:07 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 16:47:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 16:47:07 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 16:52:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 16:52:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 16:52:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 16:52:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:52:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 16:52:22 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 19:18:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 19:19:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:19:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:19:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 19:19:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 19:19:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 19:20:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:20:36 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 19:20:36 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 19:20:37 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 14 Mar 2018 19:20:37 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 14 Mar 2018 19:20:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 19:24:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:25:04 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 19:25:04 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 19:25:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:25:05 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 19:25:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23990e8e0248903864ae0a398aa7696d1f976a252f99c84c8d69f337556d0e`  
		Last Modified: Wed, 14 Mar 2018 17:01:21 GMT  
		Size: 8.8 MB (8785784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c1085b4ef8dafa6f45c42463ec56ae2b446744a75840f17c7609dc7ee71f3`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d931e10a204be95ab2521c533de5f161d27c12fa71cd07c1502381afbc25b0`  
		Last Modified: Wed, 14 Mar 2018 17:07:21 GMT  
		Size: 30.6 MB (30586532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1ddf329a53a1aee97771cb6cb92d5c24cda9e5863933a44b2cba81b3e32c58`  
		Last Modified: Wed, 14 Mar 2018 17:07:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5dd2484b6bc74edfc2aba95d7436d19f71ce628ba19cdc0c44a18c931e53fd`  
		Last Modified: Wed, 14 Mar 2018 19:32:37 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fa2bde2052a8b4d39e58e909566d08001f6125dba4472de5ca671e22b2c590`  
		Last Modified: Wed, 14 Mar 2018 19:32:41 GMT  
		Size: 14.1 MB (14134540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25f16c626f42a748a92d03515bdcbfd5a9ff95bb7c53bb9f71e6f9009364995`  
		Last Modified: Wed, 14 Mar 2018 19:32:36 GMT  
		Size: 475.3 KB (475264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a85ea2a90f271ed0f34bb5bc41e95c34c0480d54f0d5865a425bc05bb8b422`  
		Last Modified: Wed, 14 Mar 2018 19:32:36 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48c260e217fc68406872dac2e57bccaa19cc52fdaa8b6f0abda747b37833aa2`  
		Last Modified: Wed, 14 Mar 2018 19:32:53 GMT  
		Size: 54.3 MB (54345402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdec975d7a5620d9cf32e5eef393e6d1e4795276b10b56252ec1fdc9eb54627`  
		Last Modified: Wed, 14 Mar 2018 19:32:34 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5cfdcc50a2bbac8015a46c69cdbc31645c70b38d8e218a4748d74d05bf3144`  
		Last Modified: Wed, 14 Mar 2018 19:32:36 GMT  
		Size: 2.4 MB (2392599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac9f3897210fd434fb92db1b1c9061690b79b3726830f5407379e3cc0a920a7`  
		Last Modified: Wed, 14 Mar 2018 19:32:54 GMT  
		Size: 77.9 MB (77893867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc8426d6dd012d277700cdb143f0efa55305a48e56f0d30416690f41b538fad`  
		Last Modified: Wed, 14 Mar 2018 19:32:34 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:6451a8ae947fbc7838f507183b91f4073c55e7ac81fe62844ef8d597d1584590
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242885348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b4e5ef05d9734b14cde920e022c03659b0998649013e888b0609e54ec150e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:14:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:14:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 02:54:53 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 02:54:54 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 02:54:55 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 02:54:56 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:54:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 03:03:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 03:04:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 03:04:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 03:04:14 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:40:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:41:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:41:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:41:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:41:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:44:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:44:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:44:21 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 10:44:22 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Mar 2018 10:44:22 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Mar 2018 10:44:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 10:55:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 10:55:55 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 10:55:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 10:56:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 10:56:01 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 10:56:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b30c443a726219f9a82d88f1e1ba423ef88ef65ed6d12a2c1783c3493cac32`  
		Last Modified: Thu, 15 Mar 2018 03:11:46 GMT  
		Size: 9.4 MB (9355446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c823d913ce2f2a0777694502700425539459c44639c06e22be6ad8313114581e`  
		Last Modified: Thu, 15 Mar 2018 03:11:43 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db17c7fe59df01368666bef8ea8ff426e373acd16e51be5f87ee72fa36976`  
		Last Modified: Thu, 15 Mar 2018 03:16:42 GMT  
		Size: 32.0 MB (32001648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc26c2dbd11a07ee95a3c90fb357dda8ac68ad0e0742b1c2f294155d7284604`  
		Last Modified: Thu, 15 Mar 2018 03:16:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7cf95a58f2304fe4bb2275687c85563566c8f01e3c6306ea017a26cb8ce73`  
		Last Modified: Thu, 15 Mar 2018 11:09:06 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c71a81cfaeeeeeac082a126616814d1ced622aeb7986c3e157add87e81dd49`  
		Last Modified: Thu, 15 Mar 2018 11:09:10 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d1bd0bfa740365a7652f1fdaa31da0efab7510e647fdf6e35ef30adf7b315`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17607dfcc9bbfa72668dd5996fbfdad94c40f708a979f82a955a4548c2188a23`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167540bbef4c1e01c792375ce0275b83d7fad9a274e27588384e90ff8c302f23`  
		Last Modified: Thu, 15 Mar 2018 11:09:23 GMT  
		Size: 55.8 MB (55794788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55705345ace9c0efecec54fccfc9da2748f2199bbc8b2b60a50ca38d5f04132a`  
		Last Modified: Thu, 15 Mar 2018 11:09:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983f59839d07091d17866c133f5a65dcfd1adf7ec7e2f07b35078a3e4e1d3412`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 2.4 MB (2392396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec30372f87b4039b14ec1da77a6be31fed8da6b6bec0aeb24723edc8c3da965`  
		Last Modified: Thu, 15 Mar 2018 11:09:24 GMT  
		Size: 78.5 MB (78463435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22edb9539a735db4c8328726ad598089a0da37c39dad6447760ee21213e1a9da`  
		Last Modified: Thu, 15 Mar 2018 11:09:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; 386

```console
$ docker pull redmine@sha256:473ce6b90c3cba14a1e3d5d248ba9bf00635948fbaa298b104783ffdbbabe97a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.5 MB (253544212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d238e121b7f29c995f80bc634ccbd2b1a8dd6b3d39c79a0d7c2a5a1944688685`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 20:08:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 20:08:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_MAJOR=2.2
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_VERSION=2.2.9
# Tue, 20 Feb 2018 20:47:07 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 20 Feb 2018 20:47:08 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 20 Feb 2018 20:47:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 20 Feb 2018 20:50:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 20 Feb 2018 20:50:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Feb 2018 20:50:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Feb 2018 20:50:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Feb 2018 20:50:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Feb 2018 20:50:50 GMT
CMD ["irb"]
# Wed, 21 Feb 2018 22:23:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 21 Feb 2018 22:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:24:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 22:24:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 21 Feb 2018 22:24:09 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 21 Feb 2018 22:24:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 21 Feb 2018 22:25:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:25:05 GMT
ENV RAILS_ENV=production
# Wed, 21 Feb 2018 22:25:05 GMT
WORKDIR /usr/src/redmine
# Wed, 21 Feb 2018 22:25:06 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 21 Feb 2018 22:25:06 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 21 Feb 2018 22:25:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 21 Feb 2018 22:28:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 22:28:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 21 Feb 2018 22:28:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 21 Feb 2018 22:28:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 22:28:06 GMT
EXPOSE 3000/tcp
# Wed, 21 Feb 2018 22:28:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e7541c989a1ffd223b6a8463f58c88f7627776091817578afe8d24f6713163`  
		Last Modified: Tue, 20 Feb 2018 21:01:28 GMT  
		Size: 14.6 MB (14649460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc8420509b19e956e958680ffe2f7f4c09ed11ed67c784ee733722e5f1bcda4`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8c2851ba5910f35321695a023a34fdaf956f46ef5ff5f6e34ba80fd6af0516`  
		Last Modified: Tue, 20 Feb 2018 21:58:47 GMT  
		Size: 30.0 MB (29967147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90093db16e622756611a6fdeb338a29dabee1444219830ff5539f257b00803c`  
		Last Modified: Tue, 20 Feb 2018 21:58:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4cc80fe37a05c0deac019656ef06fb0ba65287de4b8f1e39a9fac9ada6513f`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753b2e3d5c2d0a093af61fdc79271af14263e31020c06872c8ed756d52fba1d4`  
		Last Modified: Wed, 21 Feb 2018 23:25:57 GMT  
		Size: 14.8 MB (14817904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7753ab81c2ef44db7fc04e67db4cb88ac74c99278ef370837886aebbf7a428`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 480.6 KB (480570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b70eeb677b6c79c46ea88ca7012ceee7d9d0617b4eb77697bf092db7adb4f5`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e37c133db4761c608c3d86c502b736fc5fd83f02a062f9a6f5374810e8fab9`  
		Last Modified: Wed, 21 Feb 2018 23:26:20 GMT  
		Size: 60.1 MB (60147265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7dbc42dc9af59a8c7a9d2fc23670a34337afecd5f1628b7d5465884b7f0d803`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54580d839c4f4074e4a138326f40221580ba947fe2afea9f879de2dbe4e5dd3`  
		Last Modified: Wed, 21 Feb 2018 23:26:00 GMT  
		Size: 2.4 MB (2392400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2c012631b03bd21ff96cf073d6bca195b5d5fc307914ff1a8e0ca0f3871245`  
		Last Modified: Wed, 21 Feb 2018 23:26:18 GMT  
		Size: 78.3 MB (78288798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4666702778e11769c9f741fd5bc572b096af3cff14648ab73ff8e39cca5fbdcf`  
		Last Modified: Wed, 21 Feb 2018 23:25:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; ppc64le

```console
$ docker pull redmine@sha256:69ef8bd8f1916fc9a9fc714274023f4f806d94fc765ffc5ddd5236610d9154c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (249983319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce429de2ffcc31dda56af32815c6798be1619149d93a4c65f99bc515bef882a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 05:26:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:26:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 06:19:31 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 06:19:33 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 06:19:37 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 06:19:40 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 06:19:51 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 06:31:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 06:31:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 06:31:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 06:31:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 06:31:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 06:31:47 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 12:48:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 12:49:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:49:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 12:50:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 12:50:11 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 12:50:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 12:54:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:54:30 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 12:54:33 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 12:54:35 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Mar 2018 12:54:38 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Mar 2018 12:54:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 13:13:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 13:13:20 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 13:13:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 13:13:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 13:13:29 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 13:13:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a59806018a3029eff71af8a8ee62fff9594b37160fc7cdefb70a2b597db27d`  
		Last Modified: Thu, 15 Mar 2018 06:36:53 GMT  
		Size: 10.2 MB (10157352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080a6f8f48e24550cb5573b4e6130addc9c1ea2820df46ba5efa3a3f93b0a33b`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66e6c0189fe2b52e60fae63abb4fcb833ea960cfed35188933680d1a3e1a920`  
		Last Modified: Thu, 15 Mar 2018 06:41:09 GMT  
		Size: 32.9 MB (32886365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d1fb67537ebff456460aa2998fc09e381b2bbc135e1d3e200361d0edec9fbb`  
		Last Modified: Thu, 15 Mar 2018 06:40:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ced8ca2a9ed55ab232fe2e026c86e3cd5bf3f8ff196bfc6cb63ce96ff55b9cd`  
		Last Modified: Thu, 15 Mar 2018 13:34:44 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9180944c35b43123af4e1f46b5ed832feb84cda5eb2543a7ca07dc6a9a92e5a2`  
		Last Modified: Thu, 15 Mar 2018 13:34:44 GMT  
		Size: 14.7 MB (14720655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aebba4965cc2edcb013dc9fb01fe8d8cebcd1229f6867b25b00d3c0f7e8de75`  
		Last Modified: Thu, 15 Mar 2018 13:34:40 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3615187630ed624fd0d37d7f77581bd5ac0660899e9a1f07dd12eefda2ddaea7`  
		Last Modified: Thu, 15 Mar 2018 13:34:39 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f358078dda0ee5d70fa1f61fba8e60e281c4159c0f9de40514383dba432724`  
		Last Modified: Thu, 15 Mar 2018 13:34:52 GMT  
		Size: 58.1 MB (58133049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e310d4d63151c64a680e7800a1a7afc3cd54422ab1180511d2da7496633b7f9`  
		Last Modified: Thu, 15 Mar 2018 13:34:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa697c49bcf2d59b69dd5a5f35429d84b19a6a3c4532947f4bf294300d9398`  
		Last Modified: Thu, 15 Mar 2018 13:34:37 GMT  
		Size: 2.4 MB (2392595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ded02d4785275ae7e3974657c4f7ac3fcfa1fa5a12c673756ff745af4f0ff01`  
		Last Modified: Thu, 15 Mar 2018 13:34:53 GMT  
		Size: 79.4 MB (79393174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38532d320240668339ebd9c18292539d823b1a2ee0c3156f2ce0cc4f12cd2c47`  
		Last Modified: Thu, 15 Mar 2018 13:34:37 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; s390x

```console
$ docker pull redmine@sha256:fb409b1d13a8cad15f28bb8b27022f4f1d9d8d7d97c867c06a73d11caba448ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256707686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6671bc4ba87d5d5ce2fa5469c7f38e1d4410b63abbff5086e827cbcad8ae86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:53:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:53:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 08:12:18 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 08:12:19 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 08:14:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 08:14:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 08:14:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 08:14:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:14:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 08:15:00 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 12:12:16 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 12:12:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:12:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 12:12:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 12:12:35 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 12:12:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 12:13:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:13:10 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 12:13:15 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 12:13:15 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 14 Mar 2018 12:13:15 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 14 Mar 2018 12:13:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 12:15:41 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 12:15:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 12:15:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 12:15:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:15:44 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 12:15:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d3f3fd31e1f3273c5e5d559174055bac89b7a56b71a9eb8417d7125c175d8`  
		Last Modified: Wed, 14 Mar 2018 08:17:52 GMT  
		Size: 10.0 MB (9980125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c861533f4537bbc274ae2279a3536a1a9b4eac8116db94d080fd03eeac81dd1`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb2ff6130c0dad0b2e320bccdf5ea6565345a6c09cd87ecfa45ff14819448b0`  
		Last Modified: Wed, 14 Mar 2018 08:20:53 GMT  
		Size: 35.5 MB (35544819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d7f20fcdd2407e384a9ccfb455df961d610a916eb4116854cca0c324033a70`  
		Last Modified: Wed, 14 Mar 2018 08:20:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c43eba1cd8006a9a68eeeab3e851bba0922b7c2eaeeb48b48dd9790938ec22e`  
		Last Modified: Wed, 14 Mar 2018 12:19:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c697e925f2df7e1179a6750a3e678365b787b2f7df1c03fe88f493632e7fdd71`  
		Last Modified: Wed, 14 Mar 2018 12:19:29 GMT  
		Size: 14.8 MB (14815096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e2001e22dd54cab091de574d8d8fcf4d2adefb3f3235d85dbab748179b4980`  
		Last Modified: Wed, 14 Mar 2018 12:19:24 GMT  
		Size: 486.8 KB (486824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3938d9e6c46392f24838eb796cf8e1611128ad2f88a7d3fc92a5504b2213c412`  
		Last Modified: Wed, 14 Mar 2018 12:19:25 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6402f396abb485843d90be51254d887b1ec6a2f7b8b89abfcbdcb93d751ec4`  
		Last Modified: Wed, 14 Mar 2018 12:19:38 GMT  
		Size: 59.1 MB (59110810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d840047a192d9ee78b134e980b57e8106e562b7a49047109663486be6b5713`  
		Last Modified: Wed, 14 Mar 2018 12:19:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380faadf0400e32ff35c02adb7c3a73a1092132d1b938ec8684a392e199d4b18`  
		Last Modified: Wed, 14 Mar 2018 12:19:22 GMT  
		Size: 2.4 MB (2392401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51b9e48d6099d0d235cb2f51aed0dd37addb95c91811e019e1bbaebd49f533a`  
		Last Modified: Wed, 14 Mar 2018 12:19:33 GMT  
		Size: 81.6 MB (81569118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee899b584be63c726c6271c28d6cbc0b2e8b1685d02d9bd4d9789a7b1407675c`  
		Last Modified: Wed, 14 Mar 2018 12:19:22 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.6-passenger`

```console
$ docker pull redmine@sha256:2347b81d1a694dd0c081d345b79e3fbcd0a94cce96b42e3476ebe405abbaff74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.6-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:946e8e571521a34299dbf17b0a7a9723dfb4f36a1b719a8be9bb03960e7238a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269607556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba54d92ecd2ee5f3714b856fce21bb495356ff498c7274cae39cceb4b95a8cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:39:59 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:40:00 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:42:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:42:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:42:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:42:53 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 01:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 01:08:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:08:27 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 01:08:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 01:08:31 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 01:08:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 01:09:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:09:19 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 01:09:19 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 01:09:19 GMT
ENV REDMINE_VERSION=3.3.6
# Fri, 16 Mar 2018 01:09:19 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Fri, 16 Mar 2018 01:09:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 01:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 01:12:06 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 01:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 01:12:07 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 01:12:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Mar 2018 01:26:34 GMT
ENV PASSENGER_VERSION=5.2.1
# Fri, 16 Mar 2018 01:27:03 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:27:04 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 16 Mar 2018 01:27:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432b4d43a69ed1db93de57ff333d72b2603b143e46bc302d70463fe3460f677`  
		Last Modified: Wed, 14 Mar 2018 21:10:16 GMT  
		Size: 31.9 MB (31891010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760db2af24034808277cc60543dc2b093117247e027f0c968741d7ed51228fd3`  
		Last Modified: Wed, 14 Mar 2018 21:10:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090cf6682a5b3940b0752e9e17c5be60516bdde6cb58700879544c8e48dd3e80`  
		Last Modified: Fri, 16 Mar 2018 01:43:06 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a67f1b36432c09be618b98e844c781a0385b3119543d1f6fd631c2e2601bfa4`  
		Last Modified: Fri, 16 Mar 2018 01:43:08 GMT  
		Size: 14.7 MB (14650440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef9580d08304c9a8585b3e89d6d4d8eee7e8653e0e500ddd8b739b91279f391`  
		Last Modified: Fri, 16 Mar 2018 01:43:05 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afb05ae5ef77f2170a2354d3a4ce2d16f17f14b480bad7c357cd2a17e079f3c`  
		Last Modified: Fri, 16 Mar 2018 01:43:01 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e08c68c7793172fda9909e2c5ff4570dfebebfc330a69be1979aeb0cb2d8c50`  
		Last Modified: Fri, 16 Mar 2018 01:43:14 GMT  
		Size: 59.3 MB (59270805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1524776d7bbf69c28513acaebd67f9ba2d6807077ce723e199acbdd124afc8d`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d1ff2eef5861325ef1690ee8c0f4fefd25516d279f16e396c4196ebb04c26d`  
		Last Modified: Fri, 16 Mar 2018 01:43:04 GMT  
		Size: 2.4 MB (2392398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc245ae560b1686f9c5dc2b2eebe16035fa384876b6729eb991ca1ef2bab6076`  
		Last Modified: Fri, 16 Mar 2018 01:43:19 GMT  
		Size: 79.2 MB (79248212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fb18b24808c017c718c46336ca04788e4022ebacd031592b79fa615f1c2907`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcfa27473aad6d547c0c35fb1506e6d63955810768121dd8d6e3137f1b2ab01`  
		Last Modified: Fri, 16 Mar 2018 01:44:08 GMT  
		Size: 14.5 MB (14491914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f3538a57b74ba7d02e0b1ab6a7118e097ff5139dac9f1b69514b23d57bbb15`  
		Last Modified: Fri, 16 Mar 2018 01:44:03 GMT  
		Size: 4.4 MB (4354724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:2347b81d1a694dd0c081d345b79e3fbcd0a94cce96b42e3476ebe405abbaff74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:946e8e571521a34299dbf17b0a7a9723dfb4f36a1b719a8be9bb03960e7238a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269607556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba54d92ecd2ee5f3714b856fce21bb495356ff498c7274cae39cceb4b95a8cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:39:59 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_VERSION=2.2.9
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 14 Mar 2018 20:40:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:40:00 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:42:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:42:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:42:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:42:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:42:53 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 01:08:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 01:08:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:08:27 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 01:08:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 01:08:31 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 01:08:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 01:09:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 01:09:19 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 01:09:19 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 01:09:19 GMT
ENV REDMINE_VERSION=3.3.6
# Fri, 16 Mar 2018 01:09:19 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Fri, 16 Mar 2018 01:09:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 01:12:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:12:06 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 01:12:06 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 01:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 01:12:07 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 01:12:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Mar 2018 01:26:34 GMT
ENV PASSENGER_VERSION=5.2.1
# Fri, 16 Mar 2018 01:27:03 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:27:04 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 16 Mar 2018 01:27:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432b4d43a69ed1db93de57ff333d72b2603b143e46bc302d70463fe3460f677`  
		Last Modified: Wed, 14 Mar 2018 21:10:16 GMT  
		Size: 31.9 MB (31891010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760db2af24034808277cc60543dc2b093117247e027f0c968741d7ed51228fd3`  
		Last Modified: Wed, 14 Mar 2018 21:10:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090cf6682a5b3940b0752e9e17c5be60516bdde6cb58700879544c8e48dd3e80`  
		Last Modified: Fri, 16 Mar 2018 01:43:06 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a67f1b36432c09be618b98e844c781a0385b3119543d1f6fd631c2e2601bfa4`  
		Last Modified: Fri, 16 Mar 2018 01:43:08 GMT  
		Size: 14.7 MB (14650440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef9580d08304c9a8585b3e89d6d4d8eee7e8653e0e500ddd8b739b91279f391`  
		Last Modified: Fri, 16 Mar 2018 01:43:05 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afb05ae5ef77f2170a2354d3a4ce2d16f17f14b480bad7c357cd2a17e079f3c`  
		Last Modified: Fri, 16 Mar 2018 01:43:01 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e08c68c7793172fda9909e2c5ff4570dfebebfc330a69be1979aeb0cb2d8c50`  
		Last Modified: Fri, 16 Mar 2018 01:43:14 GMT  
		Size: 59.3 MB (59270805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1524776d7bbf69c28513acaebd67f9ba2d6807077ce723e199acbdd124afc8d`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d1ff2eef5861325ef1690ee8c0f4fefd25516d279f16e396c4196ebb04c26d`  
		Last Modified: Fri, 16 Mar 2018 01:43:04 GMT  
		Size: 2.4 MB (2392398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc245ae560b1686f9c5dc2b2eebe16035fa384876b6729eb991ca1ef2bab6076`  
		Last Modified: Fri, 16 Mar 2018 01:43:19 GMT  
		Size: 79.2 MB (79248212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fb18b24808c017c718c46336ca04788e4022ebacd031592b79fa615f1c2907`  
		Last Modified: Fri, 16 Mar 2018 01:42:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcfa27473aad6d547c0c35fb1506e6d63955810768121dd8d6e3137f1b2ab01`  
		Last Modified: Fri, 16 Mar 2018 01:44:08 GMT  
		Size: 14.5 MB (14491914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f3538a57b74ba7d02e0b1ab6a7118e097ff5139dac9f1b69514b23d57bbb15`  
		Last Modified: Fri, 16 Mar 2018 01:44:03 GMT  
		Size: 4.4 MB (4354724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:45d228acf2e6e0f42b0df3a45be6c3a2ae4fedbd2531c4e903079f644d4d577e
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
$ docker pull redmine@sha256:101108f8e14ffdb58eda52082eb1170ef7c21225a28234bc0ca3b45f39b281ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.1 MB (260109164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f557ec12662cb1b2ccbc12031ac5accac7b3562564dd1ac662c26d8a70315849`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:01:28 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:04:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:04:42 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 00:48:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 00:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:48:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 00:48:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 00:48:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 00:48:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 00:49:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:49:42 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 00:49:43 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Mar 2018 00:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 00:52:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 00:52:36 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 00:52:37 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 00:52:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 00:52:37 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 00:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11be863a5d0ad8d10d8911dbf6b29a4a9e33672ff9ee94114d2c525a6b5cd93`  
		Last Modified: Wed, 14 Mar 2018 20:56:44 GMT  
		Size: 21.3 MB (21275070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1ac0d7045504963750d15c8b27b3e5d9bdead11d46535b9aa1af79358ca366`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414fa21abc62d2105afe9a527f6bc650797f21db1775e80207fcba211f93a06c`  
		Last Modified: Fri, 16 Mar 2018 01:39:21 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c2fe98a1ea9abe38a8b3f3671a0258ec303688ea3c57617520ea113047d790`  
		Last Modified: Fri, 16 Mar 2018 01:39:23 GMT  
		Size: 14.7 MB (14650430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1247165550c8c48efa14e410cd24c12fb01c82e257a2c360c77802c8695d71`  
		Last Modified: Fri, 16 Mar 2018 01:39:18 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5addd8016dbe3ced7eecb54abd829f984e11c643e4663a101d68da6e10b2b7`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 8.5 KB (8502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e0c65b1d34eb0f1008d59074ae239d8a85e2841cf3962273af692d43b9f960`  
		Last Modified: Fri, 16 Mar 2018 01:39:32 GMT  
		Size: 59.3 MB (59270801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293a5004008702ad83edd7f5319168225c0e7424d8e21768f58dbd21232221fc`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d3a509a21c6844ed89cb021d3dcdd26c1f7dff78a13b97a6de38d84a426bd0`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caff02935c779e01b0c7eb1ce5ecc8228a9afbab5572ade0782a4b86ccbe935`  
		Last Modified: Fri, 16 Mar 2018 01:39:41 GMT  
		Size: 99.2 MB (99150771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a898ef6c4de2b6d2f9b89ba04b2d41f710f294cddb91f836d740e6b8cca573b`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:29b82538b7cbc9b06d694498a80ad638e508f325da2c9a2d8367e9316c061e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253408562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97834a6ec48fb16706c0964b817ae62c76d7c94be956f86aa2a620a1d09ac0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:54:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:54:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:54:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:54:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 21:00:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 21:00:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 21:00:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 21:00:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 21:00:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 21:00:24 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 00:22:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 00:22:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:22:34 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:22:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 00:22:41 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 00:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 00:23:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:23:38 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 00:23:38 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 00:23:39 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 00:23:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 00:23:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 00:29:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:29:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 00:29:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 00:29:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 00:29:14 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 00:29:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5473f43f4b59989ac86bfabe67b51edefa4cea3b14253ecfa7eb87fe141c6fdf`  
		Last Modified: Wed, 14 Mar 2018 21:22:45 GMT  
		Size: 9.1 MB (9133325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839ac87b9c320a77dc7a49e28b87c64b9ddfbc570c2bbb0048b0bbf6b6eae293`  
		Last Modified: Wed, 14 Mar 2018 21:22:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc654a792ae0e15452ff96563544505f39a2205ca4efa1e7525c9fa966548e90`  
		Last Modified: Wed, 14 Mar 2018 21:22:48 GMT  
		Size: 21.0 MB (21041111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e05f773d20db3d57a54a6380c00e51585ede9b6a2263dac86d29116e854e4f6`  
		Last Modified: Wed, 14 Mar 2018 21:22:40 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97438663e6af829ec2e11262fa7cb79de8aa6f7dcc78851289a888cb80fce694`  
		Last Modified: Thu, 15 Mar 2018 00:41:28 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add99afd1a8fd045a4c7c693cfeeedc8a930af0af0593f607d9bf07c73c682d4`  
		Last Modified: Thu, 15 Mar 2018 00:41:30 GMT  
		Size: 14.3 MB (14347480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79352480715b9c36fc7e194a030969ddc685bca78c0183a19e3f7c4677bd793b`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f55cba16a4edaa437fc1f10c5936efc58626ec0f7dd6138669f5fec30605e46`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288bae8416a16a76e2bddb78caf60f6908fd9cfd894bd7f89201d7c5ab3ad94b`  
		Last Modified: Thu, 15 Mar 2018 00:41:43 GMT  
		Size: 56.6 MB (56611223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803b65d9214c6a72c7553dd13a606f3014df3142c36c922faf7c14e23b685898`  
		Last Modified: Thu, 15 Mar 2018 00:41:24 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c67d436f570a3efa9ab70f037341e37352c541008dd387c85704993f46c5c8d`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 2.5 MB (2454581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90455565e7ec0e70b3370630915f8629a1f6284f824c973c02a9f1ed0717e11a`  
		Last Modified: Thu, 15 Mar 2018 00:41:50 GMT  
		Size: 98.4 MB (98427407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08799f61d165db5c0edd9358597faac8691368870f2e917e1bd975d89752793f`  
		Last Modified: Thu, 15 Mar 2018 00:41:24 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:a4bb80173ffdf3e38dfd43c321b48cf751b0ce48d69acfcf28372b44de933ed9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247373612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7968db62fd6080bfd7d300fbb2f6b8e66422c838b69bde1fef1b1447d66359`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:17:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:17:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 16:17:11 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 16:17:11 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 16:17:12 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 16:17:12 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 16:17:12 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 16:22:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 16:22:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 16:22:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 16:22:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:22:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 16:22:47 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 19:11:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 19:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:12:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:12:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 19:12:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 19:12:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 19:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:13:16 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 19:13:17 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 19:13:17 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 14 Mar 2018 19:13:18 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 14 Mar 2018 19:13:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 19:18:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:18:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 19:18:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 19:18:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:18:24 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 19:18:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23990e8e0248903864ae0a398aa7696d1f976a252f99c84c8d69f337556d0e`  
		Last Modified: Wed, 14 Mar 2018 17:01:21 GMT  
		Size: 8.8 MB (8785784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c1085b4ef8dafa6f45c42463ec56ae2b446744a75840f17c7609dc7ee71f3`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b74047e0b4ff19a4aee7e14b439a76ee1309df114d001f4ef23b9a2ea22cbc`  
		Last Modified: Wed, 14 Mar 2018 17:01:25 GMT  
		Size: 20.9 MB (20904856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bec4612abc5d5358200933319a6cb460e03a0b6cd089bef37d5aa99657cadc8`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f25e9335e3ad42428904ca33ce2614745f352876d8b9504f3ceacad49e5aea`  
		Last Modified: Wed, 14 Mar 2018 19:30:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8fec847ed59f156468790914c3ce6379452cff9f4a216b37de2014b5d9011a`  
		Last Modified: Wed, 14 Mar 2018 19:30:49 GMT  
		Size: 14.1 MB (14134511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e58090d88f3e9c940fabec6362798754e0ec02bb95ed1edcd45aeae23777432`  
		Last Modified: Wed, 14 Mar 2018 19:30:46 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46ed5354fe9a952b75a70baf9f19c04e5451b3d6c39b504a37015ede7f4189f`  
		Last Modified: Wed, 14 Mar 2018 19:30:44 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260a4bb1bc7da68c5d370c4a3ee9afc18fc4864120dceea9e9a5b76d618d751d`  
		Last Modified: Wed, 14 Mar 2018 19:31:01 GMT  
		Size: 54.3 MB (54344985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c0769da10ffe548069117c2c56e178e2f860886038283f57c24b48d60d7829`  
		Last Modified: Wed, 14 Mar 2018 19:30:43 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b21d2f4adb5d4b16de91c3bb1ff021b22fc405e4ac02c9295a2533de8a9ae7`  
		Last Modified: Wed, 14 Mar 2018 19:30:45 GMT  
		Size: 2.5 MB (2454583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2259d92a9a0d200528263ac5cc0f7b186cb82ef19d426459f7296480216329da`  
		Last Modified: Wed, 14 Mar 2018 19:31:12 GMT  
		Size: 97.6 MB (97559794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9b252c877f726932b7c11620e88a6a7e0b80c55bab42012a79d3e189a0d142`  
		Last Modified: Wed, 14 Mar 2018 19:30:43 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:7c2277b94fa2551bc6ad1c47854e129aaaafbbc85588b0974e832f4688253405
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262753034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e7b0e2162fd45e0a831d7135b541aca39c8ffd2fb2ac0f1372cfc38d822887`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:14:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:14:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 02:54:53 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 02:54:54 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 02:54:55 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 02:54:56 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:54:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 03:03:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 03:04:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 03:04:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 03:04:14 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:40:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:41:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:41:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:41:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:41:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:44:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:44:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:44:21 GMT
WORKDIR /usr/src/redmine
# Tue, 27 Mar 2018 06:39:23 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 27 Mar 2018 06:39:23 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 27 Mar 2018 06:39:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 27 Mar 2018 06:49:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 06:49:21 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 27 Mar 2018 06:49:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 27 Mar 2018 06:49:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Mar 2018 06:49:23 GMT
EXPOSE 3000/tcp
# Tue, 27 Mar 2018 06:49:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b30c443a726219f9a82d88f1e1ba423ef88ef65ed6d12a2c1783c3493cac32`  
		Last Modified: Thu, 15 Mar 2018 03:11:46 GMT  
		Size: 9.4 MB (9355446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c823d913ce2f2a0777694502700425539459c44639c06e22be6ad8313114581e`  
		Last Modified: Thu, 15 Mar 2018 03:11:43 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db17c7fe59df01368666bef8ea8ff426e373acd16e51be5f87ee72fa36976`  
		Last Modified: Thu, 15 Mar 2018 03:16:42 GMT  
		Size: 32.0 MB (32001648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc26c2dbd11a07ee95a3c90fb357dda8ac68ad0e0742b1c2f294155d7284604`  
		Last Modified: Thu, 15 Mar 2018 03:16:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7cf95a58f2304fe4bb2275687c85563566c8f01e3c6306ea017a26cb8ce73`  
		Last Modified: Thu, 15 Mar 2018 11:09:06 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c71a81cfaeeeeeac082a126616814d1ced622aeb7986c3e157add87e81dd49`  
		Last Modified: Thu, 15 Mar 2018 11:09:10 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d1bd0bfa740365a7652f1fdaa31da0efab7510e647fdf6e35ef30adf7b315`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17607dfcc9bbfa72668dd5996fbfdad94c40f708a979f82a955a4548c2188a23`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167540bbef4c1e01c792375ce0275b83d7fad9a274e27588384e90ff8c302f23`  
		Last Modified: Thu, 15 Mar 2018 11:09:23 GMT  
		Size: 55.8 MB (55794788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55705345ace9c0efecec54fccfc9da2748f2199bbc8b2b60a50ca38d5f04132a`  
		Last Modified: Thu, 15 Mar 2018 11:09:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1ba2d61a7f49a87cbb6c4c94cdb365910697f08c51221d648c0e160e692713`  
		Last Modified: Tue, 27 Mar 2018 06:50:06 GMT  
		Size: 2.5 MB (2454056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf307b6651afeb2884c3940eff8603c1562c7ae921062c74ae1439b97ea12f0b`  
		Last Modified: Tue, 27 Mar 2018 06:50:35 GMT  
		Size: 98.3 MB (98269461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9deb9243eba161c8da7d07ca74291d8f682343850fededf204f0d9acbb9baf31`  
		Last Modified: Tue, 27 Mar 2018 06:50:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:7e4cc84ec386553f24f2e4a64c6a57d046bdc51f41a2d4ad154ebcef5c86f957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263539558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1338a26b45ae30284b98988886c84fe18c530b7b684683c21980a9b2e39f57`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 20:08:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 20:08:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Feb 2018 20:08:16 GMT
ENV RUBY_MAJOR=2.4
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBY_VERSION=2.4.3
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 20 Feb 2018 20:08:18 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 20 Feb 2018 20:12:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 20 Feb 2018 20:12:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Feb 2018 20:12:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Feb 2018 20:12:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Feb 2018 20:12:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Feb 2018 20:12:39 GMT
CMD ["irb"]
# Wed, 21 Feb 2018 22:01:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 21 Feb 2018 22:01:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:01:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 22:01:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 21 Feb 2018 22:01:43 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 21 Feb 2018 22:01:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 21 Feb 2018 22:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:02:52 GMT
ENV RAILS_ENV=production
# Wed, 21 Feb 2018 22:02:52 GMT
WORKDIR /usr/src/redmine
# Wed, 21 Feb 2018 22:02:52 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 21 Feb 2018 22:02:53 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 21 Feb 2018 22:02:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 21 Feb 2018 22:06:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 22:06:47 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 21 Feb 2018 22:06:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 21 Feb 2018 22:06:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 22:06:48 GMT
EXPOSE 3000/tcp
# Wed, 21 Feb 2018 22:06:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e7541c989a1ffd223b6a8463f58c88f7627776091817578afe8d24f6713163`  
		Last Modified: Tue, 20 Feb 2018 21:01:28 GMT  
		Size: 14.6 MB (14649460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc8420509b19e956e958680ffe2f7f4c09ed11ed67c784ee733722e5f1bcda4`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a336b4cf83effe213c9513dc62dc507164f002be0c746c3ae443d32ec5c08274`  
		Last Modified: Tue, 20 Feb 2018 21:01:32 GMT  
		Size: 20.9 MB (20873412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff49714f4598c7fd43352e341ed2ad7fb6b132fb88e87abf439f0d7e6e0bb730`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff58c38e34376ca5f43f926a80d6a160912f28248b44bd7949a75e1379b58e0f`  
		Last Modified: Wed, 21 Feb 2018 22:55:38 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b065e24e10bb212d7c2d0dd77023bdd273a4a8cfcf9792ef2d533b95b3101`  
		Last Modified: Wed, 21 Feb 2018 22:55:40 GMT  
		Size: 14.8 MB (14817924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebafef79eba0f1172935873ee0bee42d5acf1556fb035b993398508c2f610b3e`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4c290277408557ab8c2f7b382852168ef6e13767856490ffa341f65e20ba10`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9617544ef6bf1178537db732c2e715b2addcd63ab3c7e8c5865d8a6c2fab6fd9`  
		Last Modified: Wed, 21 Feb 2018 22:56:01 GMT  
		Size: 60.1 MB (60147220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98253cd131cbb7575bb4ad97f1202a6bace3759023086e83a3a33cfe6e7a9e4f`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14db4c6c12640a7c6f63c9cb46be4a93c4c3a7ddbe7ec5376171dfbba1ae306a`  
		Last Modified: Wed, 21 Feb 2018 22:55:41 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698ffcc65f9995ad2adb7108cb223cbf3882d848bd92fe099c8db433593b33dc`  
		Last Modified: Wed, 21 Feb 2018 22:56:11 GMT  
		Size: 97.3 MB (97316259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c551f66e7238676a8c34c5a5b1957529ff431567871ec9ab57ff22623a71b600`  
		Last Modified: Wed, 21 Feb 2018 22:55:34 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:5138a84ad71a1d7ecc799dceedce798f81d1738fa7dc2ab980eb3e03708496c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259277163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55250509bf86610e77652aec5a4759aa4c2987cdbf13087c41021bb61bbaf7ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 05:26:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:26:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 05:26:12 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Mar 2018 05:26:15 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Mar 2018 05:26:17 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Mar 2018 05:26:20 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 05:26:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 05:38:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 05:38:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 05:38:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 05:38:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:38:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 05:38:59 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 12:20:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 12:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:22:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 12:22:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 12:23:00 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 12:23:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 12:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:28:12 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 12:28:14 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 12:28:16 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 12:28:18 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 12:28:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 12:47:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 12:47:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 12:47:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 12:48:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 12:48:04 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 12:48:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a59806018a3029eff71af8a8ee62fff9594b37160fc7cdefb70a2b597db27d`  
		Last Modified: Thu, 15 Mar 2018 06:36:53 GMT  
		Size: 10.2 MB (10157352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080a6f8f48e24550cb5573b4e6130addc9c1ea2820df46ba5efa3a3f93b0a33b`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41451a6818dfda69131a624873eedfdd48fb499463c3caaacd4bbfef80096912`  
		Last Modified: Thu, 15 Mar 2018 06:36:57 GMT  
		Size: 21.7 MB (21721226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8c486c3e2be30bb00d168fd8c6e8c754e8652a3fa891d350aa0be380bb3d81`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d7b95ef19c6bbf2adef7f5ba2dca5585017a0d1f19de9c8aab9404551935f1`  
		Last Modified: Thu, 15 Mar 2018 13:33:43 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9836e940badebaf9828214a12d26902f30569fbc08b40c04b99eb3129ed376`  
		Last Modified: Thu, 15 Mar 2018 13:33:46 GMT  
		Size: 14.7 MB (14720582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6254f2e4c9f4c090d766ccb5b2cd8ce03e81bafe16935bac417df2d5f93d09`  
		Last Modified: Thu, 15 Mar 2018 13:33:41 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8b30169a991555121c04e2c44c7f338a1c579546238763b1bf809986007ad`  
		Last Modified: Thu, 15 Mar 2018 13:33:40 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a9afdbe3b774348c70b85ee4d3f2a49bbb5c76f749e91ce23c3b5955c569c3`  
		Last Modified: Thu, 15 Mar 2018 13:33:53 GMT  
		Size: 58.1 MB (58133424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f2f01e5a374520c6e7c2225ec79b7f4f57cbff097d3a87d84a2905cda66b09`  
		Last Modified: Thu, 15 Mar 2018 13:33:38 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e163cf3e4893d610177b27cea56b6dab27a9435c7336459f94e8e5190b0a26a3`  
		Last Modified: Thu, 15 Mar 2018 13:33:40 GMT  
		Size: 2.5 MB (2454581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608db9ca25f65e2f67a422404402ba1857f8d2511526952109b62805692a7102`  
		Last Modified: Thu, 15 Mar 2018 13:34:01 GMT  
		Size: 99.8 MB (99789871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090101f19b60a483ae03ed1c8a1849fe265cff937a88381e1a413e89ae817d7c`  
		Last Modified: Thu, 15 Mar 2018 13:33:37 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:33a750f8a6d2befc4b752f8b917c8b5e8ffce141a67d56b5c94a88ac4d696f3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264201086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd460976a3861b79e220f431bf8e20f7a30c7675ad59b1be6649480480374686`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:53:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:53:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 07:53:11 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 07:53:12 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 07:56:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 07:56:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 07:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 07:56:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 07:56:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 07:56:38 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 12:08:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 12:08:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:08:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 12:08:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 12:08:54 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 12:08:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 12:09:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:09:24 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 12:09:24 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 12:09:24 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 14 Mar 2018 12:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 14 Mar 2018 12:09:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 12:12:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 12:12:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 12:12:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 12:12:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:12:05 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 12:12:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d3f3fd31e1f3273c5e5d559174055bac89b7a56b71a9eb8417d7125c175d8`  
		Last Modified: Wed, 14 Mar 2018 08:17:52 GMT  
		Size: 10.0 MB (9980125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c861533f4537bbc274ae2279a3536a1a9b4eac8116db94d080fd03eeac81dd1`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea80bc9bd1b49b1ead6705fe8aeaac188b2802cb33349aad8f3198295ebedd83`  
		Last Modified: Wed, 14 Mar 2018 08:17:55 GMT  
		Size: 21.7 MB (21675090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f0818baeecad8da15e86c245534bbecbcb65cb876a11683ec52bdcd03e3a43`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c32fc953f4fdd8dac7958b8eee07eaa8b3bb1ed29485709f98b8a7c903444f`  
		Last Modified: Wed, 14 Mar 2018 12:18:33 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa3f49b4788da6a14f1f170a148d8368742848357c8f207fd966f3057dd09ee`  
		Last Modified: Wed, 14 Mar 2018 12:18:36 GMT  
		Size: 14.8 MB (14815092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a6a7d6105dc70a67089efcdfcdbd83f67ea58724b4cdc338f720c39bf4066f`  
		Last Modified: Wed, 14 Mar 2018 12:18:34 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a955079df70db910f9cb0cca672dd8c03f01b6c590d4800b97bed2562bd7b690`  
		Last Modified: Wed, 14 Mar 2018 12:18:32 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168303f3df6476d70779804d61ec357cb7dbe7b40b63a3460571b46a51a1f2c6`  
		Last Modified: Wed, 14 Mar 2018 12:18:42 GMT  
		Size: 59.1 MB (59109967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924d7afe4ac8d7b445733407367a7171c9ca69ad38b038fac082f66c4dd0db91`  
		Last Modified: Wed, 14 Mar 2018 12:18:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed94a2f4203afed89a006ccd067f4d6ee8d4081f61f8ced8a1753be244e01fb`  
		Last Modified: Wed, 14 Mar 2018 12:18:31 GMT  
		Size: 2.5 MB (2454046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b145aeed197763d74095dd7e74e6504a43f3bbb48473286ad242ece70b384409`  
		Last Modified: Wed, 14 Mar 2018 12:18:47 GMT  
		Size: 102.9 MB (102871450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa75a2db4eb8f106f504e4048e2c2a8f82ef949eb063b04b931d00b045eeebfe`  
		Last Modified: Wed, 14 Mar 2018 12:18:31 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.4`

```console
$ docker pull redmine@sha256:45d228acf2e6e0f42b0df3a45be6c3a2ae4fedbd2531c4e903079f644d4d577e
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
$ docker pull redmine@sha256:101108f8e14ffdb58eda52082eb1170ef7c21225a28234bc0ca3b45f39b281ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.1 MB (260109164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f557ec12662cb1b2ccbc12031ac5accac7b3562564dd1ac662c26d8a70315849`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:01:28 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:04:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:04:42 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 00:48:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 00:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:48:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 00:48:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 00:48:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 00:48:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 00:49:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:49:42 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 00:49:43 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Mar 2018 00:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 00:52:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 00:52:36 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 00:52:37 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 00:52:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 00:52:37 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 00:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11be863a5d0ad8d10d8911dbf6b29a4a9e33672ff9ee94114d2c525a6b5cd93`  
		Last Modified: Wed, 14 Mar 2018 20:56:44 GMT  
		Size: 21.3 MB (21275070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1ac0d7045504963750d15c8b27b3e5d9bdead11d46535b9aa1af79358ca366`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414fa21abc62d2105afe9a527f6bc650797f21db1775e80207fcba211f93a06c`  
		Last Modified: Fri, 16 Mar 2018 01:39:21 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c2fe98a1ea9abe38a8b3f3671a0258ec303688ea3c57617520ea113047d790`  
		Last Modified: Fri, 16 Mar 2018 01:39:23 GMT  
		Size: 14.7 MB (14650430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1247165550c8c48efa14e410cd24c12fb01c82e257a2c360c77802c8695d71`  
		Last Modified: Fri, 16 Mar 2018 01:39:18 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5addd8016dbe3ced7eecb54abd829f984e11c643e4663a101d68da6e10b2b7`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 8.5 KB (8502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e0c65b1d34eb0f1008d59074ae239d8a85e2841cf3962273af692d43b9f960`  
		Last Modified: Fri, 16 Mar 2018 01:39:32 GMT  
		Size: 59.3 MB (59270801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293a5004008702ad83edd7f5319168225c0e7424d8e21768f58dbd21232221fc`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d3a509a21c6844ed89cb021d3dcdd26c1f7dff78a13b97a6de38d84a426bd0`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caff02935c779e01b0c7eb1ce5ecc8228a9afbab5572ade0782a4b86ccbe935`  
		Last Modified: Fri, 16 Mar 2018 01:39:41 GMT  
		Size: 99.2 MB (99150771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a898ef6c4de2b6d2f9b89ba04b2d41f710f294cddb91f836d740e6b8cca573b`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:29b82538b7cbc9b06d694498a80ad638e508f325da2c9a2d8367e9316c061e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253408562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97834a6ec48fb16706c0964b817ae62c76d7c94be956f86aa2a620a1d09ac0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:54:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:54:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:54:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:54:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 21:00:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 21:00:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 21:00:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 21:00:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 21:00:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 21:00:24 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 00:22:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 00:22:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:22:34 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:22:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 00:22:41 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 00:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 00:23:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:23:38 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 00:23:38 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 00:23:39 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 00:23:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 00:23:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 00:29:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:29:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 00:29:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 00:29:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 00:29:14 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 00:29:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5473f43f4b59989ac86bfabe67b51edefa4cea3b14253ecfa7eb87fe141c6fdf`  
		Last Modified: Wed, 14 Mar 2018 21:22:45 GMT  
		Size: 9.1 MB (9133325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839ac87b9c320a77dc7a49e28b87c64b9ddfbc570c2bbb0048b0bbf6b6eae293`  
		Last Modified: Wed, 14 Mar 2018 21:22:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc654a792ae0e15452ff96563544505f39a2205ca4efa1e7525c9fa966548e90`  
		Last Modified: Wed, 14 Mar 2018 21:22:48 GMT  
		Size: 21.0 MB (21041111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e05f773d20db3d57a54a6380c00e51585ede9b6a2263dac86d29116e854e4f6`  
		Last Modified: Wed, 14 Mar 2018 21:22:40 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97438663e6af829ec2e11262fa7cb79de8aa6f7dcc78851289a888cb80fce694`  
		Last Modified: Thu, 15 Mar 2018 00:41:28 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add99afd1a8fd045a4c7c693cfeeedc8a930af0af0593f607d9bf07c73c682d4`  
		Last Modified: Thu, 15 Mar 2018 00:41:30 GMT  
		Size: 14.3 MB (14347480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79352480715b9c36fc7e194a030969ddc685bca78c0183a19e3f7c4677bd793b`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f55cba16a4edaa437fc1f10c5936efc58626ec0f7dd6138669f5fec30605e46`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288bae8416a16a76e2bddb78caf60f6908fd9cfd894bd7f89201d7c5ab3ad94b`  
		Last Modified: Thu, 15 Mar 2018 00:41:43 GMT  
		Size: 56.6 MB (56611223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803b65d9214c6a72c7553dd13a606f3014df3142c36c922faf7c14e23b685898`  
		Last Modified: Thu, 15 Mar 2018 00:41:24 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c67d436f570a3efa9ab70f037341e37352c541008dd387c85704993f46c5c8d`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 2.5 MB (2454581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90455565e7ec0e70b3370630915f8629a1f6284f824c973c02a9f1ed0717e11a`  
		Last Modified: Thu, 15 Mar 2018 00:41:50 GMT  
		Size: 98.4 MB (98427407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08799f61d165db5c0edd9358597faac8691368870f2e917e1bd975d89752793f`  
		Last Modified: Thu, 15 Mar 2018 00:41:24 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:a4bb80173ffdf3e38dfd43c321b48cf751b0ce48d69acfcf28372b44de933ed9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247373612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7968db62fd6080bfd7d300fbb2f6b8e66422c838b69bde1fef1b1447d66359`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:17:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:17:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 16:17:11 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 16:17:11 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 16:17:12 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 16:17:12 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 16:17:12 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 16:22:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 16:22:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 16:22:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 16:22:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:22:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 16:22:47 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 19:11:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 19:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:12:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:12:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 19:12:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 19:12:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 19:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:13:16 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 19:13:17 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 19:13:17 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 14 Mar 2018 19:13:18 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 14 Mar 2018 19:13:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 19:18:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:18:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 19:18:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 19:18:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:18:24 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 19:18:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23990e8e0248903864ae0a398aa7696d1f976a252f99c84c8d69f337556d0e`  
		Last Modified: Wed, 14 Mar 2018 17:01:21 GMT  
		Size: 8.8 MB (8785784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c1085b4ef8dafa6f45c42463ec56ae2b446744a75840f17c7609dc7ee71f3`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b74047e0b4ff19a4aee7e14b439a76ee1309df114d001f4ef23b9a2ea22cbc`  
		Last Modified: Wed, 14 Mar 2018 17:01:25 GMT  
		Size: 20.9 MB (20904856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bec4612abc5d5358200933319a6cb460e03a0b6cd089bef37d5aa99657cadc8`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f25e9335e3ad42428904ca33ce2614745f352876d8b9504f3ceacad49e5aea`  
		Last Modified: Wed, 14 Mar 2018 19:30:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8fec847ed59f156468790914c3ce6379452cff9f4a216b37de2014b5d9011a`  
		Last Modified: Wed, 14 Mar 2018 19:30:49 GMT  
		Size: 14.1 MB (14134511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e58090d88f3e9c940fabec6362798754e0ec02bb95ed1edcd45aeae23777432`  
		Last Modified: Wed, 14 Mar 2018 19:30:46 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46ed5354fe9a952b75a70baf9f19c04e5451b3d6c39b504a37015ede7f4189f`  
		Last Modified: Wed, 14 Mar 2018 19:30:44 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260a4bb1bc7da68c5d370c4a3ee9afc18fc4864120dceea9e9a5b76d618d751d`  
		Last Modified: Wed, 14 Mar 2018 19:31:01 GMT  
		Size: 54.3 MB (54344985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c0769da10ffe548069117c2c56e178e2f860886038283f57c24b48d60d7829`  
		Last Modified: Wed, 14 Mar 2018 19:30:43 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b21d2f4adb5d4b16de91c3bb1ff021b22fc405e4ac02c9295a2533de8a9ae7`  
		Last Modified: Wed, 14 Mar 2018 19:30:45 GMT  
		Size: 2.5 MB (2454583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2259d92a9a0d200528263ac5cc0f7b186cb82ef19d426459f7296480216329da`  
		Last Modified: Wed, 14 Mar 2018 19:31:12 GMT  
		Size: 97.6 MB (97559794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9b252c877f726932b7c11620e88a6a7e0b80c55bab42012a79d3e189a0d142`  
		Last Modified: Wed, 14 Mar 2018 19:30:43 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:7c2277b94fa2551bc6ad1c47854e129aaaafbbc85588b0974e832f4688253405
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262753034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e7b0e2162fd45e0a831d7135b541aca39c8ffd2fb2ac0f1372cfc38d822887`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:14:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:14:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 02:54:53 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 02:54:54 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 02:54:55 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 02:54:56 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:54:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 03:03:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 03:04:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 03:04:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 03:04:14 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:40:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:41:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:41:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:41:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:41:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:44:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:44:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:44:21 GMT
WORKDIR /usr/src/redmine
# Tue, 27 Mar 2018 06:39:23 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 27 Mar 2018 06:39:23 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 27 Mar 2018 06:39:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 27 Mar 2018 06:49:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 06:49:21 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 27 Mar 2018 06:49:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 27 Mar 2018 06:49:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Mar 2018 06:49:23 GMT
EXPOSE 3000/tcp
# Tue, 27 Mar 2018 06:49:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b30c443a726219f9a82d88f1e1ba423ef88ef65ed6d12a2c1783c3493cac32`  
		Last Modified: Thu, 15 Mar 2018 03:11:46 GMT  
		Size: 9.4 MB (9355446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c823d913ce2f2a0777694502700425539459c44639c06e22be6ad8313114581e`  
		Last Modified: Thu, 15 Mar 2018 03:11:43 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db17c7fe59df01368666bef8ea8ff426e373acd16e51be5f87ee72fa36976`  
		Last Modified: Thu, 15 Mar 2018 03:16:42 GMT  
		Size: 32.0 MB (32001648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc26c2dbd11a07ee95a3c90fb357dda8ac68ad0e0742b1c2f294155d7284604`  
		Last Modified: Thu, 15 Mar 2018 03:16:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7cf95a58f2304fe4bb2275687c85563566c8f01e3c6306ea017a26cb8ce73`  
		Last Modified: Thu, 15 Mar 2018 11:09:06 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c71a81cfaeeeeeac082a126616814d1ced622aeb7986c3e157add87e81dd49`  
		Last Modified: Thu, 15 Mar 2018 11:09:10 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d1bd0bfa740365a7652f1fdaa31da0efab7510e647fdf6e35ef30adf7b315`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17607dfcc9bbfa72668dd5996fbfdad94c40f708a979f82a955a4548c2188a23`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167540bbef4c1e01c792375ce0275b83d7fad9a274e27588384e90ff8c302f23`  
		Last Modified: Thu, 15 Mar 2018 11:09:23 GMT  
		Size: 55.8 MB (55794788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55705345ace9c0efecec54fccfc9da2748f2199bbc8b2b60a50ca38d5f04132a`  
		Last Modified: Thu, 15 Mar 2018 11:09:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1ba2d61a7f49a87cbb6c4c94cdb365910697f08c51221d648c0e160e692713`  
		Last Modified: Tue, 27 Mar 2018 06:50:06 GMT  
		Size: 2.5 MB (2454056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf307b6651afeb2884c3940eff8603c1562c7ae921062c74ae1439b97ea12f0b`  
		Last Modified: Tue, 27 Mar 2018 06:50:35 GMT  
		Size: 98.3 MB (98269461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9deb9243eba161c8da7d07ca74291d8f682343850fededf204f0d9acbb9baf31`  
		Last Modified: Tue, 27 Mar 2018 06:50:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; 386

```console
$ docker pull redmine@sha256:7e4cc84ec386553f24f2e4a64c6a57d046bdc51f41a2d4ad154ebcef5c86f957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263539558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1338a26b45ae30284b98988886c84fe18c530b7b684683c21980a9b2e39f57`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 20:08:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 20:08:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Feb 2018 20:08:16 GMT
ENV RUBY_MAJOR=2.4
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBY_VERSION=2.4.3
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 20 Feb 2018 20:08:18 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 20 Feb 2018 20:12:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 20 Feb 2018 20:12:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Feb 2018 20:12:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Feb 2018 20:12:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Feb 2018 20:12:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Feb 2018 20:12:39 GMT
CMD ["irb"]
# Wed, 21 Feb 2018 22:01:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 21 Feb 2018 22:01:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:01:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 22:01:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 21 Feb 2018 22:01:43 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 21 Feb 2018 22:01:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 21 Feb 2018 22:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:02:52 GMT
ENV RAILS_ENV=production
# Wed, 21 Feb 2018 22:02:52 GMT
WORKDIR /usr/src/redmine
# Wed, 21 Feb 2018 22:02:52 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 21 Feb 2018 22:02:53 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 21 Feb 2018 22:02:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 21 Feb 2018 22:06:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 22:06:47 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 21 Feb 2018 22:06:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 21 Feb 2018 22:06:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 22:06:48 GMT
EXPOSE 3000/tcp
# Wed, 21 Feb 2018 22:06:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e7541c989a1ffd223b6a8463f58c88f7627776091817578afe8d24f6713163`  
		Last Modified: Tue, 20 Feb 2018 21:01:28 GMT  
		Size: 14.6 MB (14649460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc8420509b19e956e958680ffe2f7f4c09ed11ed67c784ee733722e5f1bcda4`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a336b4cf83effe213c9513dc62dc507164f002be0c746c3ae443d32ec5c08274`  
		Last Modified: Tue, 20 Feb 2018 21:01:32 GMT  
		Size: 20.9 MB (20873412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff49714f4598c7fd43352e341ed2ad7fb6b132fb88e87abf439f0d7e6e0bb730`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff58c38e34376ca5f43f926a80d6a160912f28248b44bd7949a75e1379b58e0f`  
		Last Modified: Wed, 21 Feb 2018 22:55:38 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b065e24e10bb212d7c2d0dd77023bdd273a4a8cfcf9792ef2d533b95b3101`  
		Last Modified: Wed, 21 Feb 2018 22:55:40 GMT  
		Size: 14.8 MB (14817924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebafef79eba0f1172935873ee0bee42d5acf1556fb035b993398508c2f610b3e`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4c290277408557ab8c2f7b382852168ef6e13767856490ffa341f65e20ba10`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9617544ef6bf1178537db732c2e715b2addcd63ab3c7e8c5865d8a6c2fab6fd9`  
		Last Modified: Wed, 21 Feb 2018 22:56:01 GMT  
		Size: 60.1 MB (60147220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98253cd131cbb7575bb4ad97f1202a6bace3759023086e83a3a33cfe6e7a9e4f`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14db4c6c12640a7c6f63c9cb46be4a93c4c3a7ddbe7ec5376171dfbba1ae306a`  
		Last Modified: Wed, 21 Feb 2018 22:55:41 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698ffcc65f9995ad2adb7108cb223cbf3882d848bd92fe099c8db433593b33dc`  
		Last Modified: Wed, 21 Feb 2018 22:56:11 GMT  
		Size: 97.3 MB (97316259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c551f66e7238676a8c34c5a5b1957529ff431567871ec9ab57ff22623a71b600`  
		Last Modified: Wed, 21 Feb 2018 22:55:34 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:5138a84ad71a1d7ecc799dceedce798f81d1738fa7dc2ab980eb3e03708496c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259277163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55250509bf86610e77652aec5a4759aa4c2987cdbf13087c41021bb61bbaf7ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 05:26:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:26:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 05:26:12 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Mar 2018 05:26:15 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Mar 2018 05:26:17 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Mar 2018 05:26:20 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 05:26:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 05:38:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 05:38:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 05:38:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 05:38:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:38:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 05:38:59 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 12:20:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 12:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:22:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 12:22:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 12:23:00 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 12:23:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 12:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:28:12 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 12:28:14 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 12:28:16 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 12:28:18 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 12:28:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 12:47:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 12:47:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 12:47:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 12:48:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 12:48:04 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 12:48:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a59806018a3029eff71af8a8ee62fff9594b37160fc7cdefb70a2b597db27d`  
		Last Modified: Thu, 15 Mar 2018 06:36:53 GMT  
		Size: 10.2 MB (10157352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080a6f8f48e24550cb5573b4e6130addc9c1ea2820df46ba5efa3a3f93b0a33b`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41451a6818dfda69131a624873eedfdd48fb499463c3caaacd4bbfef80096912`  
		Last Modified: Thu, 15 Mar 2018 06:36:57 GMT  
		Size: 21.7 MB (21721226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8c486c3e2be30bb00d168fd8c6e8c754e8652a3fa891d350aa0be380bb3d81`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d7b95ef19c6bbf2adef7f5ba2dca5585017a0d1f19de9c8aab9404551935f1`  
		Last Modified: Thu, 15 Mar 2018 13:33:43 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9836e940badebaf9828214a12d26902f30569fbc08b40c04b99eb3129ed376`  
		Last Modified: Thu, 15 Mar 2018 13:33:46 GMT  
		Size: 14.7 MB (14720582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6254f2e4c9f4c090d766ccb5b2cd8ce03e81bafe16935bac417df2d5f93d09`  
		Last Modified: Thu, 15 Mar 2018 13:33:41 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8b30169a991555121c04e2c44c7f338a1c579546238763b1bf809986007ad`  
		Last Modified: Thu, 15 Mar 2018 13:33:40 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a9afdbe3b774348c70b85ee4d3f2a49bbb5c76f749e91ce23c3b5955c569c3`  
		Last Modified: Thu, 15 Mar 2018 13:33:53 GMT  
		Size: 58.1 MB (58133424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f2f01e5a374520c6e7c2225ec79b7f4f57cbff097d3a87d84a2905cda66b09`  
		Last Modified: Thu, 15 Mar 2018 13:33:38 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e163cf3e4893d610177b27cea56b6dab27a9435c7336459f94e8e5190b0a26a3`  
		Last Modified: Thu, 15 Mar 2018 13:33:40 GMT  
		Size: 2.5 MB (2454581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608db9ca25f65e2f67a422404402ba1857f8d2511526952109b62805692a7102`  
		Last Modified: Thu, 15 Mar 2018 13:34:01 GMT  
		Size: 99.8 MB (99789871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090101f19b60a483ae03ed1c8a1849fe265cff937a88381e1a413e89ae817d7c`  
		Last Modified: Thu, 15 Mar 2018 13:33:37 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; s390x

```console
$ docker pull redmine@sha256:33a750f8a6d2befc4b752f8b917c8b5e8ffce141a67d56b5c94a88ac4d696f3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264201086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd460976a3861b79e220f431bf8e20f7a30c7675ad59b1be6649480480374686`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:53:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:53:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 07:53:11 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 07:53:12 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 07:56:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 07:56:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 07:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 07:56:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 07:56:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 07:56:38 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 12:08:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 12:08:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:08:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 12:08:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 12:08:54 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 12:08:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 12:09:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:09:24 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 12:09:24 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 12:09:24 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 14 Mar 2018 12:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 14 Mar 2018 12:09:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 12:12:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 12:12:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 12:12:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 12:12:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:12:05 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 12:12:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d3f3fd31e1f3273c5e5d559174055bac89b7a56b71a9eb8417d7125c175d8`  
		Last Modified: Wed, 14 Mar 2018 08:17:52 GMT  
		Size: 10.0 MB (9980125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c861533f4537bbc274ae2279a3536a1a9b4eac8116db94d080fd03eeac81dd1`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea80bc9bd1b49b1ead6705fe8aeaac188b2802cb33349aad8f3198295ebedd83`  
		Last Modified: Wed, 14 Mar 2018 08:17:55 GMT  
		Size: 21.7 MB (21675090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f0818baeecad8da15e86c245534bbecbcb65cb876a11683ec52bdcd03e3a43`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c32fc953f4fdd8dac7958b8eee07eaa8b3bb1ed29485709f98b8a7c903444f`  
		Last Modified: Wed, 14 Mar 2018 12:18:33 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa3f49b4788da6a14f1f170a148d8368742848357c8f207fd966f3057dd09ee`  
		Last Modified: Wed, 14 Mar 2018 12:18:36 GMT  
		Size: 14.8 MB (14815092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a6a7d6105dc70a67089efcdfcdbd83f67ea58724b4cdc338f720c39bf4066f`  
		Last Modified: Wed, 14 Mar 2018 12:18:34 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a955079df70db910f9cb0cca672dd8c03f01b6c590d4800b97bed2562bd7b690`  
		Last Modified: Wed, 14 Mar 2018 12:18:32 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168303f3df6476d70779804d61ec357cb7dbe7b40b63a3460571b46a51a1f2c6`  
		Last Modified: Wed, 14 Mar 2018 12:18:42 GMT  
		Size: 59.1 MB (59109967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924d7afe4ac8d7b445733407367a7171c9ca69ad38b038fac082f66c4dd0db91`  
		Last Modified: Wed, 14 Mar 2018 12:18:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed94a2f4203afed89a006ccd067f4d6ee8d4081f61f8ced8a1753be244e01fb`  
		Last Modified: Wed, 14 Mar 2018 12:18:31 GMT  
		Size: 2.5 MB (2454046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b145aeed197763d74095dd7e74e6504a43f3bbb48473286ad242ece70b384409`  
		Last Modified: Wed, 14 Mar 2018 12:18:47 GMT  
		Size: 102.9 MB (102871450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa75a2db4eb8f106f504e4048e2c2a8f82ef949eb063b04b931d00b045eeebfe`  
		Last Modified: Wed, 14 Mar 2018 12:18:31 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.4-passenger`

```console
$ docker pull redmine@sha256:13731b44ae5669bb72905276b7b21cdf39e106d997cc4c059352e7c1d5064396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:1d2a0d816c0b24fe4c55de6455547ed96cc18f45e55c9965359b644c44005b76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278955346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df864b80fc74eacd8586fa3e3546ecb1ca01d4250eb19c5541e8957a11664450`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:01:28 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:04:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:04:42 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 00:48:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 00:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:48:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 00:48:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 00:48:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 00:48:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 00:49:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:49:42 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 00:49:43 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Mar 2018 00:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 00:52:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 00:52:36 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 00:52:37 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 00:52:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 00:52:37 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 00:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Mar 2018 01:07:14 GMT
ENV PASSENGER_VERSION=5.2.1
# Fri, 16 Mar 2018 01:07:43 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:07:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 16 Mar 2018 01:07:44 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11be863a5d0ad8d10d8911dbf6b29a4a9e33672ff9ee94114d2c525a6b5cd93`  
		Last Modified: Wed, 14 Mar 2018 20:56:44 GMT  
		Size: 21.3 MB (21275070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1ac0d7045504963750d15c8b27b3e5d9bdead11d46535b9aa1af79358ca366`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414fa21abc62d2105afe9a527f6bc650797f21db1775e80207fcba211f93a06c`  
		Last Modified: Fri, 16 Mar 2018 01:39:21 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c2fe98a1ea9abe38a8b3f3671a0258ec303688ea3c57617520ea113047d790`  
		Last Modified: Fri, 16 Mar 2018 01:39:23 GMT  
		Size: 14.7 MB (14650430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1247165550c8c48efa14e410cd24c12fb01c82e257a2c360c77802c8695d71`  
		Last Modified: Fri, 16 Mar 2018 01:39:18 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5addd8016dbe3ced7eecb54abd829f984e11c643e4663a101d68da6e10b2b7`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 8.5 KB (8502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e0c65b1d34eb0f1008d59074ae239d8a85e2841cf3962273af692d43b9f960`  
		Last Modified: Fri, 16 Mar 2018 01:39:32 GMT  
		Size: 59.3 MB (59270801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293a5004008702ad83edd7f5319168225c0e7424d8e21768f58dbd21232221fc`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d3a509a21c6844ed89cb021d3dcdd26c1f7dff78a13b97a6de38d84a426bd0`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caff02935c779e01b0c7eb1ce5ecc8228a9afbab5572ade0782a4b86ccbe935`  
		Last Modified: Fri, 16 Mar 2018 01:39:41 GMT  
		Size: 99.2 MB (99150771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a898ef6c4de2b6d2f9b89ba04b2d41f710f294cddb91f836d740e6b8cca573b`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8ea064f1998607fa865a01afc9e91a07b5be726b88f5448808539535ed6c3`  
		Last Modified: Fri, 16 Mar 2018 01:41:29 GMT  
		Size: 14.5 MB (14491460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e21a1ac9e05c2302bb5e53013dd9d2198e4209fa1071e9a44b2fa4fe8443240`  
		Last Modified: Fri, 16 Mar 2018 01:41:25 GMT  
		Size: 4.4 MB (4354722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:13731b44ae5669bb72905276b7b21cdf39e106d997cc4c059352e7c1d5064396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:1d2a0d816c0b24fe4c55de6455547ed96cc18f45e55c9965359b644c44005b76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278955346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df864b80fc74eacd8586fa3e3546ecb1ca01d4250eb19c5541e8957a11664450`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:01:28 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:04:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:04:42 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 00:48:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 00:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:48:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 00:48:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 00:48:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 00:48:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 00:49:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:49:42 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 00:49:43 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Mar 2018 00:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 00:52:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 00:52:36 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 00:52:37 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 00:52:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 00:52:37 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 00:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Mar 2018 01:07:14 GMT
ENV PASSENGER_VERSION=5.2.1
# Fri, 16 Mar 2018 01:07:43 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:07:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 16 Mar 2018 01:07:44 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11be863a5d0ad8d10d8911dbf6b29a4a9e33672ff9ee94114d2c525a6b5cd93`  
		Last Modified: Wed, 14 Mar 2018 20:56:44 GMT  
		Size: 21.3 MB (21275070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1ac0d7045504963750d15c8b27b3e5d9bdead11d46535b9aa1af79358ca366`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414fa21abc62d2105afe9a527f6bc650797f21db1775e80207fcba211f93a06c`  
		Last Modified: Fri, 16 Mar 2018 01:39:21 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c2fe98a1ea9abe38a8b3f3671a0258ec303688ea3c57617520ea113047d790`  
		Last Modified: Fri, 16 Mar 2018 01:39:23 GMT  
		Size: 14.7 MB (14650430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1247165550c8c48efa14e410cd24c12fb01c82e257a2c360c77802c8695d71`  
		Last Modified: Fri, 16 Mar 2018 01:39:18 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5addd8016dbe3ced7eecb54abd829f984e11c643e4663a101d68da6e10b2b7`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 8.5 KB (8502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e0c65b1d34eb0f1008d59074ae239d8a85e2841cf3962273af692d43b9f960`  
		Last Modified: Fri, 16 Mar 2018 01:39:32 GMT  
		Size: 59.3 MB (59270801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293a5004008702ad83edd7f5319168225c0e7424d8e21768f58dbd21232221fc`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d3a509a21c6844ed89cb021d3dcdd26c1f7dff78a13b97a6de38d84a426bd0`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caff02935c779e01b0c7eb1ce5ecc8228a9afbab5572ade0782a4b86ccbe935`  
		Last Modified: Fri, 16 Mar 2018 01:39:41 GMT  
		Size: 99.2 MB (99150771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a898ef6c4de2b6d2f9b89ba04b2d41f710f294cddb91f836d740e6b8cca573b`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8ea064f1998607fa865a01afc9e91a07b5be726b88f5448808539535ed6c3`  
		Last Modified: Fri, 16 Mar 2018 01:41:29 GMT  
		Size: 14.5 MB (14491460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e21a1ac9e05c2302bb5e53013dd9d2198e4209fa1071e9a44b2fa4fe8443240`  
		Last Modified: Fri, 16 Mar 2018 01:41:25 GMT  
		Size: 4.4 MB (4354722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:13731b44ae5669bb72905276b7b21cdf39e106d997cc4c059352e7c1d5064396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:1d2a0d816c0b24fe4c55de6455547ed96cc18f45e55c9965359b644c44005b76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278955346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df864b80fc74eacd8586fa3e3546ecb1ca01d4250eb19c5541e8957a11664450`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:01:28 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:04:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:04:42 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 00:48:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 00:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:48:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 00:48:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 00:48:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 00:48:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 00:49:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:49:42 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 00:49:43 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Mar 2018 00:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 00:52:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 00:52:36 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 00:52:37 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 00:52:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 00:52:37 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 00:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Mar 2018 01:07:14 GMT
ENV PASSENGER_VERSION=5.2.1
# Fri, 16 Mar 2018 01:07:43 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:07:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 16 Mar 2018 01:07:44 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11be863a5d0ad8d10d8911dbf6b29a4a9e33672ff9ee94114d2c525a6b5cd93`  
		Last Modified: Wed, 14 Mar 2018 20:56:44 GMT  
		Size: 21.3 MB (21275070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1ac0d7045504963750d15c8b27b3e5d9bdead11d46535b9aa1af79358ca366`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414fa21abc62d2105afe9a527f6bc650797f21db1775e80207fcba211f93a06c`  
		Last Modified: Fri, 16 Mar 2018 01:39:21 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c2fe98a1ea9abe38a8b3f3671a0258ec303688ea3c57617520ea113047d790`  
		Last Modified: Fri, 16 Mar 2018 01:39:23 GMT  
		Size: 14.7 MB (14650430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1247165550c8c48efa14e410cd24c12fb01c82e257a2c360c77802c8695d71`  
		Last Modified: Fri, 16 Mar 2018 01:39:18 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5addd8016dbe3ced7eecb54abd829f984e11c643e4663a101d68da6e10b2b7`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 8.5 KB (8502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e0c65b1d34eb0f1008d59074ae239d8a85e2841cf3962273af692d43b9f960`  
		Last Modified: Fri, 16 Mar 2018 01:39:32 GMT  
		Size: 59.3 MB (59270801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293a5004008702ad83edd7f5319168225c0e7424d8e21768f58dbd21232221fc`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d3a509a21c6844ed89cb021d3dcdd26c1f7dff78a13b97a6de38d84a426bd0`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caff02935c779e01b0c7eb1ce5ecc8228a9afbab5572ade0782a4b86ccbe935`  
		Last Modified: Fri, 16 Mar 2018 01:39:41 GMT  
		Size: 99.2 MB (99150771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a898ef6c4de2b6d2f9b89ba04b2d41f710f294cddb91f836d740e6b8cca573b`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8ea064f1998607fa865a01afc9e91a07b5be726b88f5448808539535ed6c3`  
		Last Modified: Fri, 16 Mar 2018 01:41:29 GMT  
		Size: 14.5 MB (14491460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e21a1ac9e05c2302bb5e53013dd9d2198e4209fa1071e9a44b2fa4fe8443240`  
		Last Modified: Fri, 16 Mar 2018 01:41:25 GMT  
		Size: 4.4 MB (4354722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:45d228acf2e6e0f42b0df3a45be6c3a2ae4fedbd2531c4e903079f644d4d577e
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
$ docker pull redmine@sha256:101108f8e14ffdb58eda52082eb1170ef7c21225a28234bc0ca3b45f39b281ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.1 MB (260109164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f557ec12662cb1b2ccbc12031ac5accac7b3562564dd1ac662c26d8a70315849`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:01:28 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:04:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:04:42 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 00:48:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 00:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:48:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 00:48:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 00:48:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 00:48:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 00:49:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:49:42 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 00:49:43 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Mar 2018 00:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 00:52:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 00:52:36 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 00:52:37 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 00:52:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 00:52:37 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 00:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11be863a5d0ad8d10d8911dbf6b29a4a9e33672ff9ee94114d2c525a6b5cd93`  
		Last Modified: Wed, 14 Mar 2018 20:56:44 GMT  
		Size: 21.3 MB (21275070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1ac0d7045504963750d15c8b27b3e5d9bdead11d46535b9aa1af79358ca366`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414fa21abc62d2105afe9a527f6bc650797f21db1775e80207fcba211f93a06c`  
		Last Modified: Fri, 16 Mar 2018 01:39:21 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c2fe98a1ea9abe38a8b3f3671a0258ec303688ea3c57617520ea113047d790`  
		Last Modified: Fri, 16 Mar 2018 01:39:23 GMT  
		Size: 14.7 MB (14650430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1247165550c8c48efa14e410cd24c12fb01c82e257a2c360c77802c8695d71`  
		Last Modified: Fri, 16 Mar 2018 01:39:18 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5addd8016dbe3ced7eecb54abd829f984e11c643e4663a101d68da6e10b2b7`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 8.5 KB (8502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e0c65b1d34eb0f1008d59074ae239d8a85e2841cf3962273af692d43b9f960`  
		Last Modified: Fri, 16 Mar 2018 01:39:32 GMT  
		Size: 59.3 MB (59270801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293a5004008702ad83edd7f5319168225c0e7424d8e21768f58dbd21232221fc`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d3a509a21c6844ed89cb021d3dcdd26c1f7dff78a13b97a6de38d84a426bd0`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caff02935c779e01b0c7eb1ce5ecc8228a9afbab5572ade0782a4b86ccbe935`  
		Last Modified: Fri, 16 Mar 2018 01:39:41 GMT  
		Size: 99.2 MB (99150771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a898ef6c4de2b6d2f9b89ba04b2d41f710f294cddb91f836d740e6b8cca573b`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:29b82538b7cbc9b06d694498a80ad638e508f325da2c9a2d8367e9316c061e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253408562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97834a6ec48fb16706c0964b817ae62c76d7c94be956f86aa2a620a1d09ac0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:54:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:54:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:54:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:54:34 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:54:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 21:00:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 21:00:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 21:00:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 21:00:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 21:00:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 21:00:24 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 00:22:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 00:22:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:22:34 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:22:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 00:22:41 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 00:22:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 00:23:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 00:23:38 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 00:23:38 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 00:23:39 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 00:23:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 00:23:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 00:29:03 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 00:29:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 00:29:13 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 00:29:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 00:29:14 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 00:29:14 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5473f43f4b59989ac86bfabe67b51edefa4cea3b14253ecfa7eb87fe141c6fdf`  
		Last Modified: Wed, 14 Mar 2018 21:22:45 GMT  
		Size: 9.1 MB (9133325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839ac87b9c320a77dc7a49e28b87c64b9ddfbc570c2bbb0048b0bbf6b6eae293`  
		Last Modified: Wed, 14 Mar 2018 21:22:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc654a792ae0e15452ff96563544505f39a2205ca4efa1e7525c9fa966548e90`  
		Last Modified: Wed, 14 Mar 2018 21:22:48 GMT  
		Size: 21.0 MB (21041111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e05f773d20db3d57a54a6380c00e51585ede9b6a2263dac86d29116e854e4f6`  
		Last Modified: Wed, 14 Mar 2018 21:22:40 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97438663e6af829ec2e11262fa7cb79de8aa6f7dcc78851289a888cb80fce694`  
		Last Modified: Thu, 15 Mar 2018 00:41:28 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add99afd1a8fd045a4c7c693cfeeedc8a930af0af0593f607d9bf07c73c682d4`  
		Last Modified: Thu, 15 Mar 2018 00:41:30 GMT  
		Size: 14.3 MB (14347480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79352480715b9c36fc7e194a030969ddc685bca78c0183a19e3f7c4677bd793b`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 491.1 KB (491127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f55cba16a4edaa437fc1f10c5936efc58626ec0f7dd6138669f5fec30605e46`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288bae8416a16a76e2bddb78caf60f6908fd9cfd894bd7f89201d7c5ab3ad94b`  
		Last Modified: Thu, 15 Mar 2018 00:41:43 GMT  
		Size: 56.6 MB (56611223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803b65d9214c6a72c7553dd13a606f3014df3142c36c922faf7c14e23b685898`  
		Last Modified: Thu, 15 Mar 2018 00:41:24 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c67d436f570a3efa9ab70f037341e37352c541008dd387c85704993f46c5c8d`  
		Last Modified: Thu, 15 Mar 2018 00:41:25 GMT  
		Size: 2.5 MB (2454581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90455565e7ec0e70b3370630915f8629a1f6284f824c973c02a9f1ed0717e11a`  
		Last Modified: Thu, 15 Mar 2018 00:41:50 GMT  
		Size: 98.4 MB (98427407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08799f61d165db5c0edd9358597faac8691368870f2e917e1bd975d89752793f`  
		Last Modified: Thu, 15 Mar 2018 00:41:24 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:a4bb80173ffdf3e38dfd43c321b48cf751b0ce48d69acfcf28372b44de933ed9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247373612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7968db62fd6080bfd7d300fbb2f6b8e66422c838b69bde1fef1b1447d66359`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:17:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:17:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 16:17:11 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 16:17:11 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 16:17:12 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 16:17:12 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 16:17:12 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 16:22:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 16:22:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 16:22:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 16:22:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:22:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 16:22:47 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 19:11:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 19:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:12:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 19:12:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 19:12:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 19:12:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 19:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:13:16 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 19:13:17 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 19:13:17 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 14 Mar 2018 19:13:18 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 14 Mar 2018 19:13:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 19:18:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 19:18:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 19:18:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 19:18:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 19:18:24 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 19:18:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23990e8e0248903864ae0a398aa7696d1f976a252f99c84c8d69f337556d0e`  
		Last Modified: Wed, 14 Mar 2018 17:01:21 GMT  
		Size: 8.8 MB (8785784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c1085b4ef8dafa6f45c42463ec56ae2b446744a75840f17c7609dc7ee71f3`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b74047e0b4ff19a4aee7e14b439a76ee1309df114d001f4ef23b9a2ea22cbc`  
		Last Modified: Wed, 14 Mar 2018 17:01:25 GMT  
		Size: 20.9 MB (20904856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bec4612abc5d5358200933319a6cb460e03a0b6cd089bef37d5aa99657cadc8`  
		Last Modified: Wed, 14 Mar 2018 17:01:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f25e9335e3ad42428904ca33ce2614745f352876d8b9504f3ceacad49e5aea`  
		Last Modified: Wed, 14 Mar 2018 19:30:47 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8fec847ed59f156468790914c3ce6379452cff9f4a216b37de2014b5d9011a`  
		Last Modified: Wed, 14 Mar 2018 19:30:49 GMT  
		Size: 14.1 MB (14134511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e58090d88f3e9c940fabec6362798754e0ec02bb95ed1edcd45aeae23777432`  
		Last Modified: Wed, 14 Mar 2018 19:30:46 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46ed5354fe9a952b75a70baf9f19c04e5451b3d6c39b504a37015ede7f4189f`  
		Last Modified: Wed, 14 Mar 2018 19:30:44 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260a4bb1bc7da68c5d370c4a3ee9afc18fc4864120dceea9e9a5b76d618d751d`  
		Last Modified: Wed, 14 Mar 2018 19:31:01 GMT  
		Size: 54.3 MB (54344985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c0769da10ffe548069117c2c56e178e2f860886038283f57c24b48d60d7829`  
		Last Modified: Wed, 14 Mar 2018 19:30:43 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b21d2f4adb5d4b16de91c3bb1ff021b22fc405e4ac02c9295a2533de8a9ae7`  
		Last Modified: Wed, 14 Mar 2018 19:30:45 GMT  
		Size: 2.5 MB (2454583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2259d92a9a0d200528263ac5cc0f7b186cb82ef19d426459f7296480216329da`  
		Last Modified: Wed, 14 Mar 2018 19:31:12 GMT  
		Size: 97.6 MB (97559794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9b252c877f726932b7c11620e88a6a7e0b80c55bab42012a79d3e189a0d142`  
		Last Modified: Wed, 14 Mar 2018 19:30:43 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:7c2277b94fa2551bc6ad1c47854e129aaaafbbc85588b0974e832f4688253405
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262753034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e7b0e2162fd45e0a831d7135b541aca39c8ffd2fb2ac0f1372cfc38d822887`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:14:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:14:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 02:54:53 GMT
ENV RUBY_MAJOR=2.2
# Thu, 15 Mar 2018 02:54:54 GMT
ENV RUBY_VERSION=2.2.9
# Thu, 15 Mar 2018 02:54:55 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Thu, 15 Mar 2018 02:54:56 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:54:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 03:03:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 03:04:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 03:04:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 03:04:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 03:04:14 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:40:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:41:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:41:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:41:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:41:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:41:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:44:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:44:20 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:44:21 GMT
WORKDIR /usr/src/redmine
# Tue, 27 Mar 2018 06:39:23 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 27 Mar 2018 06:39:23 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 27 Mar 2018 06:39:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 27 Mar 2018 06:49:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 27 Mar 2018 06:49:21 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 27 Mar 2018 06:49:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 27 Mar 2018 06:49:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Mar 2018 06:49:23 GMT
EXPOSE 3000/tcp
# Tue, 27 Mar 2018 06:49:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b30c443a726219f9a82d88f1e1ba423ef88ef65ed6d12a2c1783c3493cac32`  
		Last Modified: Thu, 15 Mar 2018 03:11:46 GMT  
		Size: 9.4 MB (9355446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c823d913ce2f2a0777694502700425539459c44639c06e22be6ad8313114581e`  
		Last Modified: Thu, 15 Mar 2018 03:11:43 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2db17c7fe59df01368666bef8ea8ff426e373acd16e51be5f87ee72fa36976`  
		Last Modified: Thu, 15 Mar 2018 03:16:42 GMT  
		Size: 32.0 MB (32001648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc26c2dbd11a07ee95a3c90fb357dda8ac68ad0e0742b1c2f294155d7284604`  
		Last Modified: Thu, 15 Mar 2018 03:16:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7cf95a58f2304fe4bb2275687c85563566c8f01e3c6306ea017a26cb8ce73`  
		Last Modified: Thu, 15 Mar 2018 11:09:06 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c71a81cfaeeeeeac082a126616814d1ced622aeb7986c3e157add87e81dd49`  
		Last Modified: Thu, 15 Mar 2018 11:09:10 GMT  
		Size: 14.5 MB (14462916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d1bd0bfa740365a7652f1fdaa31da0efab7510e647fdf6e35ef30adf7b315`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17607dfcc9bbfa72668dd5996fbfdad94c40f708a979f82a955a4548c2188a23`  
		Last Modified: Thu, 15 Mar 2018 11:09:04 GMT  
		Size: 8.1 KB (8148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167540bbef4c1e01c792375ce0275b83d7fad9a274e27588384e90ff8c302f23`  
		Last Modified: Thu, 15 Mar 2018 11:09:23 GMT  
		Size: 55.8 MB (55794788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55705345ace9c0efecec54fccfc9da2748f2199bbc8b2b60a50ca38d5f04132a`  
		Last Modified: Thu, 15 Mar 2018 11:09:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1ba2d61a7f49a87cbb6c4c94cdb365910697f08c51221d648c0e160e692713`  
		Last Modified: Tue, 27 Mar 2018 06:50:06 GMT  
		Size: 2.5 MB (2454056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf307b6651afeb2884c3940eff8603c1562c7ae921062c74ae1439b97ea12f0b`  
		Last Modified: Tue, 27 Mar 2018 06:50:35 GMT  
		Size: 98.3 MB (98269461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9deb9243eba161c8da7d07ca74291d8f682343850fededf204f0d9acbb9baf31`  
		Last Modified: Tue, 27 Mar 2018 06:50:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:7e4cc84ec386553f24f2e4a64c6a57d046bdc51f41a2d4ad154ebcef5c86f957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263539558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1338a26b45ae30284b98988886c84fe18c530b7b684683c21980a9b2e39f57`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 20:08:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 20:08:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Feb 2018 20:08:16 GMT
ENV RUBY_MAJOR=2.4
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBY_VERSION=2.4.3
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 20 Feb 2018 20:08:17 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 20 Feb 2018 20:08:18 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 20 Feb 2018 20:12:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 20 Feb 2018 20:12:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Feb 2018 20:12:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Feb 2018 20:12:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Feb 2018 20:12:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Feb 2018 20:12:39 GMT
CMD ["irb"]
# Wed, 21 Feb 2018 22:01:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 21 Feb 2018 22:01:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:01:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 22:01:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 21 Feb 2018 22:01:43 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 21 Feb 2018 22:01:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 21 Feb 2018 22:02:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 22:02:52 GMT
ENV RAILS_ENV=production
# Wed, 21 Feb 2018 22:02:52 GMT
WORKDIR /usr/src/redmine
# Wed, 21 Feb 2018 22:02:52 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 21 Feb 2018 22:02:53 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 21 Feb 2018 22:02:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 21 Feb 2018 22:06:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 21 Feb 2018 22:06:47 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 21 Feb 2018 22:06:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 21 Feb 2018 22:06:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Feb 2018 22:06:48 GMT
EXPOSE 3000/tcp
# Wed, 21 Feb 2018 22:06:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e7541c989a1ffd223b6a8463f58c88f7627776091817578afe8d24f6713163`  
		Last Modified: Tue, 20 Feb 2018 21:01:28 GMT  
		Size: 14.6 MB (14649460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc8420509b19e956e958680ffe2f7f4c09ed11ed67c784ee733722e5f1bcda4`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a336b4cf83effe213c9513dc62dc507164f002be0c746c3ae443d32ec5c08274`  
		Last Modified: Tue, 20 Feb 2018 21:01:32 GMT  
		Size: 20.9 MB (20873412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff49714f4598c7fd43352e341ed2ad7fb6b132fb88e87abf439f0d7e6e0bb730`  
		Last Modified: Tue, 20 Feb 2018 21:01:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff58c38e34376ca5f43f926a80d6a160912f28248b44bd7949a75e1379b58e0f`  
		Last Modified: Wed, 21 Feb 2018 22:55:38 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244b065e24e10bb212d7c2d0dd77023bdd273a4a8cfcf9792ef2d533b95b3101`  
		Last Modified: Wed, 21 Feb 2018 22:55:40 GMT  
		Size: 14.8 MB (14817924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebafef79eba0f1172935873ee0bee42d5acf1556fb035b993398508c2f610b3e`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4c290277408557ab8c2f7b382852168ef6e13767856490ffa341f65e20ba10`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 8.6 KB (8565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9617544ef6bf1178537db732c2e715b2addcd63ab3c7e8c5865d8a6c2fab6fd9`  
		Last Modified: Wed, 21 Feb 2018 22:56:01 GMT  
		Size: 60.1 MB (60147220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98253cd131cbb7575bb4ad97f1202a6bace3759023086e83a3a33cfe6e7a9e4f`  
		Last Modified: Wed, 21 Feb 2018 22:55:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14db4c6c12640a7c6f63c9cb46be4a93c4c3a7ddbe7ec5376171dfbba1ae306a`  
		Last Modified: Wed, 21 Feb 2018 22:55:41 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698ffcc65f9995ad2adb7108cb223cbf3882d848bd92fe099c8db433593b33dc`  
		Last Modified: Wed, 21 Feb 2018 22:56:11 GMT  
		Size: 97.3 MB (97316259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c551f66e7238676a8c34c5a5b1957529ff431567871ec9ab57ff22623a71b600`  
		Last Modified: Wed, 21 Feb 2018 22:55:34 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:5138a84ad71a1d7ecc799dceedce798f81d1738fa7dc2ab980eb3e03708496c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259277163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55250509bf86610e77652aec5a4759aa4c2987cdbf13087c41021bb61bbaf7ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 05:26:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:26:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 05:26:12 GMT
ENV RUBY_MAJOR=2.4
# Thu, 15 Mar 2018 05:26:15 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Mar 2018 05:26:17 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Mar 2018 05:26:20 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 05:26:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 05:38:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 05:38:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 05:38:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 05:38:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:38:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 05:38:59 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 12:20:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 12:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:22:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 12:22:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 12:23:00 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 12:23:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 12:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 12:28:12 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 12:28:14 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 12:28:16 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 12:28:18 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 12:28:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 12:47:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 12:47:56 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 12:47:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 12:48:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 12:48:04 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 12:48:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a59806018a3029eff71af8a8ee62fff9594b37160fc7cdefb70a2b597db27d`  
		Last Modified: Thu, 15 Mar 2018 06:36:53 GMT  
		Size: 10.2 MB (10157352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080a6f8f48e24550cb5573b4e6130addc9c1ea2820df46ba5efa3a3f93b0a33b`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41451a6818dfda69131a624873eedfdd48fb499463c3caaacd4bbfef80096912`  
		Last Modified: Thu, 15 Mar 2018 06:36:57 GMT  
		Size: 21.7 MB (21721226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8c486c3e2be30bb00d168fd8c6e8c754e8652a3fa891d350aa0be380bb3d81`  
		Last Modified: Thu, 15 Mar 2018 06:36:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d7b95ef19c6bbf2adef7f5ba2dca5585017a0d1f19de9c8aab9404551935f1`  
		Last Modified: Thu, 15 Mar 2018 13:33:43 GMT  
		Size: 2.1 KB (2111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9836e940badebaf9828214a12d26902f30569fbc08b40c04b99eb3129ed376`  
		Last Modified: Thu, 15 Mar 2018 13:33:46 GMT  
		Size: 14.7 MB (14720582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6254f2e4c9f4c090d766ccb5b2cd8ce03e81bafe16935bac417df2d5f93d09`  
		Last Modified: Thu, 15 Mar 2018 13:33:41 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8b30169a991555121c04e2c44c7f338a1c579546238763b1bf809986007ad`  
		Last Modified: Thu, 15 Mar 2018 13:33:40 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a9afdbe3b774348c70b85ee4d3f2a49bbb5c76f749e91ce23c3b5955c569c3`  
		Last Modified: Thu, 15 Mar 2018 13:33:53 GMT  
		Size: 58.1 MB (58133424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f2f01e5a374520c6e7c2225ec79b7f4f57cbff097d3a87d84a2905cda66b09`  
		Last Modified: Thu, 15 Mar 2018 13:33:38 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e163cf3e4893d610177b27cea56b6dab27a9435c7336459f94e8e5190b0a26a3`  
		Last Modified: Thu, 15 Mar 2018 13:33:40 GMT  
		Size: 2.5 MB (2454581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608db9ca25f65e2f67a422404402ba1857f8d2511526952109b62805692a7102`  
		Last Modified: Thu, 15 Mar 2018 13:34:01 GMT  
		Size: 99.8 MB (99789871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090101f19b60a483ae03ed1c8a1849fe265cff937a88381e1a413e89ae817d7c`  
		Last Modified: Thu, 15 Mar 2018 13:33:37 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:33a750f8a6d2befc4b752f8b917c8b5e8ffce141a67d56b5c94a88ac4d696f3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264201086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd460976a3861b79e220f431bf8e20f7a30c7675ad59b1be6649480480374686`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:53:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:53:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 07:53:11 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 07:53:12 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 07:53:12 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 07:56:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 07:56:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 07:56:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 07:56:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 07:56:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 07:56:38 GMT
CMD ["irb"]
# Wed, 14 Mar 2018 12:08:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Mar 2018 12:08:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:08:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 12:08:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 12:08:54 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 14 Mar 2018 12:08:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 12:09:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 12:09:24 GMT
ENV RAILS_ENV=production
# Wed, 14 Mar 2018 12:09:24 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Mar 2018 12:09:24 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 14 Mar 2018 12:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 14 Mar 2018 12:09:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 14 Mar 2018 12:12:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 14 Mar 2018 12:12:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 14 Mar 2018 12:12:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 14 Mar 2018 12:12:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 12:12:05 GMT
EXPOSE 3000/tcp
# Wed, 14 Mar 2018 12:12:05 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53d3f3fd31e1f3273c5e5d559174055bac89b7a56b71a9eb8417d7125c175d8`  
		Last Modified: Wed, 14 Mar 2018 08:17:52 GMT  
		Size: 10.0 MB (9980125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c861533f4537bbc274ae2279a3536a1a9b4eac8116db94d080fd03eeac81dd1`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea80bc9bd1b49b1ead6705fe8aeaac188b2802cb33349aad8f3198295ebedd83`  
		Last Modified: Wed, 14 Mar 2018 08:17:55 GMT  
		Size: 21.7 MB (21675090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f0818baeecad8da15e86c245534bbecbcb65cb876a11683ec52bdcd03e3a43`  
		Last Modified: Wed, 14 Mar 2018 08:17:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c32fc953f4fdd8dac7958b8eee07eaa8b3bb1ed29485709f98b8a7c903444f`  
		Last Modified: Wed, 14 Mar 2018 12:18:33 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa3f49b4788da6a14f1f170a148d8368742848357c8f207fd966f3057dd09ee`  
		Last Modified: Wed, 14 Mar 2018 12:18:36 GMT  
		Size: 14.8 MB (14815092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a6a7d6105dc70a67089efcdfcdbd83f67ea58724b4cdc338f720c39bf4066f`  
		Last Modified: Wed, 14 Mar 2018 12:18:34 GMT  
		Size: 486.8 KB (486827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a955079df70db910f9cb0cca672dd8c03f01b6c590d4800b97bed2562bd7b690`  
		Last Modified: Wed, 14 Mar 2018 12:18:32 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168303f3df6476d70779804d61ec357cb7dbe7b40b63a3460571b46a51a1f2c6`  
		Last Modified: Wed, 14 Mar 2018 12:18:42 GMT  
		Size: 59.1 MB (59109967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924d7afe4ac8d7b445733407367a7171c9ca69ad38b038fac082f66c4dd0db91`  
		Last Modified: Wed, 14 Mar 2018 12:18:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed94a2f4203afed89a006ccd067f4d6ee8d4081f61f8ced8a1753be244e01fb`  
		Last Modified: Wed, 14 Mar 2018 12:18:31 GMT  
		Size: 2.5 MB (2454046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b145aeed197763d74095dd7e74e6504a43f3bbb48473286ad242ece70b384409`  
		Last Modified: Wed, 14 Mar 2018 12:18:47 GMT  
		Size: 102.9 MB (102871450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa75a2db4eb8f106f504e4048e2c2a8f82ef949eb063b04b931d00b045eeebfe`  
		Last Modified: Wed, 14 Mar 2018 12:18:31 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:13731b44ae5669bb72905276b7b21cdf39e106d997cc4c059352e7c1d5064396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:1d2a0d816c0b24fe4c55de6455547ed96cc18f45e55c9965359b644c44005b76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278955346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df864b80fc74eacd8586fa3e3546ecb1ca01d4250eb19c5541e8957a11664450`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:01:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:01:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_MAJOR=2.4
# Wed, 14 Mar 2018 20:01:27 GMT
ENV RUBY_VERSION=2.4.3
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 14 Mar 2018 20:01:28 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 20:01:28 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 20:04:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 20:04:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 20:04:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 20:04:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 20:04:42 GMT
CMD ["irb"]
# Fri, 16 Mar 2018 00:48:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 16 Mar 2018 00:48:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:48:51 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 00:48:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Mar 2018 00:48:56 GMT
ENV TINI_VERSION=v0.16.1
# Fri, 16 Mar 2018 00:48:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Mar 2018 00:49:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 00:49:42 GMT
ENV RAILS_ENV=production
# Fri, 16 Mar 2018 00:49:43 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_VERSION=3.4.4
# Fri, 16 Mar 2018 00:49:43 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Fri, 16 Mar 2018 00:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Mar 2018 00:52:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 00:52:36 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Mar 2018 00:52:37 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Fri, 16 Mar 2018 00:52:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Mar 2018 00:52:37 GMT
EXPOSE 3000/tcp
# Fri, 16 Mar 2018 00:52:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Mar 2018 01:07:14 GMT
ENV PASSENGER_VERSION=5.2.1
# Fri, 16 Mar 2018 01:07:43 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Mar 2018 01:07:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 16 Mar 2018 01:07:44 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910338de752f0e88b9ce3fccdf0b763328682647c36010a7e65d120581b90d9`  
		Last Modified: Wed, 14 Mar 2018 20:56:40 GMT  
		Size: 10.2 MB (10185961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65895fdb3d4a72faa4b325635ca9b525756fabb0561cb1c47c15ec3799559f`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11be863a5d0ad8d10d8911dbf6b29a4a9e33672ff9ee94114d2c525a6b5cd93`  
		Last Modified: Wed, 14 Mar 2018 20:56:44 GMT  
		Size: 21.3 MB (21275070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1ac0d7045504963750d15c8b27b3e5d9bdead11d46535b9aa1af79358ca366`  
		Last Modified: Wed, 14 Mar 2018 20:56:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414fa21abc62d2105afe9a527f6bc650797f21db1775e80207fcba211f93a06c`  
		Last Modified: Fri, 16 Mar 2018 01:39:21 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c2fe98a1ea9abe38a8b3f3671a0258ec303688ea3c57617520ea113047d790`  
		Last Modified: Fri, 16 Mar 2018 01:39:23 GMT  
		Size: 14.7 MB (14650430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1247165550c8c48efa14e410cd24c12fb01c82e257a2c360c77802c8695d71`  
		Last Modified: Fri, 16 Mar 2018 01:39:18 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5addd8016dbe3ced7eecb54abd829f984e11c643e4663a101d68da6e10b2b7`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 8.5 KB (8502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e0c65b1d34eb0f1008d59074ae239d8a85e2841cf3962273af692d43b9f960`  
		Last Modified: Fri, 16 Mar 2018 01:39:32 GMT  
		Size: 59.3 MB (59270801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293a5004008702ad83edd7f5319168225c0e7424d8e21768f58dbd21232221fc`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d3a509a21c6844ed89cb021d3dcdd26c1f7dff78a13b97a6de38d84a426bd0`  
		Last Modified: Fri, 16 Mar 2018 01:39:16 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caff02935c779e01b0c7eb1ce5ecc8228a9afbab5572ade0782a4b86ccbe935`  
		Last Modified: Fri, 16 Mar 2018 01:39:41 GMT  
		Size: 99.2 MB (99150771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a898ef6c4de2b6d2f9b89ba04b2d41f710f294cddb91f836d740e6b8cca573b`  
		Last Modified: Fri, 16 Mar 2018 01:39:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8ea064f1998607fa865a01afc9e91a07b5be726b88f5448808539535ed6c3`  
		Last Modified: Fri, 16 Mar 2018 01:41:29 GMT  
		Size: 14.5 MB (14491460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e21a1ac9e05c2302bb5e53013dd9d2198e4209fa1071e9a44b2fa4fe8443240`  
		Last Modified: Fri, 16 Mar 2018 01:41:25 GMT  
		Size: 4.4 MB (4354722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
