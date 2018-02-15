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
$ docker pull redmine@sha256:ba1c7bcdfe5775eb8ce19956df89d56586ae441698dc1066d97e5620021e9808
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
$ docker pull redmine@sha256:6ac7512612901611900b87c2df47fc0c2f9621a43549b282fc427e1583ce3513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b004483a7ea6f84fc6b0a8e1770cd69d6aec04ab068fca13e533bbe1f5e5ef31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:05:20 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:05:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 01:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 01:08:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 01:08:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 01:08:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:15:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:15:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:15:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:15:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:15:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:16:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:16:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:16:28 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:16:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:16:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:19:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:19:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:19:54 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:19:55 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:19:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ef1a44eb210f12a1274d2c75ebda24151565f7270ceeb760561b43eac3afe0`  
		Last Modified: Wed, 07 Feb 2018 02:14:35 GMT  
		Size: 21.3 MB (21268456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdaac495b62aeafe29255fae1bfc09e6b11d45e2b2dff810972a74b4d8e93a2`  
		Last Modified: Wed, 07 Feb 2018 02:14:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb048f176909b2a8008279c71f3cfa9417f7fa96f5ea8213a9781fc2b578a308`  
		Last Modified: Wed, 07 Feb 2018 03:34:19 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55edb0740627d22c14ae523f4be6fb67e976bb02f782c03e038bd82730be224`  
		Last Modified: Wed, 07 Feb 2018 03:34:22 GMT  
		Size: 14.7 MB (14650330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05644c4e62aaadb2be2ea50c0b3a4fd0299e30b5ff85a25b7d036192cc14d260`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae74edce5904a3db6f507ea74e2d23dd1a85022e8104b62032f2e4624b018f0`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e89c20363903e1324bb4503a74ae8782afea9a2b1a481635613560526f7433`  
		Last Modified: Wed, 07 Feb 2018 03:34:31 GMT  
		Size: 59.3 MB (59271503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070298887293a4fbbbf58cfd90196f9e93e490954428b6989b8a5b18949e918f`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9341b396e78c01b8c55446c4d64a744ce50d3c4f7f66a2f4214e10ea32b04eef`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891ac55bced60e812982af026e7f0c4508d04cffa9bcc120366401631a24a4f2`  
		Last Modified: Wed, 07 Feb 2018 03:34:46 GMT  
		Size: 98.8 MB (98822064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e05898ea82309521ea53766ca0651ef90d45e2ba1107d7c11ecd6c777f80f12`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:72a3fb4c5ce7c0be7716c87ddcae6113f46f3fa70c078bc32602d2e0ac5a563b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253093968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a151dd8f3613ee9820c68818ea5d1398d008c3e7a01d2da165cd3a553f94645c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 02:45:30 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:45:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:51:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:51:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:51:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:51:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:51:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:51:34 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:42:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:43:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:43:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:43:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:43:02 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:43:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:44:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:44:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:44:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:44:06 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:44:06 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:44:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:49:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:49:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:49:40 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:49:41 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:49:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43e176b731507f0182e540f743ae0310db96361eaa59459c9d320096c2c9dd3`  
		Last Modified: Wed, 07 Feb 2018 03:22:13 GMT  
		Size: 21.0 MB (21035984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4aa2bb6cd3a348c8a1a657552ffa46bcea16218d301a89604fa0dd707a979`  
		Last Modified: Wed, 07 Feb 2018 03:22:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25636f94bced309af41112438fb488852d67a658ce06155485a88f33c53f4aa4`  
		Last Modified: Wed, 07 Feb 2018 04:00:56 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7f9360e27159ab2da8c41e5208a60ed431eaa2c3d6c3c9d573466107c4e6d0`  
		Last Modified: Wed, 07 Feb 2018 04:01:01 GMT  
		Size: 14.3 MB (14347443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8000c05045c3eeed6ab53b561350188f303dee57ac04d01416df59c0c16898c5`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78af08c4b6accc5d9a3a4738d7072fd54d685029194ebe02080018bf2625c3d2`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 7.8 KB (7847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391c6dfdfbb2c1f39aee3b681dd4ed5dd97ea4cee8fb89c2783924eac07d7f7f`  
		Last Modified: Wed, 07 Feb 2018 04:01:13 GMT  
		Size: 56.6 MB (56611245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889493e30fc782499f72f25bb9dedfc24e8f97a4ad3d525e8b8b88f821a1ae9`  
		Last Modified: Wed, 07 Feb 2018 04:00:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a97ca28dc534ee6a9dfa7d1a492b318c6d38f8db8b5e58db6ba90f7196897c8`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a74b029231e18ba15df89b127e88c73c776624ec685ca8c57e3c8dd15f1ae9`  
		Last Modified: Wed, 07 Feb 2018 04:01:21 GMT  
		Size: 98.1 MB (98126282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3dafa486b44e7b279ea49c2a31ba273d64463a59c36c9423d54d928d9bc23e`  
		Last Modified: Wed, 07 Feb 2018 04:00:54 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:de2940d82a063e4c6e66270901e0c943e6e63b4fe60abd316055f222f5f66b57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247188574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80df0f236139a94a2ffbcdc953f6518e0176c6806168d1d2dad5fd90c43663`
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
# Thu, 15 Feb 2018 16:42:08 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 16:42:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 16:47:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 16:47:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 16:47:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 16:47:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:47:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 16:47:47 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 19:38:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 19:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:39:27 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:39:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 19:39:37 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 19:39:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 19:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:40:48 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 19:40:48 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 19:40:48 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 19:40:49 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 19:40:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 19:45:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:45:57 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 19:45:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 19:45:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 19:45:59 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 19:45:59 GMT
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
	-	`sha256:dc0ffb9ad5f1dcc3cf6eb231e280dc37c27d03ec087ccba5d9ee6dc64ad59988`  
		Last Modified: Thu, 15 Feb 2018 17:23:06 GMT  
		Size: 20.9 MB (20899250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67b768a537135a3a0f481fc34162a3de203caf635efd313262107f8bbde0315`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddae8546432595b4fb8b549803e5884f6c6b997847f021befdf2718ece09c929`  
		Last Modified: Thu, 15 Feb 2018 19:58:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d096c8b987ae463d6677e16f257793295175d32f458039d0cb125539f543f7bd`  
		Last Modified: Thu, 15 Feb 2018 19:58:23 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064bc10e53ba08e4649efb4f509a5f68f97c54080c1abbe03a7e2d1998ef07d7`  
		Last Modified: Thu, 15 Feb 2018 19:58:18 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844dbfab687406b70c5cb7df48cadbe9a01c2a367a7254a79204abdbabb759d`  
		Last Modified: Thu, 15 Feb 2018 19:58:17 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d634ef1e17ad5febeb0fbb3ccf46a93cafc01982367eb5f01d314783c70a30de`  
		Last Modified: Thu, 15 Feb 2018 19:58:40 GMT  
		Size: 54.3 MB (54345106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a14cbc6e65b8a2d8260b51f06471428ca5a89d89a2b731f35174eed5e62d139`  
		Last Modified: Thu, 15 Feb 2018 19:58:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81e07143d40dd0421e489bd16bbba16c84aa7d8e485d8d62e869dfc25b5f86f`  
		Last Modified: Thu, 15 Feb 2018 19:58:16 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e69e41a2905ccd8d3bd6e4c626727b9650127325f392a7269d46534b3d5d71`  
		Last Modified: Thu, 15 Feb 2018 19:58:41 GMT  
		Size: 97.4 MB (97380911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aff8111f3345a856d6bf270caf6e0ce44ed0fe3926ee5a6c80318aad449d3e`  
		Last Modified: Thu, 15 Feb 2018 19:58:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:0890c2c927e1df1993dc8a8597dec2d165ed603e3042af1b5a743616f89290f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (252046865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8872b2caa6cb9566eb91038f1e37aa7bbe54c6b1abfc92280a6a5f28c11c5920`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 22:21:22 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 22:21:23 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 22:30:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 22:30:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 22:30:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 22:30:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 22:30:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 22:30:49 GMT
CMD ["irb"]
# Thu, 08 Feb 2018 00:05:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 08 Feb 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:05:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 08 Feb 2018 00:05:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Feb 2018 00:05:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 08 Feb 2018 00:05:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 08 Feb 2018 00:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:07:42 GMT
ENV RAILS_ENV=production
# Thu, 08 Feb 2018 00:07:43 GMT
WORKDIR /usr/src/redmine
# Thu, 08 Feb 2018 00:07:44 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 08 Feb 2018 00:07:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 08 Feb 2018 00:07:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 08 Feb 2018 00:18:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Feb 2018 00:18:11 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 08 Feb 2018 00:18:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 08 Feb 2018 00:18:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Feb 2018 00:18:13 GMT
EXPOSE 3000/tcp
# Thu, 08 Feb 2018 00:18:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b864c8496aa8260042e205d172c1a6b4ab6dce556bd3e1a0153ce7b1d3336732`  
		Last Modified: Wed, 07 Feb 2018 23:40:31 GMT  
		Size: 21.2 MB (21240103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca38bd0c394a79afeb208fbd7104c9f9635d593a42bae2ad2e23ca524877652c`  
		Last Modified: Wed, 07 Feb 2018 23:40:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16974a4e236dcf41384396b47206ed4637b174cbf6e6bbaa3ccb6fdd8fe9138b`  
		Last Modified: Thu, 08 Feb 2018 00:44:27 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70730962d27a3c471a901c73ea6f46df89bb14382736909c2de0b117c6c34060`  
		Last Modified: Thu, 08 Feb 2018 00:44:31 GMT  
		Size: 14.5 MB (14462705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e78626311ebb0a0ccdac4a6dc2ce710b02c210178c0f65a57b22b928224c674`  
		Last Modified: Thu, 08 Feb 2018 00:44:25 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2d1e0260e68e69f01f79041093e9a3ec4062bc677d799c88cddf76c274840`  
		Last Modified: Thu, 08 Feb 2018 00:44:24 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d5cffa69c02e4584b6b8bc95ffa1ada4e8b01c6e4200e091ddeb3242064d0f`  
		Last Modified: Thu, 08 Feb 2018 00:44:43 GMT  
		Size: 55.8 MB (55794944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce82343dcdbabe7f40b7a5b6775a0f4cc96d7f5e923a0ea2bf96a2f2bca71535`  
		Last Modified: Thu, 08 Feb 2018 00:44:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0818f6637b3eb4e04631cf0eeee51a5de181dbad8111ca5f90b5b9797511f13`  
		Last Modified: Thu, 08 Feb 2018 00:44:24 GMT  
		Size: 2.5 MB (2454051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7484ba5be43dffc514b2cdcfb931cd58123b1143b01a0cb5dbe2bfa743908a`  
		Last Modified: Thu, 08 Feb 2018 00:44:55 GMT  
		Size: 98.3 MB (98332159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31c2814e8c3aeb653f2c41580a826d09c7f17f52a9ab7c103597a3dbd1430ce`  
		Last Modified: Thu, 08 Feb 2018 00:44:22 GMT  
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
$ docker pull redmine@sha256:b5f4c71530bafb237250c10560e610ff8e0b87c22b165d12809d8f5b92cc653b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259054327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6878e1c834deaa243ad73987233cc95b50d4559c2969b0d798a1001b3855a3c8`
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
# Thu, 15 Feb 2018 06:09:53 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 06:09:55 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 06:19:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 06:19:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 06:19:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 06:20:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:20:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 06:20:10 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 11:12:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 11:13:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:13:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:13:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:13:52 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 11:14:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 11:18:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:18:40 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 11:18:42 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 11:18:49 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 11:18:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 11:18:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 11:33:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 11:33:32 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 11:33:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 11:33:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 11:33:41 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 11:33:47 GMT
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
	-	`sha256:790246d9fd455d8b66275d637fcb1cc8d8c125c2a4a606867916f80c04b3e145`  
		Last Modified: Thu, 15 Feb 2018 06:47:55 GMT  
		Size: 21.7 MB (21714410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90326cf5425b9dfffb1e74c936cc9dc62cb02cfeae3a300bf2fb7b190fc6f5c9`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010716011645ef561a7b223b01cddbfdede964742c21795398f9f5aaf24d3a59`  
		Last Modified: Thu, 15 Feb 2018 12:17:33 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20a546e7b4a806cba0d4faf7722c37a899040abfc59893721ae58b400c95cab`  
		Last Modified: Thu, 15 Feb 2018 12:17:37 GMT  
		Size: 14.7 MB (14720508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd388a051fbca6094f1707c40989ac6b7910473a3aab1dd4f0b5ac509a68ba5`  
		Last Modified: Thu, 15 Feb 2018 12:17:30 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a241e725174e1c62cd129d5856b76c16a63c57cc2935a6d3f75ef7c5e73ed7fa`  
		Last Modified: Thu, 15 Feb 2018 12:17:29 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c1614409a22f27c32f34bae829c8ec071a332520a28e389a2e5b3dfab84bf`  
		Last Modified: Thu, 15 Feb 2018 12:17:53 GMT  
		Size: 58.1 MB (58133315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6283f11b8e56b9d95dd9a6d09fe0b0bb30ddc2bd3836054e0366abc097f446`  
		Last Modified: Thu, 15 Feb 2018 12:17:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8a68933fea5d0f355982168a9c21a3e55d491f686a8a764d568de37f14c2fe`  
		Last Modified: Thu, 15 Feb 2018 12:17:29 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e1d18db576df31de6ec0c7388a50c21b9556ae1400a24c2874ed784065b7aa`  
		Last Modified: Thu, 15 Feb 2018 12:18:02 GMT  
		Size: 99.6 MB (99574021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a0a195cfab43caa390974ac1b677b71baa8571c66672c1ab7a5620b9258aa6`  
		Last Modified: Thu, 15 Feb 2018 12:17:26 GMT  
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
$ docker pull redmine@sha256:7fb76e11a560386995bbfb0e54d8e14097ebcdfa8701b0d4a203d010e08b4135
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
$ docker pull redmine@sha256:ff8e69a1fde4f8ff920bbaf8a5b3a7e568f2512846f9626f471a8887f860ae6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250379478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f523998410e751f8a56fbad7c457945f86cb1df6e9690e9dc08ee7755f9938b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 01:57:44 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:57:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:00:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:00:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:00:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:00:59 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:20:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:21:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:21:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:21:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:21:15 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:21:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:22:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:22:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:30:17 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 03:30:17 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 03:30:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:32:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:33:17 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:33:17 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:33:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:33:17 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:33:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16016bc19731574fd04073a20e70261f3a1a28aa40660c0dde554941b0c712a6`  
		Last Modified: Wed, 07 Feb 2018 02:27:35 GMT  
		Size: 31.9 MB (31880406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dacde5aa5c5c2edacb8e16831c7d4a0380b36bbd6fdfed8ae99c99363c36d4`  
		Last Modified: Wed, 07 Feb 2018 02:27:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55a69547bf6bd992255873e94984c72e9c7fd723625aab15e26070606c3e131`  
		Last Modified: Wed, 07 Feb 2018 03:37:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd8ef273c00fab9fdf08c776b517c4622a77834c55b772cceb7400945ccfca5`  
		Last Modified: Wed, 07 Feb 2018 03:37:07 GMT  
		Size: 14.7 MB (14650316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fca318eb7fc0c93199b0ae9c85c7f56c5c8b25fdabaee31e0d3aa1be2c25e1d`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbb3caa0ac47226119f024cab2f3b3e6bbd7eb0c2d530bbcf00f1385ee4da38`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bea97382ce223e8d56b3b0eaa5c3175d495e22115f02ea4d2069e79e096d30`  
		Last Modified: Wed, 07 Feb 2018 03:37:12 GMT  
		Size: 59.3 MB (59271188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea707158ba1490bd6c6f1ad84b3213cd79b55583523c5b1062b6b105b61bef3`  
		Last Modified: Wed, 07 Feb 2018 03:36:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae7e527b737dacdf29c964644de164f8c94c718105079dfcb45e11be3a9ff9e`  
		Last Modified: Wed, 07 Feb 2018 03:38:31 GMT  
		Size: 2.3 MB (2347496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cbe1e6e252f951a245450b84986a539f846b225fbc87e3044ee2e5be8570354`  
		Last Modified: Wed, 07 Feb 2018 03:38:47 GMT  
		Size: 78.9 MB (78931972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2648f0c11b0b6f6a936d8e3d9e6c99c4299d91d53cd88c9db55e1841664d1a7a`  
		Last Modified: Wed, 07 Feb 2018 03:38:29 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c890e58ac1c94511b3d498450aa10dc83b7c1743182c4ba61a760955ef973c2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242771294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd98b07f91f74358f750b083bb2dede184f5a64bf2f6ed6698bad3c451fff9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 03:14:17 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 03:14:17 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 03:18:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 03:18:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 03:18:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 03:18:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 03:18:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 03:18:39 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:50:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:50:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:50:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:50:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:50:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:51:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:51:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:51:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:56:10 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 03:56:10 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 03:56:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 04:00:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 04:00:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 04:00:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 04:00:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 04:00:41 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 04:00:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0504b064a580c5f7e71f6a13534cae23247a72e92fd5454aef9839bc4b76d0aa`  
		Last Modified: Wed, 07 Feb 2018 03:26:26 GMT  
		Size: 30.8 MB (30805063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66bac1016fc97b008d7b7ec0a8e5c56c84bc7474615aa229957af568b374981`  
		Last Modified: Wed, 07 Feb 2018 03:26:15 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f23cd933bfcf7d5350b00f76539dffe6b89a83b6034656eabb608959ffe6a82`  
		Last Modified: Wed, 07 Feb 2018 04:01:52 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6db1c2d7976dde328af57014e290d22398da472c18e3f871c3e50616809f6f`  
		Last Modified: Wed, 07 Feb 2018 04:01:56 GMT  
		Size: 14.3 MB (14347468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4122f71a5735b74008ea80bca33964b81a42274c352f7add1683f81accad7ef3`  
		Last Modified: Wed, 07 Feb 2018 04:01:50 GMT  
		Size: 491.1 KB (491123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7239e7e5e191dd3c184a1e81dade4fc679221875e85200545f4a9fd7d9207d5`  
		Last Modified: Wed, 07 Feb 2018 04:01:51 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2293bd4888d383fac3e46bdbd5634a07c6ef95b69727865c1c8f06cfdb1e018`  
		Last Modified: Wed, 07 Feb 2018 04:02:08 GMT  
		Size: 56.6 MB (56611079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545a0aa35ff96f591ec8c5ce365068051cd1d08f042389ba26b924033492421`  
		Last Modified: Wed, 07 Feb 2018 04:01:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa325a18f5a3835f3ec733bb50db52f61ed573b9506fb65da8e73a3157cf36d`  
		Last Modified: Wed, 07 Feb 2018 04:02:28 GMT  
		Size: 2.3 MB (2347819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0746c0a94303931037951e1a8cc38c6cd6eb6e7178b243d171a51a191a26bd7f`  
		Last Modified: Wed, 07 Feb 2018 04:02:45 GMT  
		Size: 78.1 MB (78141439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f3a6a525a567337f6a06ca9053efa33a6877faa5c3a8a59ff50f9129595449`  
		Last Modified: Wed, 07 Feb 2018 04:02:27 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:0bbdfe3e456104e7c6dbbbcd9aea19f9c2d83a1c8f02e21899865bb39ee5c3a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.0 MB (237047664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd77da5c37e71d28dc96e812763fac25f6c0c0e5c1bfdfa99cfdcec54f5ee932`
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
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 17:11:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 17:16:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 17:16:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 17:16:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 17:16:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 17:16:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 17:16:21 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 19:46:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 19:47:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:47:25 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:47:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 19:47:40 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 19:47:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 19:48:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:48:45 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 19:48:46 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 19:53:34 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Feb 2018 19:53:35 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Feb 2018 19:53:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 19:57:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:57:55 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 19:57:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 19:57:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 19:57:56 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 19:57:56 GMT
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
	-	`sha256:3e39d4fb496cb68f1bd9f8f45915289b46c42e6bf4a41ffaa27c758ae048469f`  
		Last Modified: Thu, 15 Feb 2018 17:29:41 GMT  
		Size: 30.6 MB (30584280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ab12fa1260d5fc889bbd14346eddd8cb460d632c0d1f31ffad81699e4529ec`  
		Last Modified: Thu, 15 Feb 2018 17:29:31 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7896735727bab0d350679ef15bc452ef54cd5aee0a25a4c76299287fb24bce0f`  
		Last Modified: Thu, 15 Feb 2018 19:59:41 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf34f2dfe726fcb45c1512ffe73fffe81289c89cc8f02c4c81d7aa7cc259f57`  
		Last Modified: Thu, 15 Feb 2018 19:59:44 GMT  
		Size: 14.1 MB (14134525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b764310bac398a4ddf3acccc989b9c2581743216c69602b6065252e95f1a512d`  
		Last Modified: Thu, 15 Feb 2018 19:59:39 GMT  
		Size: 475.3 KB (475265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2a365ba5d214dc58c0c7ff58905ca94ffef88619a4125cb07687345c8c958f`  
		Last Modified: Thu, 15 Feb 2018 19:59:39 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43832d230574a36c5f68eebb7c4e4307ac47e27973189d993478b197ebd7410`  
		Last Modified: Thu, 15 Feb 2018 19:59:53 GMT  
		Size: 54.3 MB (54345131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a845eb0f9d13106c504e0df94605590ee7b69639fe3a036e153570d366e8a9`  
		Last Modified: Thu, 15 Feb 2018 19:59:36 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49da562ae3062af2bafac4ddd43d3058e04e30c20e8346deddd1032c6d02f89a`  
		Last Modified: Thu, 15 Feb 2018 20:00:25 GMT  
		Size: 2.3 MB (2347823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae23b1d6369e8ba1e61c72780206d300e03f48c6a4ec27718b353265c170176`  
		Last Modified: Thu, 15 Feb 2018 20:00:41 GMT  
		Size: 77.7 MB (77661693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4500d3419bf6d76d8c33bdd7c3904574a6160ffc380b5a60d2b9c96bee9472a8`  
		Last Modified: Thu, 15 Feb 2018 20:00:24 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:9a6265187b86fe8056de94ed763a41945af8b2f9796b176aff32185f297e1813
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242567140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbf34bee38149b6eb3d5052c13f380867da4f36ff0f86e11c5dd4738d168c66`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 23:22:13 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 23:22:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 23:29:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 23:29:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 23:29:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 23:29:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 23:29:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 23:29:40 GMT
CMD ["irb"]
# Thu, 08 Feb 2018 00:18:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 08 Feb 2018 00:19:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:19:06 GMT
ENV GOSU_VERSION=1.10
# Thu, 08 Feb 2018 00:19:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Feb 2018 00:19:12 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 08 Feb 2018 00:19:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 08 Feb 2018 00:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:21:20 GMT
ENV RAILS_ENV=production
# Thu, 08 Feb 2018 00:21:21 GMT
WORKDIR /usr/src/redmine
# Thu, 08 Feb 2018 00:33:02 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 08 Feb 2018 00:33:03 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 08 Feb 2018 00:33:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 08 Feb 2018 00:43:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Feb 2018 00:43:49 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 08 Feb 2018 00:43:50 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 08 Feb 2018 00:43:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Feb 2018 00:43:51 GMT
EXPOSE 3000/tcp
# Thu, 08 Feb 2018 00:43:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d9b486284b3c5bec99b22fb33523f7ae3d9cc4ded418d1620bab71f5af5dab`  
		Last Modified: Wed, 07 Feb 2018 23:48:17 GMT  
		Size: 32.0 MB (31999917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04dffbcf915a9756f8644d1f7f5d5b8c905aa2e836cf03942e2ed9bc3ab4a88a`  
		Last Modified: Wed, 07 Feb 2018 23:48:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c77406f864a3dbafbc3fc5c221418154d7777816aea09077c025988c66add37`  
		Last Modified: Thu, 08 Feb 2018 00:45:51 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695042b83cee098ea8f7297a39f1d37a7e71f535868eeead0f57eed9129059f6`  
		Last Modified: Thu, 08 Feb 2018 00:45:57 GMT  
		Size: 14.5 MB (14462758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd07edbb330151c1042a297bb529e91b4a005dfd7f4bd3ffbc02e6ebdbb8be65`  
		Last Modified: Thu, 08 Feb 2018 00:45:50 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa707946bc66d79231f4051b4e6b87c7915f6521317c8370481d74bf7d20dc30`  
		Last Modified: Thu, 08 Feb 2018 00:45:49 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197376722e20e43f8f807f43b79b4970e84a78fa69bf16598eb187db3b57373`  
		Last Modified: Thu, 08 Feb 2018 00:46:09 GMT  
		Size: 55.8 MB (55794545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3998a57c782c13d658c9daaba96cfb47cb8f2598734f089b7cc8a628df1239`  
		Last Modified: Thu, 08 Feb 2018 00:45:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a653214069f1c5e35c89d89890dc2e13ae76304a5b7ff887d4929886ba71d5`  
		Last Modified: Thu, 08 Feb 2018 00:46:42 GMT  
		Size: 2.3 MB (2347498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab02942bc5be346560c14361c279bad0fc9653cb781729431e06b9786ca7832`  
		Last Modified: Thu, 08 Feb 2018 00:47:02 GMT  
		Size: 78.2 MB (78199513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d640f39c63fe66337e4b0b14503d7a2c657a60257a386ae6f820e4ffceaf21`  
		Last Modified: Thu, 08 Feb 2018 00:46:47 GMT  
		Size: 1.8 KB (1790 bytes)  
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
$ docker pull redmine@sha256:b71fd54b46159f5e31d6ca98d5231afe2428346cc7f17b8ba38f977103057757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249691351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f614e6a34e72695b62b3a0ce419c5fce48f357c8ab219c903f5e40b6d852b018`
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
# Thu, 15 Feb 2018 06:38:52 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 06:38:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 06:45:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 06:45:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 06:45:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 06:45:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:45:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 06:45:50 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 11:34:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 11:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:34:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:35:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:35:07 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 11:35:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 11:40:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:40:17 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 11:40:19 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 11:59:25 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Feb 2018 11:59:27 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Feb 2018 11:59:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 12:16:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 12:16:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 12:16:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 12:16:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 12:16:51 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 12:16:53 GMT
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
	-	`sha256:c2cd7d4e719f36beb93f19ad394d7c9cb0c8cb876fff6641142fe98bd5bea6df`  
		Last Modified: Thu, 15 Feb 2018 06:49:47 GMT  
		Size: 32.9 MB (32878282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd392e60771c890ec1b6827651b64a9cf9b3164be73ca76c68a525abadfc40a`  
		Last Modified: Thu, 15 Feb 2018 06:49:36 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a95aac1cbbed46f9115f5eaca394c19bd44d7d9b4c63085bf759f03af2806c`  
		Last Modified: Thu, 15 Feb 2018 12:18:41 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537cb8c669ec45f86233a538b24d21636f42d440099464cb53321a8ec4daf881`  
		Last Modified: Thu, 15 Feb 2018 12:18:45 GMT  
		Size: 14.7 MB (14720176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba48c81d596ee3d67f486f9b0311754134acc54720a7a7c963c6348a84cd635e`  
		Last Modified: Thu, 15 Feb 2018 12:18:38 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81693e0a84bbfa4ea694f5c90d035044094ff30e3183c5832807b6eaf8a21d78`  
		Last Modified: Thu, 15 Feb 2018 12:18:38 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb74fa77481a9f58a1ab379c6211919140ee9dccb0b07997a04df6fc54f9be3`  
		Last Modified: Thu, 15 Feb 2018 12:19:04 GMT  
		Size: 58.1 MB (58133181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96c4fd05037caa61d360e6d619173d9005b5f774c2599e56a9627363c8c4f33`  
		Last Modified: Thu, 15 Feb 2018 12:18:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127be26104d09b6d319af2925416dcdfdb671280370456d15713ac52f19e3728`  
		Last Modified: Thu, 15 Feb 2018 12:19:23 GMT  
		Size: 2.3 MB (2347819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ee542096781f234cb5c24d52092ab873fc287d602a6df217fb3ccee794ffd6`  
		Last Modified: Thu, 15 Feb 2018 12:19:38 GMT  
		Size: 79.2 MB (79154414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3102e017958dea72c9b376cd610eec283782a8e98e4ddda08ce25352ec11a84`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 1.8 KB (1793 bytes)  
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
$ docker pull redmine@sha256:7fb76e11a560386995bbfb0e54d8e14097ebcdfa8701b0d4a203d010e08b4135
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
$ docker pull redmine@sha256:ff8e69a1fde4f8ff920bbaf8a5b3a7e568f2512846f9626f471a8887f860ae6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250379478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f523998410e751f8a56fbad7c457945f86cb1df6e9690e9dc08ee7755f9938b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 01:57:44 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:57:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:00:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:00:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:00:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:00:59 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:20:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:21:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:21:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:21:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:21:15 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:21:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:22:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:22:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:30:17 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 03:30:17 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 03:30:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:32:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:33:17 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:33:17 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:33:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:33:17 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:33:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16016bc19731574fd04073a20e70261f3a1a28aa40660c0dde554941b0c712a6`  
		Last Modified: Wed, 07 Feb 2018 02:27:35 GMT  
		Size: 31.9 MB (31880406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dacde5aa5c5c2edacb8e16831c7d4a0380b36bbd6fdfed8ae99c99363c36d4`  
		Last Modified: Wed, 07 Feb 2018 02:27:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55a69547bf6bd992255873e94984c72e9c7fd723625aab15e26070606c3e131`  
		Last Modified: Wed, 07 Feb 2018 03:37:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd8ef273c00fab9fdf08c776b517c4622a77834c55b772cceb7400945ccfca5`  
		Last Modified: Wed, 07 Feb 2018 03:37:07 GMT  
		Size: 14.7 MB (14650316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fca318eb7fc0c93199b0ae9c85c7f56c5c8b25fdabaee31e0d3aa1be2c25e1d`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbb3caa0ac47226119f024cab2f3b3e6bbd7eb0c2d530bbcf00f1385ee4da38`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bea97382ce223e8d56b3b0eaa5c3175d495e22115f02ea4d2069e79e096d30`  
		Last Modified: Wed, 07 Feb 2018 03:37:12 GMT  
		Size: 59.3 MB (59271188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea707158ba1490bd6c6f1ad84b3213cd79b55583523c5b1062b6b105b61bef3`  
		Last Modified: Wed, 07 Feb 2018 03:36:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae7e527b737dacdf29c964644de164f8c94c718105079dfcb45e11be3a9ff9e`  
		Last Modified: Wed, 07 Feb 2018 03:38:31 GMT  
		Size: 2.3 MB (2347496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cbe1e6e252f951a245450b84986a539f846b225fbc87e3044ee2e5be8570354`  
		Last Modified: Wed, 07 Feb 2018 03:38:47 GMT  
		Size: 78.9 MB (78931972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2648f0c11b0b6f6a936d8e3d9e6c99c4299d91d53cd88c9db55e1841664d1a7a`  
		Last Modified: Wed, 07 Feb 2018 03:38:29 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c890e58ac1c94511b3d498450aa10dc83b7c1743182c4ba61a760955ef973c2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242771294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd98b07f91f74358f750b083bb2dede184f5a64bf2f6ed6698bad3c451fff9ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 03:14:17 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 03:14:17 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 03:18:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 03:18:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 03:18:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 03:18:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 03:18:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 03:18:39 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:50:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:50:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:50:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:50:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:50:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:51:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:51:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:51:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:56:10 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 03:56:10 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 03:56:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 04:00:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 04:00:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 04:00:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 04:00:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 04:00:41 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 04:00:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0504b064a580c5f7e71f6a13534cae23247a72e92fd5454aef9839bc4b76d0aa`  
		Last Modified: Wed, 07 Feb 2018 03:26:26 GMT  
		Size: 30.8 MB (30805063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66bac1016fc97b008d7b7ec0a8e5c56c84bc7474615aa229957af568b374981`  
		Last Modified: Wed, 07 Feb 2018 03:26:15 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f23cd933bfcf7d5350b00f76539dffe6b89a83b6034656eabb608959ffe6a82`  
		Last Modified: Wed, 07 Feb 2018 04:01:52 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6db1c2d7976dde328af57014e290d22398da472c18e3f871c3e50616809f6f`  
		Last Modified: Wed, 07 Feb 2018 04:01:56 GMT  
		Size: 14.3 MB (14347468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4122f71a5735b74008ea80bca33964b81a42274c352f7add1683f81accad7ef3`  
		Last Modified: Wed, 07 Feb 2018 04:01:50 GMT  
		Size: 491.1 KB (491123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7239e7e5e191dd3c184a1e81dade4fc679221875e85200545f4a9fd7d9207d5`  
		Last Modified: Wed, 07 Feb 2018 04:01:51 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2293bd4888d383fac3e46bdbd5634a07c6ef95b69727865c1c8f06cfdb1e018`  
		Last Modified: Wed, 07 Feb 2018 04:02:08 GMT  
		Size: 56.6 MB (56611079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545a0aa35ff96f591ec8c5ce365068051cd1d08f042389ba26b924033492421`  
		Last Modified: Wed, 07 Feb 2018 04:01:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa325a18f5a3835f3ec733bb50db52f61ed573b9506fb65da8e73a3157cf36d`  
		Last Modified: Wed, 07 Feb 2018 04:02:28 GMT  
		Size: 2.3 MB (2347819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0746c0a94303931037951e1a8cc38c6cd6eb6e7178b243d171a51a191a26bd7f`  
		Last Modified: Wed, 07 Feb 2018 04:02:45 GMT  
		Size: 78.1 MB (78141439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f3a6a525a567337f6a06ca9053efa33a6877faa5c3a8a59ff50f9129595449`  
		Last Modified: Wed, 07 Feb 2018 04:02:27 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm variant v7

```console
$ docker pull redmine@sha256:0bbdfe3e456104e7c6dbbbcd9aea19f9c2d83a1c8f02e21899865bb39ee5c3a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.0 MB (237047664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd77da5c37e71d28dc96e812763fac25f6c0c0e5c1bfdfa99cfdcec54f5ee932`
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
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 17:11:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 17:16:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 17:16:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 17:16:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 17:16:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 17:16:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 17:16:21 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 19:46:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 19:47:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:47:25 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:47:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 19:47:40 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 19:47:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 19:48:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:48:45 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 19:48:46 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 19:53:34 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Feb 2018 19:53:35 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Feb 2018 19:53:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 19:57:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:57:55 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 19:57:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 19:57:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 19:57:56 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 19:57:56 GMT
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
	-	`sha256:3e39d4fb496cb68f1bd9f8f45915289b46c42e6bf4a41ffaa27c758ae048469f`  
		Last Modified: Thu, 15 Feb 2018 17:29:41 GMT  
		Size: 30.6 MB (30584280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ab12fa1260d5fc889bbd14346eddd8cb460d632c0d1f31ffad81699e4529ec`  
		Last Modified: Thu, 15 Feb 2018 17:29:31 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7896735727bab0d350679ef15bc452ef54cd5aee0a25a4c76299287fb24bce0f`  
		Last Modified: Thu, 15 Feb 2018 19:59:41 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf34f2dfe726fcb45c1512ffe73fffe81289c89cc8f02c4c81d7aa7cc259f57`  
		Last Modified: Thu, 15 Feb 2018 19:59:44 GMT  
		Size: 14.1 MB (14134525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b764310bac398a4ddf3acccc989b9c2581743216c69602b6065252e95f1a512d`  
		Last Modified: Thu, 15 Feb 2018 19:59:39 GMT  
		Size: 475.3 KB (475265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2a365ba5d214dc58c0c7ff58905ca94ffef88619a4125cb07687345c8c958f`  
		Last Modified: Thu, 15 Feb 2018 19:59:39 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43832d230574a36c5f68eebb7c4e4307ac47e27973189d993478b197ebd7410`  
		Last Modified: Thu, 15 Feb 2018 19:59:53 GMT  
		Size: 54.3 MB (54345131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a845eb0f9d13106c504e0df94605590ee7b69639fe3a036e153570d366e8a9`  
		Last Modified: Thu, 15 Feb 2018 19:59:36 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49da562ae3062af2bafac4ddd43d3058e04e30c20e8346deddd1032c6d02f89a`  
		Last Modified: Thu, 15 Feb 2018 20:00:25 GMT  
		Size: 2.3 MB (2347823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae23b1d6369e8ba1e61c72780206d300e03f48c6a4ec27718b353265c170176`  
		Last Modified: Thu, 15 Feb 2018 20:00:41 GMT  
		Size: 77.7 MB (77661693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4500d3419bf6d76d8c33bdd7c3904574a6160ffc380b5a60d2b9c96bee9472a8`  
		Last Modified: Thu, 15 Feb 2018 20:00:24 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:9a6265187b86fe8056de94ed763a41945af8b2f9796b176aff32185f297e1813
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242567140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbf34bee38149b6eb3d5052c13f380867da4f36ff0f86e11c5dd4738d168c66`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 23:22:13 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 23:22:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 23:29:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 23:29:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 23:29:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 23:29:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 23:29:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 23:29:40 GMT
CMD ["irb"]
# Thu, 08 Feb 2018 00:18:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 08 Feb 2018 00:19:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:19:06 GMT
ENV GOSU_VERSION=1.10
# Thu, 08 Feb 2018 00:19:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Feb 2018 00:19:12 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 08 Feb 2018 00:19:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 08 Feb 2018 00:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:21:20 GMT
ENV RAILS_ENV=production
# Thu, 08 Feb 2018 00:21:21 GMT
WORKDIR /usr/src/redmine
# Thu, 08 Feb 2018 00:33:02 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 08 Feb 2018 00:33:03 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 08 Feb 2018 00:33:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 08 Feb 2018 00:43:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Feb 2018 00:43:49 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 08 Feb 2018 00:43:50 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 08 Feb 2018 00:43:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Feb 2018 00:43:51 GMT
EXPOSE 3000/tcp
# Thu, 08 Feb 2018 00:43:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d9b486284b3c5bec99b22fb33523f7ae3d9cc4ded418d1620bab71f5af5dab`  
		Last Modified: Wed, 07 Feb 2018 23:48:17 GMT  
		Size: 32.0 MB (31999917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04dffbcf915a9756f8644d1f7f5d5b8c905aa2e836cf03942e2ed9bc3ab4a88a`  
		Last Modified: Wed, 07 Feb 2018 23:48:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c77406f864a3dbafbc3fc5c221418154d7777816aea09077c025988c66add37`  
		Last Modified: Thu, 08 Feb 2018 00:45:51 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695042b83cee098ea8f7297a39f1d37a7e71f535868eeead0f57eed9129059f6`  
		Last Modified: Thu, 08 Feb 2018 00:45:57 GMT  
		Size: 14.5 MB (14462758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd07edbb330151c1042a297bb529e91b4a005dfd7f4bd3ffbc02e6ebdbb8be65`  
		Last Modified: Thu, 08 Feb 2018 00:45:50 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa707946bc66d79231f4051b4e6b87c7915f6521317c8370481d74bf7d20dc30`  
		Last Modified: Thu, 08 Feb 2018 00:45:49 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197376722e20e43f8f807f43b79b4970e84a78fa69bf16598eb187db3b57373`  
		Last Modified: Thu, 08 Feb 2018 00:46:09 GMT  
		Size: 55.8 MB (55794545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3998a57c782c13d658c9daaba96cfb47cb8f2598734f089b7cc8a628df1239`  
		Last Modified: Thu, 08 Feb 2018 00:45:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a653214069f1c5e35c89d89890dc2e13ae76304a5b7ff887d4929886ba71d5`  
		Last Modified: Thu, 08 Feb 2018 00:46:42 GMT  
		Size: 2.3 MB (2347498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab02942bc5be346560c14361c279bad0fc9653cb781729431e06b9786ca7832`  
		Last Modified: Thu, 08 Feb 2018 00:47:02 GMT  
		Size: 78.2 MB (78199513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d640f39c63fe66337e4b0b14503d7a2c657a60257a386ae6f820e4ffceaf21`  
		Last Modified: Thu, 08 Feb 2018 00:46:47 GMT  
		Size: 1.8 KB (1790 bytes)  
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
$ docker pull redmine@sha256:b71fd54b46159f5e31d6ca98d5231afe2428346cc7f17b8ba38f977103057757
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249691351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f614e6a34e72695b62b3a0ce419c5fce48f357c8ab219c903f5e40b6d852b018`
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
# Thu, 15 Feb 2018 06:38:52 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 06:38:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 06:45:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 06:45:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 06:45:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 06:45:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:45:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 06:45:50 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 11:34:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 11:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:34:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:35:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:35:07 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 11:35:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 11:40:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:40:17 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 11:40:19 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 11:59:25 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 15 Feb 2018 11:59:27 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 15 Feb 2018 11:59:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 12:16:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 12:16:43 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 12:16:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 12:16:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 12:16:51 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 12:16:53 GMT
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
	-	`sha256:c2cd7d4e719f36beb93f19ad394d7c9cb0c8cb876fff6641142fe98bd5bea6df`  
		Last Modified: Thu, 15 Feb 2018 06:49:47 GMT  
		Size: 32.9 MB (32878282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd392e60771c890ec1b6827651b64a9cf9b3164be73ca76c68a525abadfc40a`  
		Last Modified: Thu, 15 Feb 2018 06:49:36 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a95aac1cbbed46f9115f5eaca394c19bd44d7d9b4c63085bf759f03af2806c`  
		Last Modified: Thu, 15 Feb 2018 12:18:41 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537cb8c669ec45f86233a538b24d21636f42d440099464cb53321a8ec4daf881`  
		Last Modified: Thu, 15 Feb 2018 12:18:45 GMT  
		Size: 14.7 MB (14720176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba48c81d596ee3d67f486f9b0311754134acc54720a7a7c963c6348a84cd635e`  
		Last Modified: Thu, 15 Feb 2018 12:18:38 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81693e0a84bbfa4ea694f5c90d035044094ff30e3183c5832807b6eaf8a21d78`  
		Last Modified: Thu, 15 Feb 2018 12:18:38 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb74fa77481a9f58a1ab379c6211919140ee9dccb0b07997a04df6fc54f9be3`  
		Last Modified: Thu, 15 Feb 2018 12:19:04 GMT  
		Size: 58.1 MB (58133181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96c4fd05037caa61d360e6d619173d9005b5f774c2599e56a9627363c8c4f33`  
		Last Modified: Thu, 15 Feb 2018 12:18:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127be26104d09b6d319af2925416dcdfdb671280370456d15713ac52f19e3728`  
		Last Modified: Thu, 15 Feb 2018 12:19:23 GMT  
		Size: 2.3 MB (2347819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ee542096781f234cb5c24d52092ab873fc287d602a6df217fb3ccee794ffd6`  
		Last Modified: Thu, 15 Feb 2018 12:19:38 GMT  
		Size: 79.2 MB (79154414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3102e017958dea72c9b376cd610eec283782a8e98e4ddda08ce25352ec11a84`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 1.8 KB (1793 bytes)  
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
$ docker pull redmine@sha256:25c66fd1b6c5ade3fd455d0f5e56a3694d1f6c61065444f0f8827177016b96e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.9-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:efe80747e3b54b58094c72e04c877723b707350ac023bf86e5264dcfceebf6ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269218439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdedb3d39dd2cca7967913f8cc704844bf9a8aa9b2b86477f14b8b93bcce2d26`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 01:57:44 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:57:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:00:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:00:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:00:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:00:59 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:20:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:21:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:21:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:21:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:21:15 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:21:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:22:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:22:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:30:17 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 03:30:17 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 03:30:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:32:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:33:17 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:33:17 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:33:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:33:17 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:33:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Feb 2018 03:33:35 GMT
ENV PASSENGER_VERSION=5.2.0
# Wed, 07 Feb 2018 03:33:52 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:33:53 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 07 Feb 2018 03:33:54 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16016bc19731574fd04073a20e70261f3a1a28aa40660c0dde554941b0c712a6`  
		Last Modified: Wed, 07 Feb 2018 02:27:35 GMT  
		Size: 31.9 MB (31880406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dacde5aa5c5c2edacb8e16831c7d4a0380b36bbd6fdfed8ae99c99363c36d4`  
		Last Modified: Wed, 07 Feb 2018 02:27:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55a69547bf6bd992255873e94984c72e9c7fd723625aab15e26070606c3e131`  
		Last Modified: Wed, 07 Feb 2018 03:37:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd8ef273c00fab9fdf08c776b517c4622a77834c55b772cceb7400945ccfca5`  
		Last Modified: Wed, 07 Feb 2018 03:37:07 GMT  
		Size: 14.7 MB (14650316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fca318eb7fc0c93199b0ae9c85c7f56c5c8b25fdabaee31e0d3aa1be2c25e1d`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbb3caa0ac47226119f024cab2f3b3e6bbd7eb0c2d530bbcf00f1385ee4da38`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bea97382ce223e8d56b3b0eaa5c3175d495e22115f02ea4d2069e79e096d30`  
		Last Modified: Wed, 07 Feb 2018 03:37:12 GMT  
		Size: 59.3 MB (59271188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea707158ba1490bd6c6f1ad84b3213cd79b55583523c5b1062b6b105b61bef3`  
		Last Modified: Wed, 07 Feb 2018 03:36:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae7e527b737dacdf29c964644de164f8c94c718105079dfcb45e11be3a9ff9e`  
		Last Modified: Wed, 07 Feb 2018 03:38:31 GMT  
		Size: 2.3 MB (2347496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cbe1e6e252f951a245450b84986a539f846b225fbc87e3044ee2e5be8570354`  
		Last Modified: Wed, 07 Feb 2018 03:38:47 GMT  
		Size: 78.9 MB (78931972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2648f0c11b0b6f6a936d8e3d9e6c99c4299d91d53cd88c9db55e1841664d1a7a`  
		Last Modified: Wed, 07 Feb 2018 03:38:29 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681ac162894ccd5fcabcacf88677a1b5e5ca711994b5773ac3076e57fd72380f`  
		Last Modified: Wed, 07 Feb 2018 03:39:32 GMT  
		Size: 14.5 MB (14483982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e2d3b9a8dd21cd0ef981fba45d9fde4ee2ac8e150ea73f16d4c81f6e38e789`  
		Last Modified: Wed, 07 Feb 2018 03:39:27 GMT  
		Size: 4.4 MB (4354979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:25c66fd1b6c5ade3fd455d0f5e56a3694d1f6c61065444f0f8827177016b96e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:efe80747e3b54b58094c72e04c877723b707350ac023bf86e5264dcfceebf6ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269218439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdedb3d39dd2cca7967913f8cc704844bf9a8aa9b2b86477f14b8b93bcce2d26`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 01:57:44 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:57:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:00:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:00:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:00:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:00:59 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:20:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:21:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:21:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:21:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:21:15 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:21:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:22:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:22:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:30:17 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 03:30:17 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 03:30:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:32:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:33:17 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:33:17 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:33:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:33:17 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:33:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Feb 2018 03:33:35 GMT
ENV PASSENGER_VERSION=5.2.0
# Wed, 07 Feb 2018 03:33:52 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:33:53 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 07 Feb 2018 03:33:54 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16016bc19731574fd04073a20e70261f3a1a28aa40660c0dde554941b0c712a6`  
		Last Modified: Wed, 07 Feb 2018 02:27:35 GMT  
		Size: 31.9 MB (31880406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dacde5aa5c5c2edacb8e16831c7d4a0380b36bbd6fdfed8ae99c99363c36d4`  
		Last Modified: Wed, 07 Feb 2018 02:27:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55a69547bf6bd992255873e94984c72e9c7fd723625aab15e26070606c3e131`  
		Last Modified: Wed, 07 Feb 2018 03:37:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd8ef273c00fab9fdf08c776b517c4622a77834c55b772cceb7400945ccfca5`  
		Last Modified: Wed, 07 Feb 2018 03:37:07 GMT  
		Size: 14.7 MB (14650316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fca318eb7fc0c93199b0ae9c85c7f56c5c8b25fdabaee31e0d3aa1be2c25e1d`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbb3caa0ac47226119f024cab2f3b3e6bbd7eb0c2d530bbcf00f1385ee4da38`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bea97382ce223e8d56b3b0eaa5c3175d495e22115f02ea4d2069e79e096d30`  
		Last Modified: Wed, 07 Feb 2018 03:37:12 GMT  
		Size: 59.3 MB (59271188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea707158ba1490bd6c6f1ad84b3213cd79b55583523c5b1062b6b105b61bef3`  
		Last Modified: Wed, 07 Feb 2018 03:36:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae7e527b737dacdf29c964644de164f8c94c718105079dfcb45e11be3a9ff9e`  
		Last Modified: Wed, 07 Feb 2018 03:38:31 GMT  
		Size: 2.3 MB (2347496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cbe1e6e252f951a245450b84986a539f846b225fbc87e3044ee2e5be8570354`  
		Last Modified: Wed, 07 Feb 2018 03:38:47 GMT  
		Size: 78.9 MB (78931972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2648f0c11b0b6f6a936d8e3d9e6c99c4299d91d53cd88c9db55e1841664d1a7a`  
		Last Modified: Wed, 07 Feb 2018 03:38:29 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681ac162894ccd5fcabcacf88677a1b5e5ca711994b5773ac3076e57fd72380f`  
		Last Modified: Wed, 07 Feb 2018 03:39:32 GMT  
		Size: 14.5 MB (14483982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e2d3b9a8dd21cd0ef981fba45d9fde4ee2ac8e150ea73f16d4c81f6e38e789`  
		Last Modified: Wed, 07 Feb 2018 03:39:27 GMT  
		Size: 4.4 MB (4354979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:e80eff0cbc75ad2985419323d670d7c52970cad45ee36142d612c83c5351f8dd
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
$ docker pull redmine@sha256:44e50a8a319659f81d593e2301c034ccd46344f804674560d2a9b13c83aad180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250392712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c677049a88dc8d940083682bca37bc04bbcd712917698bea0c2ef0621cf72d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 01:57:44 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:57:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:00:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:00:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:00:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:00:59 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:20:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:21:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:21:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:21:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:21:15 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:21:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:22:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:22:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:22:06 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 03:22:17 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 03:22:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:24:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:24:48 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:24:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:24:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:24:49 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:24:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16016bc19731574fd04073a20e70261f3a1a28aa40660c0dde554941b0c712a6`  
		Last Modified: Wed, 07 Feb 2018 02:27:35 GMT  
		Size: 31.9 MB (31880406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dacde5aa5c5c2edacb8e16831c7d4a0380b36bbd6fdfed8ae99c99363c36d4`  
		Last Modified: Wed, 07 Feb 2018 02:27:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55a69547bf6bd992255873e94984c72e9c7fd723625aab15e26070606c3e131`  
		Last Modified: Wed, 07 Feb 2018 03:37:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd8ef273c00fab9fdf08c776b517c4622a77834c55b772cceb7400945ccfca5`  
		Last Modified: Wed, 07 Feb 2018 03:37:07 GMT  
		Size: 14.7 MB (14650316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fca318eb7fc0c93199b0ae9c85c7f56c5c8b25fdabaee31e0d3aa1be2c25e1d`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbb3caa0ac47226119f024cab2f3b3e6bbd7eb0c2d530bbcf00f1385ee4da38`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bea97382ce223e8d56b3b0eaa5c3175d495e22115f02ea4d2069e79e096d30`  
		Last Modified: Wed, 07 Feb 2018 03:37:12 GMT  
		Size: 59.3 MB (59271188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea707158ba1490bd6c6f1ad84b3213cd79b55583523c5b1062b6b105b61bef3`  
		Last Modified: Wed, 07 Feb 2018 03:36:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79da7be57e0dde758f684df2e5b91d23368c3efab7fedd919de89be08dba82c7`  
		Last Modified: Wed, 07 Feb 2018 03:37:01 GMT  
		Size: 2.4 MB (2392397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961627fed9ff86e39eab63a656e89cd59d0ab4304628aa8cfd4fc8669848395a`  
		Last Modified: Wed, 07 Feb 2018 03:37:15 GMT  
		Size: 78.9 MB (78900306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf9ec838e5c715f413e6df95207bb01d6c058c25258155c1841266caf0ae489`  
		Last Modified: Wed, 07 Feb 2018 03:36:56 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:ffbcee9326bd72a9567a588af7a1b99b9261ecbe58007e67f6c482e1b62c1eed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242815897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67cd3aa60a773ea30de44ae6282ff8c00a928f7b933fa39ef24eaf06942b1147`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 03:14:17 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 03:14:17 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 03:18:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 03:18:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 03:18:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 03:18:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 03:18:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 03:18:39 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:50:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:50:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:50:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:50:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:50:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:51:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:51:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:51:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:51:28 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 03:51:28 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 03:51:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:55:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:55:59 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:55:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:56:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:56:00 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:56:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0504b064a580c5f7e71f6a13534cae23247a72e92fd5454aef9839bc4b76d0aa`  
		Last Modified: Wed, 07 Feb 2018 03:26:26 GMT  
		Size: 30.8 MB (30805063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66bac1016fc97b008d7b7ec0a8e5c56c84bc7474615aa229957af568b374981`  
		Last Modified: Wed, 07 Feb 2018 03:26:15 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f23cd933bfcf7d5350b00f76539dffe6b89a83b6034656eabb608959ffe6a82`  
		Last Modified: Wed, 07 Feb 2018 04:01:52 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6db1c2d7976dde328af57014e290d22398da472c18e3f871c3e50616809f6f`  
		Last Modified: Wed, 07 Feb 2018 04:01:56 GMT  
		Size: 14.3 MB (14347468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4122f71a5735b74008ea80bca33964b81a42274c352f7add1683f81accad7ef3`  
		Last Modified: Wed, 07 Feb 2018 04:01:50 GMT  
		Size: 491.1 KB (491123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7239e7e5e191dd3c184a1e81dade4fc679221875e85200545f4a9fd7d9207d5`  
		Last Modified: Wed, 07 Feb 2018 04:01:51 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2293bd4888d383fac3e46bdbd5634a07c6ef95b69727865c1c8f06cfdb1e018`  
		Last Modified: Wed, 07 Feb 2018 04:02:08 GMT  
		Size: 56.6 MB (56611079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545a0aa35ff96f591ec8c5ce365068051cd1d08f042389ba26b924033492421`  
		Last Modified: Wed, 07 Feb 2018 04:01:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9761b099c8054b82b86b2f6387e85a854c56dc90b1e013607c7643282259a59b`  
		Last Modified: Wed, 07 Feb 2018 04:01:51 GMT  
		Size: 2.4 MB (2392597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7270f924e37c2cfc6d0ea135b8eb99facd9c58f7f99b861a66c0b2f7de36c21b`  
		Last Modified: Wed, 07 Feb 2018 04:02:09 GMT  
		Size: 78.1 MB (78141263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e42805dac38918ee1b3381e1f96654d11f258e178837b972ab8d292af30e78`  
		Last Modified: Wed, 07 Feb 2018 04:01:49 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:6ae79568afea5ab92ed2543b9cbcee23cfd6076c7bf43ab0dd370340719ace32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237091472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dc88363c73ad7b083453d4a8a26acaf2730cca3edfa98f11dd8d4a6567685d`
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
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 17:11:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 17:16:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 17:16:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 17:16:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 17:16:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 17:16:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 17:16:21 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 19:46:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 19:47:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:47:25 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:47:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 19:47:40 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 19:47:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 19:48:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:48:45 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 19:48:46 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 19:48:46 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Feb 2018 19:48:46 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Feb 2018 19:48:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 19:52:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:53:04 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 19:53:04 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 19:53:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 19:53:05 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 19:53:05 GMT
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
	-	`sha256:3e39d4fb496cb68f1bd9f8f45915289b46c42e6bf4a41ffaa27c758ae048469f`  
		Last Modified: Thu, 15 Feb 2018 17:29:41 GMT  
		Size: 30.6 MB (30584280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ab12fa1260d5fc889bbd14346eddd8cb460d632c0d1f31ffad81699e4529ec`  
		Last Modified: Thu, 15 Feb 2018 17:29:31 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7896735727bab0d350679ef15bc452ef54cd5aee0a25a4c76299287fb24bce0f`  
		Last Modified: Thu, 15 Feb 2018 19:59:41 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf34f2dfe726fcb45c1512ffe73fffe81289c89cc8f02c4c81d7aa7cc259f57`  
		Last Modified: Thu, 15 Feb 2018 19:59:44 GMT  
		Size: 14.1 MB (14134525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b764310bac398a4ddf3acccc989b9c2581743216c69602b6065252e95f1a512d`  
		Last Modified: Thu, 15 Feb 2018 19:59:39 GMT  
		Size: 475.3 KB (475265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2a365ba5d214dc58c0c7ff58905ca94ffef88619a4125cb07687345c8c958f`  
		Last Modified: Thu, 15 Feb 2018 19:59:39 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43832d230574a36c5f68eebb7c4e4307ac47e27973189d993478b197ebd7410`  
		Last Modified: Thu, 15 Feb 2018 19:59:53 GMT  
		Size: 54.3 MB (54345131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a845eb0f9d13106c504e0df94605590ee7b69639fe3a036e153570d366e8a9`  
		Last Modified: Thu, 15 Feb 2018 19:59:36 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a90f47d0e9d7757c2c0354f88f0bcfa580eba944253f2f3d9efd06a27f674c`  
		Last Modified: Thu, 15 Feb 2018 19:59:38 GMT  
		Size: 2.4 MB (2392602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c08192673546a61d398a94280917c8a33ecf958a1925dc97d1f990a3301b8`  
		Last Modified: Thu, 15 Feb 2018 19:59:55 GMT  
		Size: 77.7 MB (77660722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97ecdb977cc35a018a95fa1e9f966747720a7875fc30cca656ef95474828c40`  
		Last Modified: Thu, 15 Feb 2018 19:59:36 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:dc9b2b4a927897e4544f2f389a1778b4dbe21b72f413260a9cad2f385861b0b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242612369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820a2c5bdebd4ddfe26ef53f61ecb084b6aa2edba1ac504549145341f8c51edc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 23:22:13 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 23:22:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 23:29:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 23:29:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 23:29:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 23:29:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 23:29:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 23:29:40 GMT
CMD ["irb"]
# Thu, 08 Feb 2018 00:18:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 08 Feb 2018 00:19:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:19:06 GMT
ENV GOSU_VERSION=1.10
# Thu, 08 Feb 2018 00:19:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Feb 2018 00:19:12 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 08 Feb 2018 00:19:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 08 Feb 2018 00:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:21:20 GMT
ENV RAILS_ENV=production
# Thu, 08 Feb 2018 00:21:21 GMT
WORKDIR /usr/src/redmine
# Thu, 08 Feb 2018 00:21:21 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 08 Feb 2018 00:21:22 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 08 Feb 2018 00:21:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 08 Feb 2018 00:32:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Feb 2018 00:32:45 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 08 Feb 2018 00:32:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 08 Feb 2018 00:32:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Feb 2018 00:32:48 GMT
EXPOSE 3000/tcp
# Thu, 08 Feb 2018 00:32:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d9b486284b3c5bec99b22fb33523f7ae3d9cc4ded418d1620bab71f5af5dab`  
		Last Modified: Wed, 07 Feb 2018 23:48:17 GMT  
		Size: 32.0 MB (31999917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04dffbcf915a9756f8644d1f7f5d5b8c905aa2e836cf03942e2ed9bc3ab4a88a`  
		Last Modified: Wed, 07 Feb 2018 23:48:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c77406f864a3dbafbc3fc5c221418154d7777816aea09077c025988c66add37`  
		Last Modified: Thu, 08 Feb 2018 00:45:51 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695042b83cee098ea8f7297a39f1d37a7e71f535868eeead0f57eed9129059f6`  
		Last Modified: Thu, 08 Feb 2018 00:45:57 GMT  
		Size: 14.5 MB (14462758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd07edbb330151c1042a297bb529e91b4a005dfd7f4bd3ffbc02e6ebdbb8be65`  
		Last Modified: Thu, 08 Feb 2018 00:45:50 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa707946bc66d79231f4051b4e6b87c7915f6521317c8370481d74bf7d20dc30`  
		Last Modified: Thu, 08 Feb 2018 00:45:49 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197376722e20e43f8f807f43b79b4970e84a78fa69bf16598eb187db3b57373`  
		Last Modified: Thu, 08 Feb 2018 00:46:09 GMT  
		Size: 55.8 MB (55794545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3998a57c782c13d658c9daaba96cfb47cb8f2598734f089b7cc8a628df1239`  
		Last Modified: Thu, 08 Feb 2018 00:45:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b7686c98c3fd3fd7ab21b58634b6d3476a25ab39add96a093c9626b293a539`  
		Last Modified: Thu, 08 Feb 2018 00:45:49 GMT  
		Size: 2.4 MB (2392398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd555c1d6f5896f522f961a172eb91f6cf4b2b3819d60fa648b2ede8c6b54bb5`  
		Last Modified: Thu, 08 Feb 2018 00:46:09 GMT  
		Size: 78.2 MB (78199839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd221eb6dc6f000df239edb44add864ebe9e7019d4ec9be6e7023280ec094585`  
		Last Modified: Thu, 08 Feb 2018 00:45:48 GMT  
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
$ docker pull redmine@sha256:f83d64c3c6f99dbddd2f67c2c78b0b5cab388d252bcc2ec07112733e7245444d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249736270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15835f13f7ba38651d0fe4400e294db4828c9321ca9800edbab3c943d57fb01a`
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
# Thu, 15 Feb 2018 06:38:52 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 06:38:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 06:45:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 06:45:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 06:45:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 06:45:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:45:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 06:45:50 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 11:34:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 11:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:34:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:35:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:35:07 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 11:35:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 11:40:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:40:17 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 11:40:19 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 11:40:21 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Feb 2018 11:40:23 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Feb 2018 11:40:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 11:58:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 11:58:52 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 11:58:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 11:59:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 11:59:05 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 11:59:08 GMT
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
	-	`sha256:c2cd7d4e719f36beb93f19ad394d7c9cb0c8cb876fff6641142fe98bd5bea6df`  
		Last Modified: Thu, 15 Feb 2018 06:49:47 GMT  
		Size: 32.9 MB (32878282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd392e60771c890ec1b6827651b64a9cf9b3164be73ca76c68a525abadfc40a`  
		Last Modified: Thu, 15 Feb 2018 06:49:36 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a95aac1cbbed46f9115f5eaca394c19bd44d7d9b4c63085bf759f03af2806c`  
		Last Modified: Thu, 15 Feb 2018 12:18:41 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537cb8c669ec45f86233a538b24d21636f42d440099464cb53321a8ec4daf881`  
		Last Modified: Thu, 15 Feb 2018 12:18:45 GMT  
		Size: 14.7 MB (14720176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba48c81d596ee3d67f486f9b0311754134acc54720a7a7c963c6348a84cd635e`  
		Last Modified: Thu, 15 Feb 2018 12:18:38 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81693e0a84bbfa4ea694f5c90d035044094ff30e3183c5832807b6eaf8a21d78`  
		Last Modified: Thu, 15 Feb 2018 12:18:38 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb74fa77481a9f58a1ab379c6211919140ee9dccb0b07997a04df6fc54f9be3`  
		Last Modified: Thu, 15 Feb 2018 12:19:04 GMT  
		Size: 58.1 MB (58133181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96c4fd05037caa61d360e6d619173d9005b5f774c2599e56a9627363c8c4f33`  
		Last Modified: Thu, 15 Feb 2018 12:18:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c2cbd9a62ebff7a64b639d5357438159b92386c22be5d89d59c2bcf99962`  
		Last Modified: Thu, 15 Feb 2018 12:18:39 GMT  
		Size: 2.4 MB (2392609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9b68126db11bf30210c2e82d4988f449686afd8f2f332dfdc0ffe3acb230eb`  
		Last Modified: Thu, 15 Feb 2018 12:18:53 GMT  
		Size: 79.2 MB (79154543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4853447d571f26b73333cc72de79f01845d11a8639eb2c760583caa07b86fa1`  
		Last Modified: Thu, 15 Feb 2018 12:18:35 GMT  
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
$ docker pull redmine@sha256:e80eff0cbc75ad2985419323d670d7c52970cad45ee36142d612c83c5351f8dd
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
$ docker pull redmine@sha256:44e50a8a319659f81d593e2301c034ccd46344f804674560d2a9b13c83aad180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250392712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c677049a88dc8d940083682bca37bc04bbcd712917698bea0c2ef0621cf72d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 01:57:44 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:57:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:00:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:00:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:00:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:00:59 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:20:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:21:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:21:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:21:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:21:15 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:21:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:22:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:22:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:22:06 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 03:22:17 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 03:22:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:24:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:24:48 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:24:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:24:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:24:49 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:24:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16016bc19731574fd04073a20e70261f3a1a28aa40660c0dde554941b0c712a6`  
		Last Modified: Wed, 07 Feb 2018 02:27:35 GMT  
		Size: 31.9 MB (31880406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dacde5aa5c5c2edacb8e16831c7d4a0380b36bbd6fdfed8ae99c99363c36d4`  
		Last Modified: Wed, 07 Feb 2018 02:27:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55a69547bf6bd992255873e94984c72e9c7fd723625aab15e26070606c3e131`  
		Last Modified: Wed, 07 Feb 2018 03:37:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd8ef273c00fab9fdf08c776b517c4622a77834c55b772cceb7400945ccfca5`  
		Last Modified: Wed, 07 Feb 2018 03:37:07 GMT  
		Size: 14.7 MB (14650316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fca318eb7fc0c93199b0ae9c85c7f56c5c8b25fdabaee31e0d3aa1be2c25e1d`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbb3caa0ac47226119f024cab2f3b3e6bbd7eb0c2d530bbcf00f1385ee4da38`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bea97382ce223e8d56b3b0eaa5c3175d495e22115f02ea4d2069e79e096d30`  
		Last Modified: Wed, 07 Feb 2018 03:37:12 GMT  
		Size: 59.3 MB (59271188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea707158ba1490bd6c6f1ad84b3213cd79b55583523c5b1062b6b105b61bef3`  
		Last Modified: Wed, 07 Feb 2018 03:36:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79da7be57e0dde758f684df2e5b91d23368c3efab7fedd919de89be08dba82c7`  
		Last Modified: Wed, 07 Feb 2018 03:37:01 GMT  
		Size: 2.4 MB (2392397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961627fed9ff86e39eab63a656e89cd59d0ab4304628aa8cfd4fc8669848395a`  
		Last Modified: Wed, 07 Feb 2018 03:37:15 GMT  
		Size: 78.9 MB (78900306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf9ec838e5c715f413e6df95207bb01d6c058c25258155c1841266caf0ae489`  
		Last Modified: Wed, 07 Feb 2018 03:36:56 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm variant v5

```console
$ docker pull redmine@sha256:ffbcee9326bd72a9567a588af7a1b99b9261ecbe58007e67f6c482e1b62c1eed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.8 MB (242815897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67cd3aa60a773ea30de44ae6282ff8c00a928f7b933fa39ef24eaf06942b1147`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 03:14:17 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 03:14:17 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 03:18:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 03:18:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 03:18:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 03:18:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 03:18:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 03:18:39 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:50:00 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:50:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:50:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:50:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:50:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:51:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:51:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:51:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:51:28 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 03:51:28 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 03:51:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:55:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:55:59 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:55:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:56:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:56:00 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:56:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0504b064a580c5f7e71f6a13534cae23247a72e92fd5454aef9839bc4b76d0aa`  
		Last Modified: Wed, 07 Feb 2018 03:26:26 GMT  
		Size: 30.8 MB (30805063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66bac1016fc97b008d7b7ec0a8e5c56c84bc7474615aa229957af568b374981`  
		Last Modified: Wed, 07 Feb 2018 03:26:15 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f23cd933bfcf7d5350b00f76539dffe6b89a83b6034656eabb608959ffe6a82`  
		Last Modified: Wed, 07 Feb 2018 04:01:52 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6db1c2d7976dde328af57014e290d22398da472c18e3f871c3e50616809f6f`  
		Last Modified: Wed, 07 Feb 2018 04:01:56 GMT  
		Size: 14.3 MB (14347468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4122f71a5735b74008ea80bca33964b81a42274c352f7add1683f81accad7ef3`  
		Last Modified: Wed, 07 Feb 2018 04:01:50 GMT  
		Size: 491.1 KB (491123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7239e7e5e191dd3c184a1e81dade4fc679221875e85200545f4a9fd7d9207d5`  
		Last Modified: Wed, 07 Feb 2018 04:01:51 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2293bd4888d383fac3e46bdbd5634a07c6ef95b69727865c1c8f06cfdb1e018`  
		Last Modified: Wed, 07 Feb 2018 04:02:08 GMT  
		Size: 56.6 MB (56611079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0545a0aa35ff96f591ec8c5ce365068051cd1d08f042389ba26b924033492421`  
		Last Modified: Wed, 07 Feb 2018 04:01:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9761b099c8054b82b86b2f6387e85a854c56dc90b1e013607c7643282259a59b`  
		Last Modified: Wed, 07 Feb 2018 04:01:51 GMT  
		Size: 2.4 MB (2392597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7270f924e37c2cfc6d0ea135b8eb99facd9c58f7f99b861a66c0b2f7de36c21b`  
		Last Modified: Wed, 07 Feb 2018 04:02:09 GMT  
		Size: 78.1 MB (78141263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e42805dac38918ee1b3381e1f96654d11f258e178837b972ab8d292af30e78`  
		Last Modified: Wed, 07 Feb 2018 04:01:49 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm variant v7

```console
$ docker pull redmine@sha256:6ae79568afea5ab92ed2543b9cbcee23cfd6076c7bf43ab0dd370340719ace32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237091472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dc88363c73ad7b083453d4a8a26acaf2730cca3edfa98f11dd8d4a6567685d`
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
# Thu, 15 Feb 2018 17:11:45 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 17:11:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 17:16:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 17:16:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 17:16:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 17:16:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 17:16:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 17:16:21 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 19:46:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 19:47:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:47:25 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:47:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 19:47:40 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 19:47:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 19:48:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:48:45 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 19:48:46 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 19:48:46 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Feb 2018 19:48:46 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Feb 2018 19:48:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 19:52:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:53:04 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 19:53:04 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 19:53:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 19:53:05 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 19:53:05 GMT
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
	-	`sha256:3e39d4fb496cb68f1bd9f8f45915289b46c42e6bf4a41ffaa27c758ae048469f`  
		Last Modified: Thu, 15 Feb 2018 17:29:41 GMT  
		Size: 30.6 MB (30584280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ab12fa1260d5fc889bbd14346eddd8cb460d632c0d1f31ffad81699e4529ec`  
		Last Modified: Thu, 15 Feb 2018 17:29:31 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7896735727bab0d350679ef15bc452ef54cd5aee0a25a4c76299287fb24bce0f`  
		Last Modified: Thu, 15 Feb 2018 19:59:41 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf34f2dfe726fcb45c1512ffe73fffe81289c89cc8f02c4c81d7aa7cc259f57`  
		Last Modified: Thu, 15 Feb 2018 19:59:44 GMT  
		Size: 14.1 MB (14134525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b764310bac398a4ddf3acccc989b9c2581743216c69602b6065252e95f1a512d`  
		Last Modified: Thu, 15 Feb 2018 19:59:39 GMT  
		Size: 475.3 KB (475265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2a365ba5d214dc58c0c7ff58905ca94ffef88619a4125cb07687345c8c958f`  
		Last Modified: Thu, 15 Feb 2018 19:59:39 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43832d230574a36c5f68eebb7c4e4307ac47e27973189d993478b197ebd7410`  
		Last Modified: Thu, 15 Feb 2018 19:59:53 GMT  
		Size: 54.3 MB (54345131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a845eb0f9d13106c504e0df94605590ee7b69639fe3a036e153570d366e8a9`  
		Last Modified: Thu, 15 Feb 2018 19:59:36 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a90f47d0e9d7757c2c0354f88f0bcfa580eba944253f2f3d9efd06a27f674c`  
		Last Modified: Thu, 15 Feb 2018 19:59:38 GMT  
		Size: 2.4 MB (2392602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c08192673546a61d398a94280917c8a33ecf958a1925dc97d1f990a3301b8`  
		Last Modified: Thu, 15 Feb 2018 19:59:55 GMT  
		Size: 77.7 MB (77660722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97ecdb977cc35a018a95fa1e9f966747720a7875fc30cca656ef95474828c40`  
		Last Modified: Thu, 15 Feb 2018 19:59:36 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:dc9b2b4a927897e4544f2f389a1778b4dbe21b72f413260a9cad2f385861b0b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242612369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820a2c5bdebd4ddfe26ef53f61ecb084b6aa2edba1ac504549145341f8c51edc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 23:22:13 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 23:22:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 23:29:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 23:29:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 23:29:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 23:29:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 23:29:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 23:29:40 GMT
CMD ["irb"]
# Thu, 08 Feb 2018 00:18:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 08 Feb 2018 00:19:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:19:06 GMT
ENV GOSU_VERSION=1.10
# Thu, 08 Feb 2018 00:19:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Feb 2018 00:19:12 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 08 Feb 2018 00:19:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 08 Feb 2018 00:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:21:20 GMT
ENV RAILS_ENV=production
# Thu, 08 Feb 2018 00:21:21 GMT
WORKDIR /usr/src/redmine
# Thu, 08 Feb 2018 00:21:21 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 08 Feb 2018 00:21:22 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 08 Feb 2018 00:21:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 08 Feb 2018 00:32:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Feb 2018 00:32:45 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 08 Feb 2018 00:32:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 08 Feb 2018 00:32:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Feb 2018 00:32:48 GMT
EXPOSE 3000/tcp
# Thu, 08 Feb 2018 00:32:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d9b486284b3c5bec99b22fb33523f7ae3d9cc4ded418d1620bab71f5af5dab`  
		Last Modified: Wed, 07 Feb 2018 23:48:17 GMT  
		Size: 32.0 MB (31999917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04dffbcf915a9756f8644d1f7f5d5b8c905aa2e836cf03942e2ed9bc3ab4a88a`  
		Last Modified: Wed, 07 Feb 2018 23:48:03 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c77406f864a3dbafbc3fc5c221418154d7777816aea09077c025988c66add37`  
		Last Modified: Thu, 08 Feb 2018 00:45:51 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695042b83cee098ea8f7297a39f1d37a7e71f535868eeead0f57eed9129059f6`  
		Last Modified: Thu, 08 Feb 2018 00:45:57 GMT  
		Size: 14.5 MB (14462758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd07edbb330151c1042a297bb529e91b4a005dfd7f4bd3ffbc02e6ebdbb8be65`  
		Last Modified: Thu, 08 Feb 2018 00:45:50 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa707946bc66d79231f4051b4e6b87c7915f6521317c8370481d74bf7d20dc30`  
		Last Modified: Thu, 08 Feb 2018 00:45:49 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6197376722e20e43f8f807f43b79b4970e84a78fa69bf16598eb187db3b57373`  
		Last Modified: Thu, 08 Feb 2018 00:46:09 GMT  
		Size: 55.8 MB (55794545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3998a57c782c13d658c9daaba96cfb47cb8f2598734f089b7cc8a628df1239`  
		Last Modified: Thu, 08 Feb 2018 00:45:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b7686c98c3fd3fd7ab21b58634b6d3476a25ab39add96a093c9626b293a539`  
		Last Modified: Thu, 08 Feb 2018 00:45:49 GMT  
		Size: 2.4 MB (2392398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd555c1d6f5896f522f961a172eb91f6cf4b2b3819d60fa648b2ede8c6b54bb5`  
		Last Modified: Thu, 08 Feb 2018 00:46:09 GMT  
		Size: 78.2 MB (78199839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd221eb6dc6f000df239edb44add864ebe9e7019d4ec9be6e7023280ec094585`  
		Last Modified: Thu, 08 Feb 2018 00:45:48 GMT  
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
$ docker pull redmine@sha256:f83d64c3c6f99dbddd2f67c2c78b0b5cab388d252bcc2ec07112733e7245444d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249736270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15835f13f7ba38651d0fe4400e294db4828c9321ca9800edbab3c943d57fb01a`
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
# Thu, 15 Feb 2018 06:38:52 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 06:38:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 06:45:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 06:45:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 06:45:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 06:45:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:45:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 06:45:50 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 11:34:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 11:34:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:34:55 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:35:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:35:07 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 11:35:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 11:40:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:40:17 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 11:40:19 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 11:40:21 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 15 Feb 2018 11:40:23 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 15 Feb 2018 11:40:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 11:58:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 11:58:52 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 11:58:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 11:59:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 11:59:05 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 11:59:08 GMT
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
	-	`sha256:c2cd7d4e719f36beb93f19ad394d7c9cb0c8cb876fff6641142fe98bd5bea6df`  
		Last Modified: Thu, 15 Feb 2018 06:49:47 GMT  
		Size: 32.9 MB (32878282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd392e60771c890ec1b6827651b64a9cf9b3164be73ca76c68a525abadfc40a`  
		Last Modified: Thu, 15 Feb 2018 06:49:36 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a95aac1cbbed46f9115f5eaca394c19bd44d7d9b4c63085bf759f03af2806c`  
		Last Modified: Thu, 15 Feb 2018 12:18:41 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537cb8c669ec45f86233a538b24d21636f42d440099464cb53321a8ec4daf881`  
		Last Modified: Thu, 15 Feb 2018 12:18:45 GMT  
		Size: 14.7 MB (14720176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba48c81d596ee3d67f486f9b0311754134acc54720a7a7c963c6348a84cd635e`  
		Last Modified: Thu, 15 Feb 2018 12:18:38 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81693e0a84bbfa4ea694f5c90d035044094ff30e3183c5832807b6eaf8a21d78`  
		Last Modified: Thu, 15 Feb 2018 12:18:38 GMT  
		Size: 8.6 KB (8637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb74fa77481a9f58a1ab379c6211919140ee9dccb0b07997a04df6fc54f9be3`  
		Last Modified: Thu, 15 Feb 2018 12:19:04 GMT  
		Size: 58.1 MB (58133181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96c4fd05037caa61d360e6d619173d9005b5f774c2599e56a9627363c8c4f33`  
		Last Modified: Thu, 15 Feb 2018 12:18:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c2cbd9a62ebff7a64b639d5357438159b92386c22be5d89d59c2bcf99962`  
		Last Modified: Thu, 15 Feb 2018 12:18:39 GMT  
		Size: 2.4 MB (2392609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9b68126db11bf30210c2e82d4988f449686afd8f2f332dfdc0ffe3acb230eb`  
		Last Modified: Thu, 15 Feb 2018 12:18:53 GMT  
		Size: 79.2 MB (79154543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4853447d571f26b73333cc72de79f01845d11a8639eb2c760583caa07b86fa1`  
		Last Modified: Thu, 15 Feb 2018 12:18:35 GMT  
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
$ docker pull redmine@sha256:831a1ae192b4982e3278522a4f9a1636172dc23369ee9fdafcbfce201e8df470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.6-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:2f7e5bad28491c9c71300964ca240dd445dc46db03e43e546bb051e08e84cb88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269231479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b2cb32a7713f979581a5440d1691ca9a46fe23f40cc072e689748c5de22bb1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 01:57:44 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:57:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:00:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:00:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:00:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:00:59 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:20:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:21:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:21:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:21:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:21:15 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:21:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:22:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:22:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:22:06 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 03:22:17 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 03:22:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:24:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:24:48 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:24:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:24:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:24:49 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:24:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Feb 2018 03:29:44 GMT
ENV PASSENGER_VERSION=5.2.0
# Wed, 07 Feb 2018 03:30:01 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:30:02 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 07 Feb 2018 03:30:02 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16016bc19731574fd04073a20e70261f3a1a28aa40660c0dde554941b0c712a6`  
		Last Modified: Wed, 07 Feb 2018 02:27:35 GMT  
		Size: 31.9 MB (31880406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dacde5aa5c5c2edacb8e16831c7d4a0380b36bbd6fdfed8ae99c99363c36d4`  
		Last Modified: Wed, 07 Feb 2018 02:27:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55a69547bf6bd992255873e94984c72e9c7fd723625aab15e26070606c3e131`  
		Last Modified: Wed, 07 Feb 2018 03:37:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd8ef273c00fab9fdf08c776b517c4622a77834c55b772cceb7400945ccfca5`  
		Last Modified: Wed, 07 Feb 2018 03:37:07 GMT  
		Size: 14.7 MB (14650316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fca318eb7fc0c93199b0ae9c85c7f56c5c8b25fdabaee31e0d3aa1be2c25e1d`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbb3caa0ac47226119f024cab2f3b3e6bbd7eb0c2d530bbcf00f1385ee4da38`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bea97382ce223e8d56b3b0eaa5c3175d495e22115f02ea4d2069e79e096d30`  
		Last Modified: Wed, 07 Feb 2018 03:37:12 GMT  
		Size: 59.3 MB (59271188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea707158ba1490bd6c6f1ad84b3213cd79b55583523c5b1062b6b105b61bef3`  
		Last Modified: Wed, 07 Feb 2018 03:36:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79da7be57e0dde758f684df2e5b91d23368c3efab7fedd919de89be08dba82c7`  
		Last Modified: Wed, 07 Feb 2018 03:37:01 GMT  
		Size: 2.4 MB (2392397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961627fed9ff86e39eab63a656e89cd59d0ab4304628aa8cfd4fc8669848395a`  
		Last Modified: Wed, 07 Feb 2018 03:37:15 GMT  
		Size: 78.9 MB (78900306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf9ec838e5c715f413e6df95207bb01d6c058c25258155c1841266caf0ae489`  
		Last Modified: Wed, 07 Feb 2018 03:36:56 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4f574094036b8bbd1b3ab9719458ba6dc5f46f87ac37e1f4f8a959118606e8`  
		Last Modified: Wed, 07 Feb 2018 03:37:57 GMT  
		Size: 14.5 MB (14483779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ef9ee08e454c8c9226461e61160330355b791d37522e541ae371ca9d66806c`  
		Last Modified: Wed, 07 Feb 2018 03:37:52 GMT  
		Size: 4.4 MB (4354988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:831a1ae192b4982e3278522a4f9a1636172dc23369ee9fdafcbfce201e8df470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:2f7e5bad28491c9c71300964ca240dd445dc46db03e43e546bb051e08e84cb88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269231479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b2cb32a7713f979581a5440d1691ca9a46fe23f40cc072e689748c5de22bb1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 01:57:44 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:57:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:00:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:00:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:00:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:00:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:00:59 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:20:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:21:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:21:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:21:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:21:15 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:21:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:21:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:22:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:22:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:22:06 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 03:22:17 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 03:22:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:24:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:24:48 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:24:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:24:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:24:49 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:24:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Feb 2018 03:29:44 GMT
ENV PASSENGER_VERSION=5.2.0
# Wed, 07 Feb 2018 03:30:01 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:30:02 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 07 Feb 2018 03:30:02 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16016bc19731574fd04073a20e70261f3a1a28aa40660c0dde554941b0c712a6`  
		Last Modified: Wed, 07 Feb 2018 02:27:35 GMT  
		Size: 31.9 MB (31880406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dacde5aa5c5c2edacb8e16831c7d4a0380b36bbd6fdfed8ae99c99363c36d4`  
		Last Modified: Wed, 07 Feb 2018 02:27:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55a69547bf6bd992255873e94984c72e9c7fd723625aab15e26070606c3e131`  
		Last Modified: Wed, 07 Feb 2018 03:37:02 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd8ef273c00fab9fdf08c776b517c4622a77834c55b772cceb7400945ccfca5`  
		Last Modified: Wed, 07 Feb 2018 03:37:07 GMT  
		Size: 14.7 MB (14650316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fca318eb7fc0c93199b0ae9c85c7f56c5c8b25fdabaee31e0d3aa1be2c25e1d`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbb3caa0ac47226119f024cab2f3b3e6bbd7eb0c2d530bbcf00f1385ee4da38`  
		Last Modified: Wed, 07 Feb 2018 03:36:59 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bea97382ce223e8d56b3b0eaa5c3175d495e22115f02ea4d2069e79e096d30`  
		Last Modified: Wed, 07 Feb 2018 03:37:12 GMT  
		Size: 59.3 MB (59271188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea707158ba1490bd6c6f1ad84b3213cd79b55583523c5b1062b6b105b61bef3`  
		Last Modified: Wed, 07 Feb 2018 03:36:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79da7be57e0dde758f684df2e5b91d23368c3efab7fedd919de89be08dba82c7`  
		Last Modified: Wed, 07 Feb 2018 03:37:01 GMT  
		Size: 2.4 MB (2392397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961627fed9ff86e39eab63a656e89cd59d0ab4304628aa8cfd4fc8669848395a`  
		Last Modified: Wed, 07 Feb 2018 03:37:15 GMT  
		Size: 78.9 MB (78900306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf9ec838e5c715f413e6df95207bb01d6c058c25258155c1841266caf0ae489`  
		Last Modified: Wed, 07 Feb 2018 03:36:56 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4f574094036b8bbd1b3ab9719458ba6dc5f46f87ac37e1f4f8a959118606e8`  
		Last Modified: Wed, 07 Feb 2018 03:37:57 GMT  
		Size: 14.5 MB (14483779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ef9ee08e454c8c9226461e61160330355b791d37522e541ae371ca9d66806c`  
		Last Modified: Wed, 07 Feb 2018 03:37:52 GMT  
		Size: 4.4 MB (4354988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:ba1c7bcdfe5775eb8ce19956df89d56586ae441698dc1066d97e5620021e9808
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
$ docker pull redmine@sha256:6ac7512612901611900b87c2df47fc0c2f9621a43549b282fc427e1583ce3513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b004483a7ea6f84fc6b0a8e1770cd69d6aec04ab068fca13e533bbe1f5e5ef31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:05:20 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:05:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 01:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 01:08:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 01:08:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 01:08:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:15:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:15:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:15:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:15:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:15:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:16:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:16:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:16:28 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:16:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:16:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:19:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:19:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:19:54 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:19:55 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:19:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ef1a44eb210f12a1274d2c75ebda24151565f7270ceeb760561b43eac3afe0`  
		Last Modified: Wed, 07 Feb 2018 02:14:35 GMT  
		Size: 21.3 MB (21268456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdaac495b62aeafe29255fae1bfc09e6b11d45e2b2dff810972a74b4d8e93a2`  
		Last Modified: Wed, 07 Feb 2018 02:14:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb048f176909b2a8008279c71f3cfa9417f7fa96f5ea8213a9781fc2b578a308`  
		Last Modified: Wed, 07 Feb 2018 03:34:19 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55edb0740627d22c14ae523f4be6fb67e976bb02f782c03e038bd82730be224`  
		Last Modified: Wed, 07 Feb 2018 03:34:22 GMT  
		Size: 14.7 MB (14650330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05644c4e62aaadb2be2ea50c0b3a4fd0299e30b5ff85a25b7d036192cc14d260`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae74edce5904a3db6f507ea74e2d23dd1a85022e8104b62032f2e4624b018f0`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e89c20363903e1324bb4503a74ae8782afea9a2b1a481635613560526f7433`  
		Last Modified: Wed, 07 Feb 2018 03:34:31 GMT  
		Size: 59.3 MB (59271503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070298887293a4fbbbf58cfd90196f9e93e490954428b6989b8a5b18949e918f`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9341b396e78c01b8c55446c4d64a744ce50d3c4f7f66a2f4214e10ea32b04eef`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891ac55bced60e812982af026e7f0c4508d04cffa9bcc120366401631a24a4f2`  
		Last Modified: Wed, 07 Feb 2018 03:34:46 GMT  
		Size: 98.8 MB (98822064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e05898ea82309521ea53766ca0651ef90d45e2ba1107d7c11ecd6c777f80f12`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:72a3fb4c5ce7c0be7716c87ddcae6113f46f3fa70c078bc32602d2e0ac5a563b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253093968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a151dd8f3613ee9820c68818ea5d1398d008c3e7a01d2da165cd3a553f94645c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 02:45:30 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:45:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:51:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:51:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:51:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:51:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:51:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:51:34 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:42:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:43:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:43:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:43:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:43:02 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:43:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:44:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:44:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:44:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:44:06 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:44:06 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:44:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:49:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:49:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:49:40 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:49:41 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:49:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43e176b731507f0182e540f743ae0310db96361eaa59459c9d320096c2c9dd3`  
		Last Modified: Wed, 07 Feb 2018 03:22:13 GMT  
		Size: 21.0 MB (21035984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4aa2bb6cd3a348c8a1a657552ffa46bcea16218d301a89604fa0dd707a979`  
		Last Modified: Wed, 07 Feb 2018 03:22:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25636f94bced309af41112438fb488852d67a658ce06155485a88f33c53f4aa4`  
		Last Modified: Wed, 07 Feb 2018 04:00:56 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7f9360e27159ab2da8c41e5208a60ed431eaa2c3d6c3c9d573466107c4e6d0`  
		Last Modified: Wed, 07 Feb 2018 04:01:01 GMT  
		Size: 14.3 MB (14347443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8000c05045c3eeed6ab53b561350188f303dee57ac04d01416df59c0c16898c5`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78af08c4b6accc5d9a3a4738d7072fd54d685029194ebe02080018bf2625c3d2`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 7.8 KB (7847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391c6dfdfbb2c1f39aee3b681dd4ed5dd97ea4cee8fb89c2783924eac07d7f7f`  
		Last Modified: Wed, 07 Feb 2018 04:01:13 GMT  
		Size: 56.6 MB (56611245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889493e30fc782499f72f25bb9dedfc24e8f97a4ad3d525e8b8b88f821a1ae9`  
		Last Modified: Wed, 07 Feb 2018 04:00:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a97ca28dc534ee6a9dfa7d1a492b318c6d38f8db8b5e58db6ba90f7196897c8`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a74b029231e18ba15df89b127e88c73c776624ec685ca8c57e3c8dd15f1ae9`  
		Last Modified: Wed, 07 Feb 2018 04:01:21 GMT  
		Size: 98.1 MB (98126282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3dafa486b44e7b279ea49c2a31ba273d64463a59c36c9423d54d928d9bc23e`  
		Last Modified: Wed, 07 Feb 2018 04:00:54 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:de2940d82a063e4c6e66270901e0c943e6e63b4fe60abd316055f222f5f66b57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247188574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80df0f236139a94a2ffbcdc953f6518e0176c6806168d1d2dad5fd90c43663`
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
# Thu, 15 Feb 2018 16:42:08 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 16:42:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 16:47:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 16:47:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 16:47:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 16:47:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:47:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 16:47:47 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 19:38:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 19:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:39:27 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:39:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 19:39:37 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 19:39:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 19:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:40:48 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 19:40:48 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 19:40:48 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 19:40:49 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 19:40:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 19:45:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:45:57 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 19:45:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 19:45:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 19:45:59 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 19:45:59 GMT
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
	-	`sha256:dc0ffb9ad5f1dcc3cf6eb231e280dc37c27d03ec087ccba5d9ee6dc64ad59988`  
		Last Modified: Thu, 15 Feb 2018 17:23:06 GMT  
		Size: 20.9 MB (20899250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67b768a537135a3a0f481fc34162a3de203caf635efd313262107f8bbde0315`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddae8546432595b4fb8b549803e5884f6c6b997847f021befdf2718ece09c929`  
		Last Modified: Thu, 15 Feb 2018 19:58:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d096c8b987ae463d6677e16f257793295175d32f458039d0cb125539f543f7bd`  
		Last Modified: Thu, 15 Feb 2018 19:58:23 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064bc10e53ba08e4649efb4f509a5f68f97c54080c1abbe03a7e2d1998ef07d7`  
		Last Modified: Thu, 15 Feb 2018 19:58:18 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844dbfab687406b70c5cb7df48cadbe9a01c2a367a7254a79204abdbabb759d`  
		Last Modified: Thu, 15 Feb 2018 19:58:17 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d634ef1e17ad5febeb0fbb3ccf46a93cafc01982367eb5f01d314783c70a30de`  
		Last Modified: Thu, 15 Feb 2018 19:58:40 GMT  
		Size: 54.3 MB (54345106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a14cbc6e65b8a2d8260b51f06471428ca5a89d89a2b731f35174eed5e62d139`  
		Last Modified: Thu, 15 Feb 2018 19:58:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81e07143d40dd0421e489bd16bbba16c84aa7d8e485d8d62e869dfc25b5f86f`  
		Last Modified: Thu, 15 Feb 2018 19:58:16 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e69e41a2905ccd8d3bd6e4c626727b9650127325f392a7269d46534b3d5d71`  
		Last Modified: Thu, 15 Feb 2018 19:58:41 GMT  
		Size: 97.4 MB (97380911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aff8111f3345a856d6bf270caf6e0ce44ed0fe3926ee5a6c80318aad449d3e`  
		Last Modified: Thu, 15 Feb 2018 19:58:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:0890c2c927e1df1993dc8a8597dec2d165ed603e3042af1b5a743616f89290f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (252046865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8872b2caa6cb9566eb91038f1e37aa7bbe54c6b1abfc92280a6a5f28c11c5920`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 22:21:22 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 22:21:23 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 22:30:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 22:30:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 22:30:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 22:30:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 22:30:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 22:30:49 GMT
CMD ["irb"]
# Thu, 08 Feb 2018 00:05:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 08 Feb 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:05:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 08 Feb 2018 00:05:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Feb 2018 00:05:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 08 Feb 2018 00:05:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 08 Feb 2018 00:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:07:42 GMT
ENV RAILS_ENV=production
# Thu, 08 Feb 2018 00:07:43 GMT
WORKDIR /usr/src/redmine
# Thu, 08 Feb 2018 00:07:44 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 08 Feb 2018 00:07:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 08 Feb 2018 00:07:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 08 Feb 2018 00:18:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Feb 2018 00:18:11 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 08 Feb 2018 00:18:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 08 Feb 2018 00:18:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Feb 2018 00:18:13 GMT
EXPOSE 3000/tcp
# Thu, 08 Feb 2018 00:18:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b864c8496aa8260042e205d172c1a6b4ab6dce556bd3e1a0153ce7b1d3336732`  
		Last Modified: Wed, 07 Feb 2018 23:40:31 GMT  
		Size: 21.2 MB (21240103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca38bd0c394a79afeb208fbd7104c9f9635d593a42bae2ad2e23ca524877652c`  
		Last Modified: Wed, 07 Feb 2018 23:40:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16974a4e236dcf41384396b47206ed4637b174cbf6e6bbaa3ccb6fdd8fe9138b`  
		Last Modified: Thu, 08 Feb 2018 00:44:27 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70730962d27a3c471a901c73ea6f46df89bb14382736909c2de0b117c6c34060`  
		Last Modified: Thu, 08 Feb 2018 00:44:31 GMT  
		Size: 14.5 MB (14462705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e78626311ebb0a0ccdac4a6dc2ce710b02c210178c0f65a57b22b928224c674`  
		Last Modified: Thu, 08 Feb 2018 00:44:25 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2d1e0260e68e69f01f79041093e9a3ec4062bc677d799c88cddf76c274840`  
		Last Modified: Thu, 08 Feb 2018 00:44:24 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d5cffa69c02e4584b6b8bc95ffa1ada4e8b01c6e4200e091ddeb3242064d0f`  
		Last Modified: Thu, 08 Feb 2018 00:44:43 GMT  
		Size: 55.8 MB (55794944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce82343dcdbabe7f40b7a5b6775a0f4cc96d7f5e923a0ea2bf96a2f2bca71535`  
		Last Modified: Thu, 08 Feb 2018 00:44:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0818f6637b3eb4e04631cf0eeee51a5de181dbad8111ca5f90b5b9797511f13`  
		Last Modified: Thu, 08 Feb 2018 00:44:24 GMT  
		Size: 2.5 MB (2454051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7484ba5be43dffc514b2cdcfb931cd58123b1143b01a0cb5dbe2bfa743908a`  
		Last Modified: Thu, 08 Feb 2018 00:44:55 GMT  
		Size: 98.3 MB (98332159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31c2814e8c3aeb653f2c41580a826d09c7f17f52a9ab7c103597a3dbd1430ce`  
		Last Modified: Thu, 08 Feb 2018 00:44:22 GMT  
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
$ docker pull redmine@sha256:b5f4c71530bafb237250c10560e610ff8e0b87c22b165d12809d8f5b92cc653b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259054327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6878e1c834deaa243ad73987233cc95b50d4559c2969b0d798a1001b3855a3c8`
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
# Thu, 15 Feb 2018 06:09:53 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 06:09:55 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 06:19:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 06:19:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 06:19:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 06:20:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:20:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 06:20:10 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 11:12:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 11:13:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:13:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:13:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:13:52 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 11:14:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 11:18:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:18:40 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 11:18:42 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 11:18:49 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 11:18:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 11:18:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 11:33:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 11:33:32 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 11:33:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 11:33:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 11:33:41 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 11:33:47 GMT
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
	-	`sha256:790246d9fd455d8b66275d637fcb1cc8d8c125c2a4a606867916f80c04b3e145`  
		Last Modified: Thu, 15 Feb 2018 06:47:55 GMT  
		Size: 21.7 MB (21714410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90326cf5425b9dfffb1e74c936cc9dc62cb02cfeae3a300bf2fb7b190fc6f5c9`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010716011645ef561a7b223b01cddbfdede964742c21795398f9f5aaf24d3a59`  
		Last Modified: Thu, 15 Feb 2018 12:17:33 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20a546e7b4a806cba0d4faf7722c37a899040abfc59893721ae58b400c95cab`  
		Last Modified: Thu, 15 Feb 2018 12:17:37 GMT  
		Size: 14.7 MB (14720508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd388a051fbca6094f1707c40989ac6b7910473a3aab1dd4f0b5ac509a68ba5`  
		Last Modified: Thu, 15 Feb 2018 12:17:30 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a241e725174e1c62cd129d5856b76c16a63c57cc2935a6d3f75ef7c5e73ed7fa`  
		Last Modified: Thu, 15 Feb 2018 12:17:29 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c1614409a22f27c32f34bae829c8ec071a332520a28e389a2e5b3dfab84bf`  
		Last Modified: Thu, 15 Feb 2018 12:17:53 GMT  
		Size: 58.1 MB (58133315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6283f11b8e56b9d95dd9a6d09fe0b0bb30ddc2bd3836054e0366abc097f446`  
		Last Modified: Thu, 15 Feb 2018 12:17:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8a68933fea5d0f355982168a9c21a3e55d491f686a8a764d568de37f14c2fe`  
		Last Modified: Thu, 15 Feb 2018 12:17:29 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e1d18db576df31de6ec0c7388a50c21b9556ae1400a24c2874ed784065b7aa`  
		Last Modified: Thu, 15 Feb 2018 12:18:02 GMT  
		Size: 99.6 MB (99574021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a0a195cfab43caa390974ac1b677b71baa8571c66672c1ab7a5620b9258aa6`  
		Last Modified: Thu, 15 Feb 2018 12:17:26 GMT  
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
$ docker pull redmine@sha256:ba1c7bcdfe5775eb8ce19956df89d56586ae441698dc1066d97e5620021e9808
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
$ docker pull redmine@sha256:6ac7512612901611900b87c2df47fc0c2f9621a43549b282fc427e1583ce3513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b004483a7ea6f84fc6b0a8e1770cd69d6aec04ab068fca13e533bbe1f5e5ef31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:05:20 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:05:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 01:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 01:08:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 01:08:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 01:08:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:15:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:15:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:15:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:15:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:15:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:16:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:16:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:16:28 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:16:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:16:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:19:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:19:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:19:54 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:19:55 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:19:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ef1a44eb210f12a1274d2c75ebda24151565f7270ceeb760561b43eac3afe0`  
		Last Modified: Wed, 07 Feb 2018 02:14:35 GMT  
		Size: 21.3 MB (21268456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdaac495b62aeafe29255fae1bfc09e6b11d45e2b2dff810972a74b4d8e93a2`  
		Last Modified: Wed, 07 Feb 2018 02:14:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb048f176909b2a8008279c71f3cfa9417f7fa96f5ea8213a9781fc2b578a308`  
		Last Modified: Wed, 07 Feb 2018 03:34:19 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55edb0740627d22c14ae523f4be6fb67e976bb02f782c03e038bd82730be224`  
		Last Modified: Wed, 07 Feb 2018 03:34:22 GMT  
		Size: 14.7 MB (14650330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05644c4e62aaadb2be2ea50c0b3a4fd0299e30b5ff85a25b7d036192cc14d260`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae74edce5904a3db6f507ea74e2d23dd1a85022e8104b62032f2e4624b018f0`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e89c20363903e1324bb4503a74ae8782afea9a2b1a481635613560526f7433`  
		Last Modified: Wed, 07 Feb 2018 03:34:31 GMT  
		Size: 59.3 MB (59271503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070298887293a4fbbbf58cfd90196f9e93e490954428b6989b8a5b18949e918f`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9341b396e78c01b8c55446c4d64a744ce50d3c4f7f66a2f4214e10ea32b04eef`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891ac55bced60e812982af026e7f0c4508d04cffa9bcc120366401631a24a4f2`  
		Last Modified: Wed, 07 Feb 2018 03:34:46 GMT  
		Size: 98.8 MB (98822064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e05898ea82309521ea53766ca0651ef90d45e2ba1107d7c11ecd6c777f80f12`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:72a3fb4c5ce7c0be7716c87ddcae6113f46f3fa70c078bc32602d2e0ac5a563b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253093968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a151dd8f3613ee9820c68818ea5d1398d008c3e7a01d2da165cd3a553f94645c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 02:45:30 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:45:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:51:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:51:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:51:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:51:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:51:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:51:34 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:42:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:43:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:43:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:43:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:43:02 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:43:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:44:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:44:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:44:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:44:06 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:44:06 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:44:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:49:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:49:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:49:40 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:49:41 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:49:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43e176b731507f0182e540f743ae0310db96361eaa59459c9d320096c2c9dd3`  
		Last Modified: Wed, 07 Feb 2018 03:22:13 GMT  
		Size: 21.0 MB (21035984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4aa2bb6cd3a348c8a1a657552ffa46bcea16218d301a89604fa0dd707a979`  
		Last Modified: Wed, 07 Feb 2018 03:22:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25636f94bced309af41112438fb488852d67a658ce06155485a88f33c53f4aa4`  
		Last Modified: Wed, 07 Feb 2018 04:00:56 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7f9360e27159ab2da8c41e5208a60ed431eaa2c3d6c3c9d573466107c4e6d0`  
		Last Modified: Wed, 07 Feb 2018 04:01:01 GMT  
		Size: 14.3 MB (14347443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8000c05045c3eeed6ab53b561350188f303dee57ac04d01416df59c0c16898c5`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78af08c4b6accc5d9a3a4738d7072fd54d685029194ebe02080018bf2625c3d2`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 7.8 KB (7847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391c6dfdfbb2c1f39aee3b681dd4ed5dd97ea4cee8fb89c2783924eac07d7f7f`  
		Last Modified: Wed, 07 Feb 2018 04:01:13 GMT  
		Size: 56.6 MB (56611245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889493e30fc782499f72f25bb9dedfc24e8f97a4ad3d525e8b8b88f821a1ae9`  
		Last Modified: Wed, 07 Feb 2018 04:00:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a97ca28dc534ee6a9dfa7d1a492b318c6d38f8db8b5e58db6ba90f7196897c8`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a74b029231e18ba15df89b127e88c73c776624ec685ca8c57e3c8dd15f1ae9`  
		Last Modified: Wed, 07 Feb 2018 04:01:21 GMT  
		Size: 98.1 MB (98126282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3dafa486b44e7b279ea49c2a31ba273d64463a59c36c9423d54d928d9bc23e`  
		Last Modified: Wed, 07 Feb 2018 04:00:54 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:de2940d82a063e4c6e66270901e0c943e6e63b4fe60abd316055f222f5f66b57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247188574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80df0f236139a94a2ffbcdc953f6518e0176c6806168d1d2dad5fd90c43663`
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
# Thu, 15 Feb 2018 16:42:08 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 16:42:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 16:47:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 16:47:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 16:47:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 16:47:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:47:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 16:47:47 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 19:38:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 19:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:39:27 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:39:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 19:39:37 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 19:39:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 19:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:40:48 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 19:40:48 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 19:40:48 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 19:40:49 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 19:40:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 19:45:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:45:57 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 19:45:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 19:45:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 19:45:59 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 19:45:59 GMT
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
	-	`sha256:dc0ffb9ad5f1dcc3cf6eb231e280dc37c27d03ec087ccba5d9ee6dc64ad59988`  
		Last Modified: Thu, 15 Feb 2018 17:23:06 GMT  
		Size: 20.9 MB (20899250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67b768a537135a3a0f481fc34162a3de203caf635efd313262107f8bbde0315`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddae8546432595b4fb8b549803e5884f6c6b997847f021befdf2718ece09c929`  
		Last Modified: Thu, 15 Feb 2018 19:58:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d096c8b987ae463d6677e16f257793295175d32f458039d0cb125539f543f7bd`  
		Last Modified: Thu, 15 Feb 2018 19:58:23 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064bc10e53ba08e4649efb4f509a5f68f97c54080c1abbe03a7e2d1998ef07d7`  
		Last Modified: Thu, 15 Feb 2018 19:58:18 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844dbfab687406b70c5cb7df48cadbe9a01c2a367a7254a79204abdbabb759d`  
		Last Modified: Thu, 15 Feb 2018 19:58:17 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d634ef1e17ad5febeb0fbb3ccf46a93cafc01982367eb5f01d314783c70a30de`  
		Last Modified: Thu, 15 Feb 2018 19:58:40 GMT  
		Size: 54.3 MB (54345106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a14cbc6e65b8a2d8260b51f06471428ca5a89d89a2b731f35174eed5e62d139`  
		Last Modified: Thu, 15 Feb 2018 19:58:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81e07143d40dd0421e489bd16bbba16c84aa7d8e485d8d62e869dfc25b5f86f`  
		Last Modified: Thu, 15 Feb 2018 19:58:16 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e69e41a2905ccd8d3bd6e4c626727b9650127325f392a7269d46534b3d5d71`  
		Last Modified: Thu, 15 Feb 2018 19:58:41 GMT  
		Size: 97.4 MB (97380911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aff8111f3345a856d6bf270caf6e0ce44ed0fe3926ee5a6c80318aad449d3e`  
		Last Modified: Thu, 15 Feb 2018 19:58:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:0890c2c927e1df1993dc8a8597dec2d165ed603e3042af1b5a743616f89290f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (252046865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8872b2caa6cb9566eb91038f1e37aa7bbe54c6b1abfc92280a6a5f28c11c5920`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 22:21:22 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 22:21:23 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 22:30:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 22:30:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 22:30:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 22:30:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 22:30:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 22:30:49 GMT
CMD ["irb"]
# Thu, 08 Feb 2018 00:05:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 08 Feb 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:05:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 08 Feb 2018 00:05:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Feb 2018 00:05:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 08 Feb 2018 00:05:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 08 Feb 2018 00:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:07:42 GMT
ENV RAILS_ENV=production
# Thu, 08 Feb 2018 00:07:43 GMT
WORKDIR /usr/src/redmine
# Thu, 08 Feb 2018 00:07:44 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 08 Feb 2018 00:07:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 08 Feb 2018 00:07:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 08 Feb 2018 00:18:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Feb 2018 00:18:11 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 08 Feb 2018 00:18:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 08 Feb 2018 00:18:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Feb 2018 00:18:13 GMT
EXPOSE 3000/tcp
# Thu, 08 Feb 2018 00:18:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b864c8496aa8260042e205d172c1a6b4ab6dce556bd3e1a0153ce7b1d3336732`  
		Last Modified: Wed, 07 Feb 2018 23:40:31 GMT  
		Size: 21.2 MB (21240103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca38bd0c394a79afeb208fbd7104c9f9635d593a42bae2ad2e23ca524877652c`  
		Last Modified: Wed, 07 Feb 2018 23:40:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16974a4e236dcf41384396b47206ed4637b174cbf6e6bbaa3ccb6fdd8fe9138b`  
		Last Modified: Thu, 08 Feb 2018 00:44:27 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70730962d27a3c471a901c73ea6f46df89bb14382736909c2de0b117c6c34060`  
		Last Modified: Thu, 08 Feb 2018 00:44:31 GMT  
		Size: 14.5 MB (14462705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e78626311ebb0a0ccdac4a6dc2ce710b02c210178c0f65a57b22b928224c674`  
		Last Modified: Thu, 08 Feb 2018 00:44:25 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2d1e0260e68e69f01f79041093e9a3ec4062bc677d799c88cddf76c274840`  
		Last Modified: Thu, 08 Feb 2018 00:44:24 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d5cffa69c02e4584b6b8bc95ffa1ada4e8b01c6e4200e091ddeb3242064d0f`  
		Last Modified: Thu, 08 Feb 2018 00:44:43 GMT  
		Size: 55.8 MB (55794944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce82343dcdbabe7f40b7a5b6775a0f4cc96d7f5e923a0ea2bf96a2f2bca71535`  
		Last Modified: Thu, 08 Feb 2018 00:44:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0818f6637b3eb4e04631cf0eeee51a5de181dbad8111ca5f90b5b9797511f13`  
		Last Modified: Thu, 08 Feb 2018 00:44:24 GMT  
		Size: 2.5 MB (2454051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7484ba5be43dffc514b2cdcfb931cd58123b1143b01a0cb5dbe2bfa743908a`  
		Last Modified: Thu, 08 Feb 2018 00:44:55 GMT  
		Size: 98.3 MB (98332159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31c2814e8c3aeb653f2c41580a826d09c7f17f52a9ab7c103597a3dbd1430ce`  
		Last Modified: Thu, 08 Feb 2018 00:44:22 GMT  
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
$ docker pull redmine@sha256:b5f4c71530bafb237250c10560e610ff8e0b87c22b165d12809d8f5b92cc653b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259054327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6878e1c834deaa243ad73987233cc95b50d4559c2969b0d798a1001b3855a3c8`
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
# Thu, 15 Feb 2018 06:09:53 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 06:09:55 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 06:19:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 06:19:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 06:19:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 06:20:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:20:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 06:20:10 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 11:12:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 11:13:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:13:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:13:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:13:52 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 11:14:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 11:18:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:18:40 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 11:18:42 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 11:18:49 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 11:18:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 11:18:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 11:33:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 11:33:32 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 11:33:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 11:33:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 11:33:41 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 11:33:47 GMT
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
	-	`sha256:790246d9fd455d8b66275d637fcb1cc8d8c125c2a4a606867916f80c04b3e145`  
		Last Modified: Thu, 15 Feb 2018 06:47:55 GMT  
		Size: 21.7 MB (21714410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90326cf5425b9dfffb1e74c936cc9dc62cb02cfeae3a300bf2fb7b190fc6f5c9`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010716011645ef561a7b223b01cddbfdede964742c21795398f9f5aaf24d3a59`  
		Last Modified: Thu, 15 Feb 2018 12:17:33 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20a546e7b4a806cba0d4faf7722c37a899040abfc59893721ae58b400c95cab`  
		Last Modified: Thu, 15 Feb 2018 12:17:37 GMT  
		Size: 14.7 MB (14720508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd388a051fbca6094f1707c40989ac6b7910473a3aab1dd4f0b5ac509a68ba5`  
		Last Modified: Thu, 15 Feb 2018 12:17:30 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a241e725174e1c62cd129d5856b76c16a63c57cc2935a6d3f75ef7c5e73ed7fa`  
		Last Modified: Thu, 15 Feb 2018 12:17:29 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c1614409a22f27c32f34bae829c8ec071a332520a28e389a2e5b3dfab84bf`  
		Last Modified: Thu, 15 Feb 2018 12:17:53 GMT  
		Size: 58.1 MB (58133315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6283f11b8e56b9d95dd9a6d09fe0b0bb30ddc2bd3836054e0366abc097f446`  
		Last Modified: Thu, 15 Feb 2018 12:17:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8a68933fea5d0f355982168a9c21a3e55d491f686a8a764d568de37f14c2fe`  
		Last Modified: Thu, 15 Feb 2018 12:17:29 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e1d18db576df31de6ec0c7388a50c21b9556ae1400a24c2874ed784065b7aa`  
		Last Modified: Thu, 15 Feb 2018 12:18:02 GMT  
		Size: 99.6 MB (99574021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a0a195cfab43caa390974ac1b677b71baa8571c66672c1ab7a5620b9258aa6`  
		Last Modified: Thu, 15 Feb 2018 12:17:26 GMT  
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
$ docker pull redmine@sha256:40ab0b68f1fd155c25adf1a25d842ebb500bc1150a81f406a23dbeb464eb0e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:285cd959ff3d2378b008114e67db7239d33393ef4d7d8f3e3ae39801114029de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278603755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c08f41e8a887569c325bb588607aaa90edd733ee6b781f85bfbdebdeecbd8cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:05:20 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:05:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 01:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 01:08:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 01:08:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 01:08:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:15:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:15:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:15:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:15:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:15:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:16:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:16:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:16:28 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:16:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:16:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:19:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:19:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:19:54 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:19:55 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:19:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Feb 2018 03:20:10 GMT
ENV PASSENGER_VERSION=5.2.0
# Wed, 07 Feb 2018 03:20:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:20:32 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 07 Feb 2018 03:20:33 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ef1a44eb210f12a1274d2c75ebda24151565f7270ceeb760561b43eac3afe0`  
		Last Modified: Wed, 07 Feb 2018 02:14:35 GMT  
		Size: 21.3 MB (21268456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdaac495b62aeafe29255fae1bfc09e6b11d45e2b2dff810972a74b4d8e93a2`  
		Last Modified: Wed, 07 Feb 2018 02:14:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb048f176909b2a8008279c71f3cfa9417f7fa96f5ea8213a9781fc2b578a308`  
		Last Modified: Wed, 07 Feb 2018 03:34:19 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55edb0740627d22c14ae523f4be6fb67e976bb02f782c03e038bd82730be224`  
		Last Modified: Wed, 07 Feb 2018 03:34:22 GMT  
		Size: 14.7 MB (14650330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05644c4e62aaadb2be2ea50c0b3a4fd0299e30b5ff85a25b7d036192cc14d260`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae74edce5904a3db6f507ea74e2d23dd1a85022e8104b62032f2e4624b018f0`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e89c20363903e1324bb4503a74ae8782afea9a2b1a481635613560526f7433`  
		Last Modified: Wed, 07 Feb 2018 03:34:31 GMT  
		Size: 59.3 MB (59271503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070298887293a4fbbbf58cfd90196f9e93e490954428b6989b8a5b18949e918f`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9341b396e78c01b8c55446c4d64a744ce50d3c4f7f66a2f4214e10ea32b04eef`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891ac55bced60e812982af026e7f0c4508d04cffa9bcc120366401631a24a4f2`  
		Last Modified: Wed, 07 Feb 2018 03:34:46 GMT  
		Size: 98.8 MB (98822064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e05898ea82309521ea53766ca0651ef90d45e2ba1107d7c11ecd6c777f80f12`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9d0ea35f9c5d5f6a6452c3686f73b87623d1a4e1b226e4180ddf66235e6cd5`  
		Last Modified: Wed, 07 Feb 2018 03:35:56 GMT  
		Size: 14.5 MB (14484299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ebd125ce223cc260a61045ec868281d65e4245385b7d0ed1917b707c9a6103`  
		Last Modified: Wed, 07 Feb 2018 03:35:49 GMT  
		Size: 4.4 MB (4354962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:40ab0b68f1fd155c25adf1a25d842ebb500bc1150a81f406a23dbeb464eb0e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:285cd959ff3d2378b008114e67db7239d33393ef4d7d8f3e3ae39801114029de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278603755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c08f41e8a887569c325bb588607aaa90edd733ee6b781f85bfbdebdeecbd8cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:05:20 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:05:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 01:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 01:08:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 01:08:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 01:08:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:15:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:15:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:15:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:15:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:15:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:16:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:16:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:16:28 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:16:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:16:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:19:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:19:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:19:54 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:19:55 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:19:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Feb 2018 03:20:10 GMT
ENV PASSENGER_VERSION=5.2.0
# Wed, 07 Feb 2018 03:20:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:20:32 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 07 Feb 2018 03:20:33 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ef1a44eb210f12a1274d2c75ebda24151565f7270ceeb760561b43eac3afe0`  
		Last Modified: Wed, 07 Feb 2018 02:14:35 GMT  
		Size: 21.3 MB (21268456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdaac495b62aeafe29255fae1bfc09e6b11d45e2b2dff810972a74b4d8e93a2`  
		Last Modified: Wed, 07 Feb 2018 02:14:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb048f176909b2a8008279c71f3cfa9417f7fa96f5ea8213a9781fc2b578a308`  
		Last Modified: Wed, 07 Feb 2018 03:34:19 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55edb0740627d22c14ae523f4be6fb67e976bb02f782c03e038bd82730be224`  
		Last Modified: Wed, 07 Feb 2018 03:34:22 GMT  
		Size: 14.7 MB (14650330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05644c4e62aaadb2be2ea50c0b3a4fd0299e30b5ff85a25b7d036192cc14d260`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae74edce5904a3db6f507ea74e2d23dd1a85022e8104b62032f2e4624b018f0`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e89c20363903e1324bb4503a74ae8782afea9a2b1a481635613560526f7433`  
		Last Modified: Wed, 07 Feb 2018 03:34:31 GMT  
		Size: 59.3 MB (59271503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070298887293a4fbbbf58cfd90196f9e93e490954428b6989b8a5b18949e918f`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9341b396e78c01b8c55446c4d64a744ce50d3c4f7f66a2f4214e10ea32b04eef`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891ac55bced60e812982af026e7f0c4508d04cffa9bcc120366401631a24a4f2`  
		Last Modified: Wed, 07 Feb 2018 03:34:46 GMT  
		Size: 98.8 MB (98822064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e05898ea82309521ea53766ca0651ef90d45e2ba1107d7c11ecd6c777f80f12`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9d0ea35f9c5d5f6a6452c3686f73b87623d1a4e1b226e4180ddf66235e6cd5`  
		Last Modified: Wed, 07 Feb 2018 03:35:56 GMT  
		Size: 14.5 MB (14484299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ebd125ce223cc260a61045ec868281d65e4245385b7d0ed1917b707c9a6103`  
		Last Modified: Wed, 07 Feb 2018 03:35:49 GMT  
		Size: 4.4 MB (4354962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:40ab0b68f1fd155c25adf1a25d842ebb500bc1150a81f406a23dbeb464eb0e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:285cd959ff3d2378b008114e67db7239d33393ef4d7d8f3e3ae39801114029de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278603755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c08f41e8a887569c325bb588607aaa90edd733ee6b781f85bfbdebdeecbd8cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:05:20 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:05:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 01:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 01:08:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 01:08:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 01:08:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:15:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:15:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:15:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:15:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:15:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:16:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:16:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:16:28 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:16:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:16:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:19:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:19:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:19:54 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:19:55 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:19:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Feb 2018 03:20:10 GMT
ENV PASSENGER_VERSION=5.2.0
# Wed, 07 Feb 2018 03:20:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:20:32 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 07 Feb 2018 03:20:33 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ef1a44eb210f12a1274d2c75ebda24151565f7270ceeb760561b43eac3afe0`  
		Last Modified: Wed, 07 Feb 2018 02:14:35 GMT  
		Size: 21.3 MB (21268456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdaac495b62aeafe29255fae1bfc09e6b11d45e2b2dff810972a74b4d8e93a2`  
		Last Modified: Wed, 07 Feb 2018 02:14:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb048f176909b2a8008279c71f3cfa9417f7fa96f5ea8213a9781fc2b578a308`  
		Last Modified: Wed, 07 Feb 2018 03:34:19 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55edb0740627d22c14ae523f4be6fb67e976bb02f782c03e038bd82730be224`  
		Last Modified: Wed, 07 Feb 2018 03:34:22 GMT  
		Size: 14.7 MB (14650330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05644c4e62aaadb2be2ea50c0b3a4fd0299e30b5ff85a25b7d036192cc14d260`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae74edce5904a3db6f507ea74e2d23dd1a85022e8104b62032f2e4624b018f0`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e89c20363903e1324bb4503a74ae8782afea9a2b1a481635613560526f7433`  
		Last Modified: Wed, 07 Feb 2018 03:34:31 GMT  
		Size: 59.3 MB (59271503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070298887293a4fbbbf58cfd90196f9e93e490954428b6989b8a5b18949e918f`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9341b396e78c01b8c55446c4d64a744ce50d3c4f7f66a2f4214e10ea32b04eef`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891ac55bced60e812982af026e7f0c4508d04cffa9bcc120366401631a24a4f2`  
		Last Modified: Wed, 07 Feb 2018 03:34:46 GMT  
		Size: 98.8 MB (98822064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e05898ea82309521ea53766ca0651ef90d45e2ba1107d7c11ecd6c777f80f12`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9d0ea35f9c5d5f6a6452c3686f73b87623d1a4e1b226e4180ddf66235e6cd5`  
		Last Modified: Wed, 07 Feb 2018 03:35:56 GMT  
		Size: 14.5 MB (14484299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ebd125ce223cc260a61045ec868281d65e4245385b7d0ed1917b707c9a6103`  
		Last Modified: Wed, 07 Feb 2018 03:35:49 GMT  
		Size: 4.4 MB (4354962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:ba1c7bcdfe5775eb8ce19956df89d56586ae441698dc1066d97e5620021e9808
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
$ docker pull redmine@sha256:6ac7512612901611900b87c2df47fc0c2f9621a43549b282fc427e1583ce3513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259764494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b004483a7ea6f84fc6b0a8e1770cd69d6aec04ab068fca13e533bbe1f5e5ef31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:05:20 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:05:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 01:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 01:08:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 01:08:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 01:08:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:15:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:15:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:15:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:15:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:15:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:16:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:16:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:16:28 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:16:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:16:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:19:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:19:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:19:54 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:19:55 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:19:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ef1a44eb210f12a1274d2c75ebda24151565f7270ceeb760561b43eac3afe0`  
		Last Modified: Wed, 07 Feb 2018 02:14:35 GMT  
		Size: 21.3 MB (21268456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdaac495b62aeafe29255fae1bfc09e6b11d45e2b2dff810972a74b4d8e93a2`  
		Last Modified: Wed, 07 Feb 2018 02:14:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb048f176909b2a8008279c71f3cfa9417f7fa96f5ea8213a9781fc2b578a308`  
		Last Modified: Wed, 07 Feb 2018 03:34:19 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55edb0740627d22c14ae523f4be6fb67e976bb02f782c03e038bd82730be224`  
		Last Modified: Wed, 07 Feb 2018 03:34:22 GMT  
		Size: 14.7 MB (14650330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05644c4e62aaadb2be2ea50c0b3a4fd0299e30b5ff85a25b7d036192cc14d260`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae74edce5904a3db6f507ea74e2d23dd1a85022e8104b62032f2e4624b018f0`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e89c20363903e1324bb4503a74ae8782afea9a2b1a481635613560526f7433`  
		Last Modified: Wed, 07 Feb 2018 03:34:31 GMT  
		Size: 59.3 MB (59271503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070298887293a4fbbbf58cfd90196f9e93e490954428b6989b8a5b18949e918f`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9341b396e78c01b8c55446c4d64a744ce50d3c4f7f66a2f4214e10ea32b04eef`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891ac55bced60e812982af026e7f0c4508d04cffa9bcc120366401631a24a4f2`  
		Last Modified: Wed, 07 Feb 2018 03:34:46 GMT  
		Size: 98.8 MB (98822064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e05898ea82309521ea53766ca0651ef90d45e2ba1107d7c11ecd6c777f80f12`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:72a3fb4c5ce7c0be7716c87ddcae6113f46f3fa70c078bc32602d2e0ac5a563b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253093968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a151dd8f3613ee9820c68818ea5d1398d008c3e7a01d2da165cd3a553f94645c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 02:45:30 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:45:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:51:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:51:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:51:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:51:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:51:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:51:34 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:42:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:43:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:43:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:43:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:43:02 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:43:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:44:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:44:05 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:44:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:44:06 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:44:06 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:44:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:49:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:49:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:49:40 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:49:41 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:49:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43e176b731507f0182e540f743ae0310db96361eaa59459c9d320096c2c9dd3`  
		Last Modified: Wed, 07 Feb 2018 03:22:13 GMT  
		Size: 21.0 MB (21035984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a4aa2bb6cd3a348c8a1a657552ffa46bcea16218d301a89604fa0dd707a979`  
		Last Modified: Wed, 07 Feb 2018 03:22:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25636f94bced309af41112438fb488852d67a658ce06155485a88f33c53f4aa4`  
		Last Modified: Wed, 07 Feb 2018 04:00:56 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7f9360e27159ab2da8c41e5208a60ed431eaa2c3d6c3c9d573466107c4e6d0`  
		Last Modified: Wed, 07 Feb 2018 04:01:01 GMT  
		Size: 14.3 MB (14347443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8000c05045c3eeed6ab53b561350188f303dee57ac04d01416df59c0c16898c5`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78af08c4b6accc5d9a3a4738d7072fd54d685029194ebe02080018bf2625c3d2`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 7.8 KB (7847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391c6dfdfbb2c1f39aee3b681dd4ed5dd97ea4cee8fb89c2783924eac07d7f7f`  
		Last Modified: Wed, 07 Feb 2018 04:01:13 GMT  
		Size: 56.6 MB (56611245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889493e30fc782499f72f25bb9dedfc24e8f97a4ad3d525e8b8b88f821a1ae9`  
		Last Modified: Wed, 07 Feb 2018 04:00:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a97ca28dc534ee6a9dfa7d1a492b318c6d38f8db8b5e58db6ba90f7196897c8`  
		Last Modified: Wed, 07 Feb 2018 04:00:55 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a74b029231e18ba15df89b127e88c73c776624ec685ca8c57e3c8dd15f1ae9`  
		Last Modified: Wed, 07 Feb 2018 04:01:21 GMT  
		Size: 98.1 MB (98126282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3dafa486b44e7b279ea49c2a31ba273d64463a59c36c9423d54d928d9bc23e`  
		Last Modified: Wed, 07 Feb 2018 04:00:54 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:de2940d82a063e4c6e66270901e0c943e6e63b4fe60abd316055f222f5f66b57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247188574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80df0f236139a94a2ffbcdc953f6518e0176c6806168d1d2dad5fd90c43663`
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
# Thu, 15 Feb 2018 16:42:08 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 16:42:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 16:47:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 16:47:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 16:47:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 16:47:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:47:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 16:47:47 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 19:38:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 19:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:39:27 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:39:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 19:39:37 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 19:39:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 19:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:40:48 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 19:40:48 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 19:40:48 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 19:40:49 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 19:40:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 19:45:55 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 19:45:57 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 19:45:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 19:45:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 19:45:59 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 19:45:59 GMT
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
	-	`sha256:dc0ffb9ad5f1dcc3cf6eb231e280dc37c27d03ec087ccba5d9ee6dc64ad59988`  
		Last Modified: Thu, 15 Feb 2018 17:23:06 GMT  
		Size: 20.9 MB (20899250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67b768a537135a3a0f481fc34162a3de203caf635efd313262107f8bbde0315`  
		Last Modified: Thu, 15 Feb 2018 17:22:59 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddae8546432595b4fb8b549803e5884f6c6b997847f021befdf2718ece09c929`  
		Last Modified: Thu, 15 Feb 2018 19:58:20 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d096c8b987ae463d6677e16f257793295175d32f458039d0cb125539f543f7bd`  
		Last Modified: Thu, 15 Feb 2018 19:58:23 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064bc10e53ba08e4649efb4f509a5f68f97c54080c1abbe03a7e2d1998ef07d7`  
		Last Modified: Thu, 15 Feb 2018 19:58:18 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844dbfab687406b70c5cb7df48cadbe9a01c2a367a7254a79204abdbabb759d`  
		Last Modified: Thu, 15 Feb 2018 19:58:17 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d634ef1e17ad5febeb0fbb3ccf46a93cafc01982367eb5f01d314783c70a30de`  
		Last Modified: Thu, 15 Feb 2018 19:58:40 GMT  
		Size: 54.3 MB (54345106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a14cbc6e65b8a2d8260b51f06471428ca5a89d89a2b731f35174eed5e62d139`  
		Last Modified: Thu, 15 Feb 2018 19:58:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81e07143d40dd0421e489bd16bbba16c84aa7d8e485d8d62e869dfc25b5f86f`  
		Last Modified: Thu, 15 Feb 2018 19:58:16 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e69e41a2905ccd8d3bd6e4c626727b9650127325f392a7269d46534b3d5d71`  
		Last Modified: Thu, 15 Feb 2018 19:58:41 GMT  
		Size: 97.4 MB (97380911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aff8111f3345a856d6bf270caf6e0ce44ed0fe3926ee5a6c80318aad449d3e`  
		Last Modified: Thu, 15 Feb 2018 19:58:14 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:0890c2c927e1df1993dc8a8597dec2d165ed603e3042af1b5a743616f89290f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (252046865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8872b2caa6cb9566eb91038f1e37aa7bbe54c6b1abfc92280a6a5f28c11c5920`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 22:21:22 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 22:21:23 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 22:30:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 22:30:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 22:30:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 22:30:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 22:30:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 22:30:49 GMT
CMD ["irb"]
# Thu, 08 Feb 2018 00:05:15 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 08 Feb 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:05:46 GMT
ENV GOSU_VERSION=1.10
# Thu, 08 Feb 2018 00:05:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 08 Feb 2018 00:05:51 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 08 Feb 2018 00:05:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 08 Feb 2018 00:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:07:42 GMT
ENV RAILS_ENV=production
# Thu, 08 Feb 2018 00:07:43 GMT
WORKDIR /usr/src/redmine
# Thu, 08 Feb 2018 00:07:44 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 08 Feb 2018 00:07:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 08 Feb 2018 00:07:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 08 Feb 2018 00:18:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 08 Feb 2018 00:18:11 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 08 Feb 2018 00:18:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 08 Feb 2018 00:18:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Feb 2018 00:18:13 GMT
EXPOSE 3000/tcp
# Thu, 08 Feb 2018 00:18:13 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b864c8496aa8260042e205d172c1a6b4ab6dce556bd3e1a0153ce7b1d3336732`  
		Last Modified: Wed, 07 Feb 2018 23:40:31 GMT  
		Size: 21.2 MB (21240103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca38bd0c394a79afeb208fbd7104c9f9635d593a42bae2ad2e23ca524877652c`  
		Last Modified: Wed, 07 Feb 2018 23:40:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16974a4e236dcf41384396b47206ed4637b174cbf6e6bbaa3ccb6fdd8fe9138b`  
		Last Modified: Thu, 08 Feb 2018 00:44:27 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70730962d27a3c471a901c73ea6f46df89bb14382736909c2de0b117c6c34060`  
		Last Modified: Thu, 08 Feb 2018 00:44:31 GMT  
		Size: 14.5 MB (14462705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e78626311ebb0a0ccdac4a6dc2ce710b02c210178c0f65a57b22b928224c674`  
		Last Modified: Thu, 08 Feb 2018 00:44:25 GMT  
		Size: 468.7 KB (468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2d1e0260e68e69f01f79041093e9a3ec4062bc677d799c88cddf76c274840`  
		Last Modified: Thu, 08 Feb 2018 00:44:24 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d5cffa69c02e4584b6b8bc95ffa1ada4e8b01c6e4200e091ddeb3242064d0f`  
		Last Modified: Thu, 08 Feb 2018 00:44:43 GMT  
		Size: 55.8 MB (55794944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce82343dcdbabe7f40b7a5b6775a0f4cc96d7f5e923a0ea2bf96a2f2bca71535`  
		Last Modified: Thu, 08 Feb 2018 00:44:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0818f6637b3eb4e04631cf0eeee51a5de181dbad8111ca5f90b5b9797511f13`  
		Last Modified: Thu, 08 Feb 2018 00:44:24 GMT  
		Size: 2.5 MB (2454051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7484ba5be43dffc514b2cdcfb931cd58123b1143b01a0cb5dbe2bfa743908a`  
		Last Modified: Thu, 08 Feb 2018 00:44:55 GMT  
		Size: 98.3 MB (98332159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31c2814e8c3aeb653f2c41580a826d09c7f17f52a9ab7c103597a3dbd1430ce`  
		Last Modified: Thu, 08 Feb 2018 00:44:22 GMT  
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
$ docker pull redmine@sha256:b5f4c71530bafb237250c10560e610ff8e0b87c22b165d12809d8f5b92cc653b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259054327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6878e1c834deaa243ad73987233cc95b50d4559c2969b0d798a1001b3855a3c8`
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
# Thu, 15 Feb 2018 06:09:53 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 06:09:55 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 06:19:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 06:19:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 06:19:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 06:20:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:20:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 06:20:10 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 11:12:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Feb 2018 11:13:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:13:37 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 11:13:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 11:13:52 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Feb 2018 11:14:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Feb 2018 11:18:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:18:40 GMT
ENV RAILS_ENV=production
# Thu, 15 Feb 2018 11:18:42 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Feb 2018 11:18:49 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Feb 2018 11:18:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Feb 2018 11:18:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Feb 2018 11:33:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 11:33:32 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Feb 2018 11:33:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Feb 2018 11:33:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 11:33:41 GMT
EXPOSE 3000/tcp
# Thu, 15 Feb 2018 11:33:47 GMT
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
	-	`sha256:790246d9fd455d8b66275d637fcb1cc8d8c125c2a4a606867916f80c04b3e145`  
		Last Modified: Thu, 15 Feb 2018 06:47:55 GMT  
		Size: 21.7 MB (21714410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90326cf5425b9dfffb1e74c936cc9dc62cb02cfeae3a300bf2fb7b190fc6f5c9`  
		Last Modified: Thu, 15 Feb 2018 06:47:49 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010716011645ef561a7b223b01cddbfdede964742c21795398f9f5aaf24d3a59`  
		Last Modified: Thu, 15 Feb 2018 12:17:33 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20a546e7b4a806cba0d4faf7722c37a899040abfc59893721ae58b400c95cab`  
		Last Modified: Thu, 15 Feb 2018 12:17:37 GMT  
		Size: 14.7 MB (14720508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd388a051fbca6094f1707c40989ac6b7910473a3aab1dd4f0b5ac509a68ba5`  
		Last Modified: Thu, 15 Feb 2018 12:17:30 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a241e725174e1c62cd129d5856b76c16a63c57cc2935a6d3f75ef7c5e73ed7fa`  
		Last Modified: Thu, 15 Feb 2018 12:17:29 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c1614409a22f27c32f34bae829c8ec071a332520a28e389a2e5b3dfab84bf`  
		Last Modified: Thu, 15 Feb 2018 12:17:53 GMT  
		Size: 58.1 MB (58133315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6283f11b8e56b9d95dd9a6d09fe0b0bb30ddc2bd3836054e0366abc097f446`  
		Last Modified: Thu, 15 Feb 2018 12:17:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8a68933fea5d0f355982168a9c21a3e55d491f686a8a764d568de37f14c2fe`  
		Last Modified: Thu, 15 Feb 2018 12:17:29 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e1d18db576df31de6ec0c7388a50c21b9556ae1400a24c2874ed784065b7aa`  
		Last Modified: Thu, 15 Feb 2018 12:18:02 GMT  
		Size: 99.6 MB (99574021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a0a195cfab43caa390974ac1b677b71baa8571c66672c1ab7a5620b9258aa6`  
		Last Modified: Thu, 15 Feb 2018 12:17:26 GMT  
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
$ docker pull redmine@sha256:40ab0b68f1fd155c25adf1a25d842ebb500bc1150a81f406a23dbeb464eb0e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:285cd959ff3d2378b008114e67db7239d33393ef4d7d8f3e3ae39801114029de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278603755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c08f41e8a887569c325bb588607aaa90edd733ee6b781f85bfbdebdeecbd8cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:05:20 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:05:21 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 01:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 01:08:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 01:08:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 01:08:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 01:08:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:15:01 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:15:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:15:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:15:38 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:15:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:16:27 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:16:28 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:16:28 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:16:39 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:16:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:19:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:19:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:19:54 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:19:55 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:19:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 07 Feb 2018 03:20:10 GMT
ENV PASSENGER_VERSION=5.2.0
# Wed, 07 Feb 2018 03:20:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:20:32 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 07 Feb 2018 03:20:33 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ef1a44eb210f12a1274d2c75ebda24151565f7270ceeb760561b43eac3afe0`  
		Last Modified: Wed, 07 Feb 2018 02:14:35 GMT  
		Size: 21.3 MB (21268456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdaac495b62aeafe29255fae1bfc09e6b11d45e2b2dff810972a74b4d8e93a2`  
		Last Modified: Wed, 07 Feb 2018 02:14:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb048f176909b2a8008279c71f3cfa9417f7fa96f5ea8213a9781fc2b578a308`  
		Last Modified: Wed, 07 Feb 2018 03:34:19 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55edb0740627d22c14ae523f4be6fb67e976bb02f782c03e038bd82730be224`  
		Last Modified: Wed, 07 Feb 2018 03:34:22 GMT  
		Size: 14.7 MB (14650330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05644c4e62aaadb2be2ea50c0b3a4fd0299e30b5ff85a25b7d036192cc14d260`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae74edce5904a3db6f507ea74e2d23dd1a85022e8104b62032f2e4624b018f0`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 8.5 KB (8510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e89c20363903e1324bb4503a74ae8782afea9a2b1a481635613560526f7433`  
		Last Modified: Wed, 07 Feb 2018 03:34:31 GMT  
		Size: 59.3 MB (59271503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070298887293a4fbbbf58cfd90196f9e93e490954428b6989b8a5b18949e918f`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9341b396e78c01b8c55446c4d64a744ce50d3c4f7f66a2f4214e10ea32b04eef`  
		Last Modified: Wed, 07 Feb 2018 03:34:16 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891ac55bced60e812982af026e7f0c4508d04cffa9bcc120366401631a24a4f2`  
		Last Modified: Wed, 07 Feb 2018 03:34:46 GMT  
		Size: 98.8 MB (98822064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e05898ea82309521ea53766ca0651ef90d45e2ba1107d7c11ecd6c777f80f12`  
		Last Modified: Wed, 07 Feb 2018 03:34:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9d0ea35f9c5d5f6a6452c3686f73b87623d1a4e1b226e4180ddf66235e6cd5`  
		Last Modified: Wed, 07 Feb 2018 03:35:56 GMT  
		Size: 14.5 MB (14484299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ebd125ce223cc260a61045ec868281d65e4245385b7d0ed1917b707c9a6103`  
		Last Modified: Wed, 07 Feb 2018 03:35:49 GMT  
		Size: 4.4 MB (4354962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
