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
$ docker pull redmine@sha256:d082d344b2febfeac64958da98d43a13b4fa1aac6b3ff8b0d1632bf8f122e4dd
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
$ docker pull redmine@sha256:ba2abc1fa25e343a185fa0bb61ee8480f73a89c39282f85c945b7dfe63d3dc21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247083290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52652e8c331913246bed5941c638ebc708175c0fc60050b0e73aa8f14ebfd77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 02:33:25 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:33:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:38:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:38:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:38:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:38:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:38:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:38:51 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:27:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:28:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:28:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:28:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:28:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:28:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:29:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:29:25 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:29:25 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:29:26 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:29:26 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:29:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:34:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:34:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:34:26 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:34:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:34:27 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:34:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e269e3f6d3470aae1ecb4ca401010e7bbf79bdba2eecf4677d2811ef925bc5c`  
		Last Modified: Wed, 07 Feb 2018 03:07:46 GMT  
		Size: 20.9 MB (20899466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a23f6e370f0913dee6aac69f8af7dc2ac4a22987096780ba264cdfbcdbe785`  
		Last Modified: Wed, 07 Feb 2018 03:07:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e461fc0aa7be40cae1b120ef2b28057c61784dc0695973cea780ad831709ce8b`  
		Last Modified: Wed, 07 Feb 2018 03:45:24 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c418088eee83b03574ea3ab4eac2cf626b0a417c0069300a3acdd3757b49f6e`  
		Last Modified: Wed, 07 Feb 2018 03:45:27 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24af8f297c1b85b11af3a9a086321bbc3ec4c7ff2b6dae9d654f77b07289749e`  
		Last Modified: Wed, 07 Feb 2018 03:45:23 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378dfe5af65dbd0f71a7e0ad495ee0643df2e0d8b6058c9f0776a1f6bc697e16`  
		Last Modified: Wed, 07 Feb 2018 03:45:22 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad91453ac3e238314ea341c51e2535ab8e6d006cb156939b3be5b4ee134ebbd`  
		Last Modified: Wed, 07 Feb 2018 03:45:37 GMT  
		Size: 54.3 MB (54345167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e06e14be3fb4a12e90cf9f7cd2b26c7109560eb0439f1554508b331a77eae0d`  
		Last Modified: Wed, 07 Feb 2018 03:45:20 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e2a7166c38440886371c82c71ee9f791a87d2381a7372c5ce8260217c1362b`  
		Last Modified: Wed, 07 Feb 2018 03:45:22 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08a180ebd7599bd23a865ff7857e1b2a10f03fa86029d484a54588470bae54f`  
		Last Modified: Wed, 07 Feb 2018 03:45:46 GMT  
		Size: 97.3 MB (97286668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40959d54d2b3913535c2f26349fdcd7b9a9014e2f04c19969824d1cea5917ba2`  
		Last Modified: Wed, 07 Feb 2018 03:45:21 GMT  
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
$ docker pull redmine@sha256:d68b7d838539e85241f8abd23d6bcc8f992e30c41239e5152021e66e7be3bf2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258948295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703be990e659ef7c8569104ad2fdb8a682d891ef7ae8f967a26ceb5bf8b10f23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:53:24 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:53:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:02:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:03:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:03:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:03:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:03:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:03:08 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:24:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:25:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:25:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:25:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:25:57 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:26:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:29:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:29:58 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:30:00 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:30:01 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:30:02 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:30:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:40:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:40:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:40:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:40:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:40:58 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:41:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dc1fec2f840453035fd34b627fe37118c72f8a2a21c82d540109d6be7bd24d`  
		Last Modified: Wed, 07 Feb 2018 03:03:40 GMT  
		Size: 21.7 MB (21714307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fcfbca729fc584ef23463860f2edeb0ca9b70d5ca059277e117bef40c9b98f`  
		Last Modified: Wed, 07 Feb 2018 03:03:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895eec8a69b2c5813faef894489dec191d690741159397ad9250a3310c27a4d5`  
		Last Modified: Wed, 07 Feb 2018 04:05:25 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58d4bf24f74d32efdd0088beb13b29126989216c90087e6b56c01af02c045f5`  
		Last Modified: Wed, 07 Feb 2018 04:05:28 GMT  
		Size: 14.7 MB (14720269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77f3ad23ae39d267f897410b9629de295c8bb309c7c38cbcb0d1edb39ffa5e1`  
		Last Modified: Wed, 07 Feb 2018 04:05:22 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2724cb5022a764939503e3b767774985a1b9cd9123a093d311bc7cd41707216e`  
		Last Modified: Wed, 07 Feb 2018 04:05:22 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567430fe426ad60201ddab11f643ff87c392eead8fe430084004085808d9f3d`  
		Last Modified: Wed, 07 Feb 2018 04:05:34 GMT  
		Size: 58.1 MB (58133361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4023ed267682c387d8443e609df778bac7d0ad153addc153a7d9911c0b66f53d`  
		Last Modified: Wed, 07 Feb 2018 04:05:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902ca49580ae23346b63fe532fa5397c99fc3ba4472a2154ae7fb7c30bd0d61`  
		Last Modified: Wed, 07 Feb 2018 04:05:21 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20314c24b18048d865adf93e1c94a1d4ed36ec99850e4b0d0f555c20902b1bbc`  
		Last Modified: Wed, 07 Feb 2018 04:05:43 GMT  
		Size: 99.5 MB (99477805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d78e7a41bda31470536b4f06bed3c5e443809d67e0efb12f8871a04ef73872`  
		Last Modified: Wed, 07 Feb 2018 04:05:19 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:e040e42cf28d028bdbe1a292aa367367316ebee3be305e3219753727b4ab37bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263879114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8add0f74e687f731d2d80a98179d4d70f8a505d354d43d9481794ce93c4b0c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:58:10 GMT
ENV RUBY_MAJOR=2.4
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_VERSION=2.4.3
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 09:45:49 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 09:45:49 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 09:49:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 09:49:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 09:49:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 09:49:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 09:49:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 09:49:09 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 10:34:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 10:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:34:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 10:34:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 10:34:18 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 10:34:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 10:34:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:34:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 10:34:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 10:34:58 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 10:34:58 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 10:35:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 10:37:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 10:37:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 10:37:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 10:37:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 10:37:52 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 10:37:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48920cf36e0ba682bf491b280265e3eb26ad1d48a7b0110435b01eb61fced843`  
		Last Modified: Wed, 07 Feb 2018 10:15:38 GMT  
		Size: 21.7 MB (21667348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529559c589d35ec202b85798f7735f9988906c9e753848addcca1ae4f1bbef26`  
		Last Modified: Wed, 07 Feb 2018 10:15:32 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63b620d928b352d26083ee7184f910081781ffc757a40152b3d2b3ae080dfde`  
		Last Modified: Wed, 07 Feb 2018 10:44:06 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb813590ad1ee264ec7d14bfce7d9154ba69c06db81a23703ac3b73c03b9bf13`  
		Last Modified: Wed, 07 Feb 2018 10:44:08 GMT  
		Size: 14.8 MB (14815153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d617cebb7760951ee73528f4e9fc906ae2e612f67f72718c76602f04b53e3d`  
		Last Modified: Wed, 07 Feb 2018 10:44:06 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde8658bf75a01a8cbc65f308306b8c0fe07caf78eb0f79774a4992d2771813`  
		Last Modified: Wed, 07 Feb 2018 10:44:05 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b4d8ff0258ed77b2f214ec5c95f26e680a4d5bd805ffb9d77920c80e8217c0`  
		Last Modified: Wed, 07 Feb 2018 10:44:15 GMT  
		Size: 59.1 MB (59110640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4409b9ead1dd7d48178384f4380c64f9b7522021ab88a3435af39503152de22f`  
		Last Modified: Wed, 07 Feb 2018 10:44:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415a23b9a93c5918eb0ca90943df628adcb73b30a48f45c588d08cbee51af097`  
		Last Modified: Wed, 07 Feb 2018 10:44:04 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76aa630370e5d3ab3b39a65f920fa94094d8dfd9c99e074d2726ef2b0b0d5006`  
		Last Modified: Wed, 07 Feb 2018 10:44:22 GMT  
		Size: 102.6 MB (102562276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c40a40d94f3e415cc208d8e6cc1ff8c7f2312fd5b30a2bedfd3b69fbcfb31b5`  
		Last Modified: Wed, 07 Feb 2018 10:44:03 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:76ee77ffe70c3ea392e54f934c8a8b1ce8ac3761334fb9565f52cde19d4274cd
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
$ docker pull redmine@sha256:8200d03fec4d6b6d3f53fe0775dce8630b7c6a148908995a083959c1984bfef2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.0 MB (236967241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554865da5b3681b65d60127b9c89c90970c7c35065de3c0bc550c402cfabd2f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 02:59:45 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:59:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 03:03:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 03:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 03:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 03:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 03:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 03:03:48 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:34:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:35:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:35:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:35:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:35:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:35:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:36:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:36:06 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:36:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:40:36 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 03:40:37 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 03:40:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:44:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:44:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:44:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:44:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:44:58 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:44:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9a1f847c8c10227d510a04f44ba730d2743da26fabb6bcbe78e8dd34641931`  
		Last Modified: Wed, 07 Feb 2018 03:11:47 GMT  
		Size: 30.6 MB (30584212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b25125842e9a065b134a9e1e296b92d887499f64ba79f358c600433582c934`  
		Last Modified: Wed, 07 Feb 2018 03:11:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4850ccaf7284c799e549ff64522c16a46bb5449b2a700ed38a988cdb9ec6b79c`  
		Last Modified: Wed, 07 Feb 2018 03:46:23 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6f98db5c710ba5ee035babf0bb3d88cc82f4cb54aea0fc48549b35612d28de`  
		Last Modified: Wed, 07 Feb 2018 03:46:26 GMT  
		Size: 14.1 MB (14134489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a883562cbfd6ef70ad02c2363b0faae99420169db627351e2722c61542da6c`  
		Last Modified: Wed, 07 Feb 2018 03:46:24 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb8a754dede9c9a85b520297dab18ed28e553e1e14735cab7e619e40ed65d6f`  
		Last Modified: Wed, 07 Feb 2018 03:46:21 GMT  
		Size: 7.3 KB (7314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46269fc6a9e8e7f44c01614fdde83ca12bf2a704c8bb206b71414deb81647f0a`  
		Last Modified: Wed, 07 Feb 2018 03:46:38 GMT  
		Size: 54.3 MB (54345048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb162addbdb7c7ddae6f70c746f66d8e1e37aff4ceb1c1ebae930739521fe05`  
		Last Modified: Wed, 07 Feb 2018 03:46:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3457388aa63dee6c82bbd13daff4dbcefdacbb2d0988c4dd20c172ada892114`  
		Last Modified: Wed, 07 Feb 2018 03:46:55 GMT  
		Size: 2.3 MB (2347824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0698d571c57b6cb78b8bebf46a7959b7bd6d95620bac5003a32a59b359a50754`  
		Last Modified: Wed, 07 Feb 2018 03:47:11 GMT  
		Size: 77.6 MB (77592771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5fa957a75dd8441a91a1664cd9cd3029c0d9ad494650f1f0cc646c59abcb64`  
		Last Modified: Wed, 07 Feb 2018 03:46:54 GMT  
		Size: 1.8 KB (1794 bytes)  
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
$ docker pull redmine@sha256:1bd7cb2245a4e8338f7f4a78580fc3456b3dc69ccccf132e037b00edb2fb56fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249603203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323ca8be64260d3ba8c970df40aba03ed4eb53521a6c60c16acabce172cf38b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 02:50:02 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:50:04 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:58:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:58:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:58:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:58:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:58:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:58:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:41:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:41:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:42:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:42:09 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:42:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:44:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:45:00 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:45:01 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:55:11 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 03:55:13 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 03:55:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 04:04:43 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 04:04:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 04:04:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 04:04:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 04:04:50 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 04:04:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353a3fa48eaa141d84b9e9a797f1da1efd72cd6ea6df9de9a9e2c70273ba488`  
		Last Modified: Wed, 07 Feb 2018 03:08:35 GMT  
		Size: 32.9 MB (32878624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45686926763d46de3e4a5e97f50a51fb55d1b9a63e1bb1ee2d020ca62a249167`  
		Last Modified: Wed, 07 Feb 2018 03:08:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadbb83c2e5df71e2d80bb1a39fa3a7c29d75eeff6bd331b96d651ecbff7cbdf`  
		Last Modified: Wed, 07 Feb 2018 04:06:17 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24536be634413bca05897b04788202cfb6d756c8d622b7a4c1281c0ad7f7f45`  
		Last Modified: Wed, 07 Feb 2018 04:06:20 GMT  
		Size: 14.7 MB (14720457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df8319158447dcfd66214fc5fcd3bc358307ae39bf24a196d5ba9aeac007c7d`  
		Last Modified: Wed, 07 Feb 2018 04:06:15 GMT  
		Size: 469.9 KB (469852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f47f9f4dce0310b1e2844a5316cfef8fa0e5daf6385136fac7b1b9b34dfdda7`  
		Last Modified: Wed, 07 Feb 2018 04:06:14 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fc964f4375b8386caf0c233026e8ef82a44157d395e0b4ae1f5315d2722f4`  
		Last Modified: Wed, 07 Feb 2018 04:06:28 GMT  
		Size: 58.1 MB (58133263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7ae11e9272632e2a2fab85345c08cab6c78114c5d0d5f0ddde081354ec2f62`  
		Last Modified: Wed, 07 Feb 2018 04:06:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3f15fdb719ae30b5cbe8d15002162dca56a799a3e5dec5ec307f8cbe7a88d1`  
		Last Modified: Wed, 07 Feb 2018 04:06:47 GMT  
		Size: 2.3 MB (2347825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8195d50a79624d82454cbf0506b29d5fb84edf0503c56129b04c0e8fb2e65f7`  
		Last Modified: Wed, 07 Feb 2018 04:07:05 GMT  
		Size: 79.1 MB (79075050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82060ce5bac5c8b8a5b3e5ce27ff11944fb79d2a3f4703d8a0d439b0b9fad4f`  
		Last Modified: Wed, 07 Feb 2018 04:06:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:c76d752b1c453a81b753c3676b8167d27a7983cd256508ca1528901443365c38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256318665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846d06f30f7cca2d31016a2ee6eeff55c632b2ac0de846274fd829398574b80a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 09:11:12 GMT
ENV RUBY_MAJOR=2.2
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_VERSION=2.2.9
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 10:10:29 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 10:10:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 10:13:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 10:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 10:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 10:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 10:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 10:13:05 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 10:38:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 10:38:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:38:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 10:38:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 10:38:25 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 10:38:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 10:38:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:38:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 10:38:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 10:41:27 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 10:41:27 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 10:41:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 10:43:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 10:43:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 10:43:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 10:43:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 10:43:49 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 10:43:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d4787a8859099aa6978dadcf744f5c3a7dc4986a8e48a370bc7d009816cfd1`  
		Last Modified: Wed, 07 Feb 2018 10:18:29 GMT  
		Size: 35.5 MB (35543152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812b42fb2eb74bb83d9a5b9414873bb5641ab11db985b1dfab75c168a149f5a9`  
		Last Modified: Wed, 07 Feb 2018 10:18:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d891629f85ea7676255ab91f1aa3ea9e51454dcd2f7aaab7ace035613806741`  
		Last Modified: Wed, 07 Feb 2018 10:44:45 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74933588f6a27cb5019677c67d3449acfe50e35e683dfa7fa97ab5ea7b161734`  
		Last Modified: Wed, 07 Feb 2018 10:44:46 GMT  
		Size: 14.8 MB (14815082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17164c0db5c443fec069873fa077c2566aba0ab46be2285e193dd0dae2f71b32`  
		Last Modified: Wed, 07 Feb 2018 10:44:41 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a92305f41b3d93cb6f03a8e0b5f64b15dc1dc965584f39b0279473c5a45d6d`  
		Last Modified: Wed, 07 Feb 2018 10:44:41 GMT  
		Size: 8.6 KB (8626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e7bd2a38af77b0b8c7ab0369fa11ff749d2e40249ddcc5d989c93e4f3c2563`  
		Last Modified: Wed, 07 Feb 2018 10:44:51 GMT  
		Size: 59.1 MB (59110835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade12e4c57db753491f095fe3905cde7a9d211c2e5bf911c29840888e7eff80`  
		Last Modified: Wed, 07 Feb 2018 10:44:39 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f498e6c718cee031a26979dfcb9532359a0bd16b6bdd9b9cd009a08b15fd36`  
		Last Modified: Wed, 07 Feb 2018 10:45:04 GMT  
		Size: 2.3 MB (2347506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3ab1d0b5643acfcce37033eca683ba1c66f5406f75c8248c407b7d63092876`  
		Last Modified: Wed, 07 Feb 2018 10:45:16 GMT  
		Size: 81.2 MB (81232433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5e9942ca8bcb37a1e6ace151b9cfdf40898a3479b5021f285fdb4cae93fb86`  
		Last Modified: Wed, 07 Feb 2018 10:45:03 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.9`

```console
$ docker pull redmine@sha256:76ee77ffe70c3ea392e54f934c8a8b1ce8ac3761334fb9565f52cde19d4274cd
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
$ docker pull redmine@sha256:8200d03fec4d6b6d3f53fe0775dce8630b7c6a148908995a083959c1984bfef2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.0 MB (236967241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:554865da5b3681b65d60127b9c89c90970c7c35065de3c0bc550c402cfabd2f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 02:59:45 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:59:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 03:03:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 03:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 03:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 03:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 03:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 03:03:48 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:34:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:35:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:35:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:35:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:35:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:35:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:36:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:36:06 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:36:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:40:36 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 03:40:37 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 03:40:41 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:44:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:44:57 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:44:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:44:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:44:58 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:44:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9a1f847c8c10227d510a04f44ba730d2743da26fabb6bcbe78e8dd34641931`  
		Last Modified: Wed, 07 Feb 2018 03:11:47 GMT  
		Size: 30.6 MB (30584212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b25125842e9a065b134a9e1e296b92d887499f64ba79f358c600433582c934`  
		Last Modified: Wed, 07 Feb 2018 03:11:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4850ccaf7284c799e549ff64522c16a46bb5449b2a700ed38a988cdb9ec6b79c`  
		Last Modified: Wed, 07 Feb 2018 03:46:23 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6f98db5c710ba5ee035babf0bb3d88cc82f4cb54aea0fc48549b35612d28de`  
		Last Modified: Wed, 07 Feb 2018 03:46:26 GMT  
		Size: 14.1 MB (14134489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a883562cbfd6ef70ad02c2363b0faae99420169db627351e2722c61542da6c`  
		Last Modified: Wed, 07 Feb 2018 03:46:24 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb8a754dede9c9a85b520297dab18ed28e553e1e14735cab7e619e40ed65d6f`  
		Last Modified: Wed, 07 Feb 2018 03:46:21 GMT  
		Size: 7.3 KB (7314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46269fc6a9e8e7f44c01614fdde83ca12bf2a704c8bb206b71414deb81647f0a`  
		Last Modified: Wed, 07 Feb 2018 03:46:38 GMT  
		Size: 54.3 MB (54345048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb162addbdb7c7ddae6f70c746f66d8e1e37aff4ceb1c1ebae930739521fe05`  
		Last Modified: Wed, 07 Feb 2018 03:46:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3457388aa63dee6c82bbd13daff4dbcefdacbb2d0988c4dd20c172ada892114`  
		Last Modified: Wed, 07 Feb 2018 03:46:55 GMT  
		Size: 2.3 MB (2347824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0698d571c57b6cb78b8bebf46a7959b7bd6d95620bac5003a32a59b359a50754`  
		Last Modified: Wed, 07 Feb 2018 03:47:11 GMT  
		Size: 77.6 MB (77592771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5fa957a75dd8441a91a1664cd9cd3029c0d9ad494650f1f0cc646c59abcb64`  
		Last Modified: Wed, 07 Feb 2018 03:46:54 GMT  
		Size: 1.8 KB (1794 bytes)  
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
$ docker pull redmine@sha256:1bd7cb2245a4e8338f7f4a78580fc3456b3dc69ccccf132e037b00edb2fb56fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249603203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323ca8be64260d3ba8c970df40aba03ed4eb53521a6c60c16acabce172cf38b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 02:50:02 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:50:04 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:58:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:58:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:58:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:58:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:58:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:58:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:41:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:41:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:42:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:42:09 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:42:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:44:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:45:00 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:45:01 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:55:11 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 03:55:13 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 03:55:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 04:04:43 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 04:04:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 04:04:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 04:04:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 04:04:50 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 04:04:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353a3fa48eaa141d84b9e9a797f1da1efd72cd6ea6df9de9a9e2c70273ba488`  
		Last Modified: Wed, 07 Feb 2018 03:08:35 GMT  
		Size: 32.9 MB (32878624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45686926763d46de3e4a5e97f50a51fb55d1b9a63e1bb1ee2d020ca62a249167`  
		Last Modified: Wed, 07 Feb 2018 03:08:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadbb83c2e5df71e2d80bb1a39fa3a7c29d75eeff6bd331b96d651ecbff7cbdf`  
		Last Modified: Wed, 07 Feb 2018 04:06:17 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24536be634413bca05897b04788202cfb6d756c8d622b7a4c1281c0ad7f7f45`  
		Last Modified: Wed, 07 Feb 2018 04:06:20 GMT  
		Size: 14.7 MB (14720457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df8319158447dcfd66214fc5fcd3bc358307ae39bf24a196d5ba9aeac007c7d`  
		Last Modified: Wed, 07 Feb 2018 04:06:15 GMT  
		Size: 469.9 KB (469852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f47f9f4dce0310b1e2844a5316cfef8fa0e5daf6385136fac7b1b9b34dfdda7`  
		Last Modified: Wed, 07 Feb 2018 04:06:14 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fc964f4375b8386caf0c233026e8ef82a44157d395e0b4ae1f5315d2722f4`  
		Last Modified: Wed, 07 Feb 2018 04:06:28 GMT  
		Size: 58.1 MB (58133263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7ae11e9272632e2a2fab85345c08cab6c78114c5d0d5f0ddde081354ec2f62`  
		Last Modified: Wed, 07 Feb 2018 04:06:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3f15fdb719ae30b5cbe8d15002162dca56a799a3e5dec5ec307f8cbe7a88d1`  
		Last Modified: Wed, 07 Feb 2018 04:06:47 GMT  
		Size: 2.3 MB (2347825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8195d50a79624d82454cbf0506b29d5fb84edf0503c56129b04c0e8fb2e65f7`  
		Last Modified: Wed, 07 Feb 2018 04:07:05 GMT  
		Size: 79.1 MB (79075050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82060ce5bac5c8b8a5b3e5ce27ff11944fb79d2a3f4703d8a0d439b0b9fad4f`  
		Last Modified: Wed, 07 Feb 2018 04:06:45 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; s390x

```console
$ docker pull redmine@sha256:c76d752b1c453a81b753c3676b8167d27a7983cd256508ca1528901443365c38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256318665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846d06f30f7cca2d31016a2ee6eeff55c632b2ac0de846274fd829398574b80a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 09:11:12 GMT
ENV RUBY_MAJOR=2.2
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_VERSION=2.2.9
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 10:10:29 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 10:10:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 10:13:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 10:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 10:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 10:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 10:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 10:13:05 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 10:38:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 10:38:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:38:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 10:38:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 10:38:25 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 10:38:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 10:38:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:38:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 10:38:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 10:41:27 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 07 Feb 2018 10:41:27 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 07 Feb 2018 10:41:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 10:43:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 10:43:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 10:43:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 10:43:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 10:43:49 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 10:43:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d4787a8859099aa6978dadcf744f5c3a7dc4986a8e48a370bc7d009816cfd1`  
		Last Modified: Wed, 07 Feb 2018 10:18:29 GMT  
		Size: 35.5 MB (35543152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812b42fb2eb74bb83d9a5b9414873bb5641ab11db985b1dfab75c168a149f5a9`  
		Last Modified: Wed, 07 Feb 2018 10:18:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d891629f85ea7676255ab91f1aa3ea9e51454dcd2f7aaab7ace035613806741`  
		Last Modified: Wed, 07 Feb 2018 10:44:45 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74933588f6a27cb5019677c67d3449acfe50e35e683dfa7fa97ab5ea7b161734`  
		Last Modified: Wed, 07 Feb 2018 10:44:46 GMT  
		Size: 14.8 MB (14815082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17164c0db5c443fec069873fa077c2566aba0ab46be2285e193dd0dae2f71b32`  
		Last Modified: Wed, 07 Feb 2018 10:44:41 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a92305f41b3d93cb6f03a8e0b5f64b15dc1dc965584f39b0279473c5a45d6d`  
		Last Modified: Wed, 07 Feb 2018 10:44:41 GMT  
		Size: 8.6 KB (8626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e7bd2a38af77b0b8c7ab0369fa11ff749d2e40249ddcc5d989c93e4f3c2563`  
		Last Modified: Wed, 07 Feb 2018 10:44:51 GMT  
		Size: 59.1 MB (59110835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade12e4c57db753491f095fe3905cde7a9d211c2e5bf911c29840888e7eff80`  
		Last Modified: Wed, 07 Feb 2018 10:44:39 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f498e6c718cee031a26979dfcb9532359a0bd16b6bdd9b9cd009a08b15fd36`  
		Last Modified: Wed, 07 Feb 2018 10:45:04 GMT  
		Size: 2.3 MB (2347506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3ab1d0b5643acfcce37033eca683ba1c66f5406f75c8248c407b7d63092876`  
		Last Modified: Wed, 07 Feb 2018 10:45:16 GMT  
		Size: 81.2 MB (81232433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5e9942ca8bcb37a1e6ace151b9cfdf40898a3479b5021f285fdb4cae93fb86`  
		Last Modified: Wed, 07 Feb 2018 10:45:03 GMT  
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
$ docker pull redmine@sha256:65513f87c9da67249a777dd92fa2673d197965a8bd89d2bee78ddafb83736511
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
$ docker pull redmine@sha256:07a32a351afcfced73099e50f861c332b42bdbbcd36d7089a0da420c7bad81c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.0 MB (237012073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab63883f4ecfb77641f5b80fac98c1edb7a7713f1e88e166f505eaab343d18e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 02:59:45 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:59:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 03:03:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 03:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 03:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 03:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 03:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 03:03:48 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:34:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:35:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:35:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:35:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:35:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:35:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:36:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:36:06 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:36:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:36:06 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 03:36:07 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 03:36:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:40:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:40:21 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:40:21 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:40:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:40:21 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:40:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9a1f847c8c10227d510a04f44ba730d2743da26fabb6bcbe78e8dd34641931`  
		Last Modified: Wed, 07 Feb 2018 03:11:47 GMT  
		Size: 30.6 MB (30584212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b25125842e9a065b134a9e1e296b92d887499f64ba79f358c600433582c934`  
		Last Modified: Wed, 07 Feb 2018 03:11:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4850ccaf7284c799e549ff64522c16a46bb5449b2a700ed38a988cdb9ec6b79c`  
		Last Modified: Wed, 07 Feb 2018 03:46:23 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6f98db5c710ba5ee035babf0bb3d88cc82f4cb54aea0fc48549b35612d28de`  
		Last Modified: Wed, 07 Feb 2018 03:46:26 GMT  
		Size: 14.1 MB (14134489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a883562cbfd6ef70ad02c2363b0faae99420169db627351e2722c61542da6c`  
		Last Modified: Wed, 07 Feb 2018 03:46:24 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb8a754dede9c9a85b520297dab18ed28e553e1e14735cab7e619e40ed65d6f`  
		Last Modified: Wed, 07 Feb 2018 03:46:21 GMT  
		Size: 7.3 KB (7314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46269fc6a9e8e7f44c01614fdde83ca12bf2a704c8bb206b71414deb81647f0a`  
		Last Modified: Wed, 07 Feb 2018 03:46:38 GMT  
		Size: 54.3 MB (54345048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb162addbdb7c7ddae6f70c746f66d8e1e37aff4ceb1c1ebae930739521fe05`  
		Last Modified: Wed, 07 Feb 2018 03:46:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069b18c566dcfffd71dd5bb89bfa9c4b05f2a9f382bd4ae83502f0b40dfb15`  
		Last Modified: Wed, 07 Feb 2018 03:46:21 GMT  
		Size: 2.4 MB (2392602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a5492779541645b41f59f3787f02d66b6b1d9e749a1eca3c4dd0c25123c874`  
		Last Modified: Wed, 07 Feb 2018 03:46:38 GMT  
		Size: 77.6 MB (77592825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050b1840dd679379aba52a95ff2e11260d508e25c4d83a1556acff2c20795058`  
		Last Modified: Wed, 07 Feb 2018 03:46:21 GMT  
		Size: 1.8 KB (1794 bytes)  
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
$ docker pull redmine@sha256:d93f517840efebca5d7c00ba005e87882439e28031763c382aa14fb15bad7a77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249647967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012e5a208fd573b6ea35c6be15764ccaf142a81a38341dbb42a73e3e7728affb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 02:50:02 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:50:04 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:58:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:58:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:58:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:58:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:58:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:58:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:41:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:41:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:42:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:42:09 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:42:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:44:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:45:00 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:45:01 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:45:03 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 03:45:04 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 03:45:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:54:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:54:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:54:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:54:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:54:51 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:54:59 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353a3fa48eaa141d84b9e9a797f1da1efd72cd6ea6df9de9a9e2c70273ba488`  
		Last Modified: Wed, 07 Feb 2018 03:08:35 GMT  
		Size: 32.9 MB (32878624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45686926763d46de3e4a5e97f50a51fb55d1b9a63e1bb1ee2d020ca62a249167`  
		Last Modified: Wed, 07 Feb 2018 03:08:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadbb83c2e5df71e2d80bb1a39fa3a7c29d75eeff6bd331b96d651ecbff7cbdf`  
		Last Modified: Wed, 07 Feb 2018 04:06:17 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24536be634413bca05897b04788202cfb6d756c8d622b7a4c1281c0ad7f7f45`  
		Last Modified: Wed, 07 Feb 2018 04:06:20 GMT  
		Size: 14.7 MB (14720457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df8319158447dcfd66214fc5fcd3bc358307ae39bf24a196d5ba9aeac007c7d`  
		Last Modified: Wed, 07 Feb 2018 04:06:15 GMT  
		Size: 469.9 KB (469852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f47f9f4dce0310b1e2844a5316cfef8fa0e5daf6385136fac7b1b9b34dfdda7`  
		Last Modified: Wed, 07 Feb 2018 04:06:14 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fc964f4375b8386caf0c233026e8ef82a44157d395e0b4ae1f5315d2722f4`  
		Last Modified: Wed, 07 Feb 2018 04:06:28 GMT  
		Size: 58.1 MB (58133263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7ae11e9272632e2a2fab85345c08cab6c78114c5d0d5f0ddde081354ec2f62`  
		Last Modified: Wed, 07 Feb 2018 04:06:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70c71d18d12d51811ef9c4631e3083789a19250fa51ffffa0e0b50cec109fb6`  
		Last Modified: Wed, 07 Feb 2018 04:06:13 GMT  
		Size: 2.4 MB (2392603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad676e17476ef4a7460b7ccce30dbca9ffb2609fdab6a922af76e6c43add8af`  
		Last Modified: Wed, 07 Feb 2018 04:06:29 GMT  
		Size: 79.1 MB (79075036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dbee429109124eca1f1b2655ee1c6bf45396671b9b183fa34ada3efda047bf`  
		Last Modified: Wed, 07 Feb 2018 04:06:12 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:a7e678b6503e255a624a7dfaf7e9ac195bb4986e87cf8c2c511f59bee30ba0f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256364196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c4f1eef5a579d6c24a2d1d718c4178fd02d0f85d814534c5d34e9e6caff91f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 09:11:12 GMT
ENV RUBY_MAJOR=2.2
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_VERSION=2.2.9
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 10:10:29 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 10:10:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 10:13:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 10:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 10:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 10:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 10:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 10:13:05 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 10:38:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 10:38:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:38:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 10:38:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 10:38:25 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 10:38:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 10:38:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:38:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 10:38:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 10:38:57 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 10:38:57 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 10:39:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 10:41:17 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 10:41:17 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 10:41:17 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 10:41:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 10:41:18 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 10:41:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d4787a8859099aa6978dadcf744f5c3a7dc4986a8e48a370bc7d009816cfd1`  
		Last Modified: Wed, 07 Feb 2018 10:18:29 GMT  
		Size: 35.5 MB (35543152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812b42fb2eb74bb83d9a5b9414873bb5641ab11db985b1dfab75c168a149f5a9`  
		Last Modified: Wed, 07 Feb 2018 10:18:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d891629f85ea7676255ab91f1aa3ea9e51454dcd2f7aaab7ace035613806741`  
		Last Modified: Wed, 07 Feb 2018 10:44:45 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74933588f6a27cb5019677c67d3449acfe50e35e683dfa7fa97ab5ea7b161734`  
		Last Modified: Wed, 07 Feb 2018 10:44:46 GMT  
		Size: 14.8 MB (14815082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17164c0db5c443fec069873fa077c2566aba0ab46be2285e193dd0dae2f71b32`  
		Last Modified: Wed, 07 Feb 2018 10:44:41 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a92305f41b3d93cb6f03a8e0b5f64b15dc1dc965584f39b0279473c5a45d6d`  
		Last Modified: Wed, 07 Feb 2018 10:44:41 GMT  
		Size: 8.6 KB (8626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e7bd2a38af77b0b8c7ab0369fa11ff749d2e40249ddcc5d989c93e4f3c2563`  
		Last Modified: Wed, 07 Feb 2018 10:44:51 GMT  
		Size: 59.1 MB (59110835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade12e4c57db753491f095fe3905cde7a9d211c2e5bf911c29840888e7eff80`  
		Last Modified: Wed, 07 Feb 2018 10:44:39 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3613014a0121cd449220ab03956db84729921642d07f1d60a94a3cccd184483`  
		Last Modified: Wed, 07 Feb 2018 10:44:41 GMT  
		Size: 2.4 MB (2392401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c85173b383eb9a493cfc6954fd4b292930a3d830d81d7ca8f359a96630789bd`  
		Last Modified: Wed, 07 Feb 2018 10:44:50 GMT  
		Size: 81.2 MB (81233069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0bceaf84f0d06fe0fc79eaae6fc21a7f77c251457dee555db57678c47b1a2c`  
		Last Modified: Wed, 07 Feb 2018 10:44:39 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.6`

```console
$ docker pull redmine@sha256:65513f87c9da67249a777dd92fa2673d197965a8bd89d2bee78ddafb83736511
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
$ docker pull redmine@sha256:07a32a351afcfced73099e50f861c332b42bdbbcd36d7089a0da420c7bad81c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.0 MB (237012073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab63883f4ecfb77641f5b80fac98c1edb7a7713f1e88e166f505eaab343d18e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 02:59:45 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:59:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 03:03:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 03:03:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 03:03:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 03:03:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 03:03:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 03:03:48 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:34:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:35:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:35:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:35:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:35:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:35:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:36:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:36:06 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:36:06 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:36:06 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 03:36:07 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 03:36:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:40:20 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:40:21 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:40:21 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:40:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:40:21 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:40:22 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9a1f847c8c10227d510a04f44ba730d2743da26fabb6bcbe78e8dd34641931`  
		Last Modified: Wed, 07 Feb 2018 03:11:47 GMT  
		Size: 30.6 MB (30584212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b25125842e9a065b134a9e1e296b92d887499f64ba79f358c600433582c934`  
		Last Modified: Wed, 07 Feb 2018 03:11:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4850ccaf7284c799e549ff64522c16a46bb5449b2a700ed38a988cdb9ec6b79c`  
		Last Modified: Wed, 07 Feb 2018 03:46:23 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6f98db5c710ba5ee035babf0bb3d88cc82f4cb54aea0fc48549b35612d28de`  
		Last Modified: Wed, 07 Feb 2018 03:46:26 GMT  
		Size: 14.1 MB (14134489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a883562cbfd6ef70ad02c2363b0faae99420169db627351e2722c61542da6c`  
		Last Modified: Wed, 07 Feb 2018 03:46:24 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb8a754dede9c9a85b520297dab18ed28e553e1e14735cab7e619e40ed65d6f`  
		Last Modified: Wed, 07 Feb 2018 03:46:21 GMT  
		Size: 7.3 KB (7314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46269fc6a9e8e7f44c01614fdde83ca12bf2a704c8bb206b71414deb81647f0a`  
		Last Modified: Wed, 07 Feb 2018 03:46:38 GMT  
		Size: 54.3 MB (54345048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb162addbdb7c7ddae6f70c746f66d8e1e37aff4ceb1c1ebae930739521fe05`  
		Last Modified: Wed, 07 Feb 2018 03:46:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84069b18c566dcfffd71dd5bb89bfa9c4b05f2a9f382bd4ae83502f0b40dfb15`  
		Last Modified: Wed, 07 Feb 2018 03:46:21 GMT  
		Size: 2.4 MB (2392602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a5492779541645b41f59f3787f02d66b6b1d9e749a1eca3c4dd0c25123c874`  
		Last Modified: Wed, 07 Feb 2018 03:46:38 GMT  
		Size: 77.6 MB (77592825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050b1840dd679379aba52a95ff2e11260d508e25c4d83a1556acff2c20795058`  
		Last Modified: Wed, 07 Feb 2018 03:46:21 GMT  
		Size: 1.8 KB (1794 bytes)  
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
$ docker pull redmine@sha256:d93f517840efebca5d7c00ba005e87882439e28031763c382aa14fb15bad7a77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249647967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012e5a208fd573b6ea35c6be15764ccaf142a81a38341dbb42a73e3e7728affb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 02:50:02 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:50:04 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:58:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:58:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:58:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:58:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:58:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:58:55 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:41:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:41:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:42:00 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:42:09 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:42:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:44:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:45:00 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:45:01 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:45:03 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 03:45:04 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 03:45:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:54:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:54:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:54:46 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:54:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:54:51 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:54:59 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353a3fa48eaa141d84b9e9a797f1da1efd72cd6ea6df9de9a9e2c70273ba488`  
		Last Modified: Wed, 07 Feb 2018 03:08:35 GMT  
		Size: 32.9 MB (32878624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45686926763d46de3e4a5e97f50a51fb55d1b9a63e1bb1ee2d020ca62a249167`  
		Last Modified: Wed, 07 Feb 2018 03:08:25 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadbb83c2e5df71e2d80bb1a39fa3a7c29d75eeff6bd331b96d651ecbff7cbdf`  
		Last Modified: Wed, 07 Feb 2018 04:06:17 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24536be634413bca05897b04788202cfb6d756c8d622b7a4c1281c0ad7f7f45`  
		Last Modified: Wed, 07 Feb 2018 04:06:20 GMT  
		Size: 14.7 MB (14720457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df8319158447dcfd66214fc5fcd3bc358307ae39bf24a196d5ba9aeac007c7d`  
		Last Modified: Wed, 07 Feb 2018 04:06:15 GMT  
		Size: 469.9 KB (469852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f47f9f4dce0310b1e2844a5316cfef8fa0e5daf6385136fac7b1b9b34dfdda7`  
		Last Modified: Wed, 07 Feb 2018 04:06:14 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fc964f4375b8386caf0c233026e8ef82a44157d395e0b4ae1f5315d2722f4`  
		Last Modified: Wed, 07 Feb 2018 04:06:28 GMT  
		Size: 58.1 MB (58133263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7ae11e9272632e2a2fab85345c08cab6c78114c5d0d5f0ddde081354ec2f62`  
		Last Modified: Wed, 07 Feb 2018 04:06:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70c71d18d12d51811ef9c4631e3083789a19250fa51ffffa0e0b50cec109fb6`  
		Last Modified: Wed, 07 Feb 2018 04:06:13 GMT  
		Size: 2.4 MB (2392603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad676e17476ef4a7460b7ccce30dbca9ffb2609fdab6a922af76e6c43add8af`  
		Last Modified: Wed, 07 Feb 2018 04:06:29 GMT  
		Size: 79.1 MB (79075036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dbee429109124eca1f1b2655ee1c6bf45396671b9b183fa34ada3efda047bf`  
		Last Modified: Wed, 07 Feb 2018 04:06:12 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; s390x

```console
$ docker pull redmine@sha256:a7e678b6503e255a624a7dfaf7e9ac195bb4986e87cf8c2c511f59bee30ba0f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256364196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c4f1eef5a579d6c24a2d1d718c4178fd02d0f85d814534c5d34e9e6caff91f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 09:11:12 GMT
ENV RUBY_MAJOR=2.2
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_VERSION=2.2.9
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 07 Feb 2018 10:10:29 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 10:10:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 10:13:04 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 10:13:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 10:13:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 10:13:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 10:13:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 10:13:05 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 10:38:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 10:38:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:38:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 10:38:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 10:38:25 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 10:38:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 10:38:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:38:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 10:38:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 10:38:57 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 07 Feb 2018 10:38:57 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 07 Feb 2018 10:39:11 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 10:41:17 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 10:41:17 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 10:41:17 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 10:41:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 10:41:18 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 10:41:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d4787a8859099aa6978dadcf744f5c3a7dc4986a8e48a370bc7d009816cfd1`  
		Last Modified: Wed, 07 Feb 2018 10:18:29 GMT  
		Size: 35.5 MB (35543152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812b42fb2eb74bb83d9a5b9414873bb5641ab11db985b1dfab75c168a149f5a9`  
		Last Modified: Wed, 07 Feb 2018 10:18:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d891629f85ea7676255ab91f1aa3ea9e51454dcd2f7aaab7ace035613806741`  
		Last Modified: Wed, 07 Feb 2018 10:44:45 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74933588f6a27cb5019677c67d3449acfe50e35e683dfa7fa97ab5ea7b161734`  
		Last Modified: Wed, 07 Feb 2018 10:44:46 GMT  
		Size: 14.8 MB (14815082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17164c0db5c443fec069873fa077c2566aba0ab46be2285e193dd0dae2f71b32`  
		Last Modified: Wed, 07 Feb 2018 10:44:41 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a92305f41b3d93cb6f03a8e0b5f64b15dc1dc965584f39b0279473c5a45d6d`  
		Last Modified: Wed, 07 Feb 2018 10:44:41 GMT  
		Size: 8.6 KB (8626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e7bd2a38af77b0b8c7ab0369fa11ff749d2e40249ddcc5d989c93e4f3c2563`  
		Last Modified: Wed, 07 Feb 2018 10:44:51 GMT  
		Size: 59.1 MB (59110835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade12e4c57db753491f095fe3905cde7a9d211c2e5bf911c29840888e7eff80`  
		Last Modified: Wed, 07 Feb 2018 10:44:39 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3613014a0121cd449220ab03956db84729921642d07f1d60a94a3cccd184483`  
		Last Modified: Wed, 07 Feb 2018 10:44:41 GMT  
		Size: 2.4 MB (2392401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c85173b383eb9a493cfc6954fd4b292930a3d830d81d7ca8f359a96630789bd`  
		Last Modified: Wed, 07 Feb 2018 10:44:50 GMT  
		Size: 81.2 MB (81233069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0bceaf84f0d06fe0fc79eaae6fc21a7f77c251457dee555db57678c47b1a2c`  
		Last Modified: Wed, 07 Feb 2018 10:44:39 GMT  
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
$ docker pull redmine@sha256:d082d344b2febfeac64958da98d43a13b4fa1aac6b3ff8b0d1632bf8f122e4dd
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
$ docker pull redmine@sha256:ba2abc1fa25e343a185fa0bb61ee8480f73a89c39282f85c945b7dfe63d3dc21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247083290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52652e8c331913246bed5941c638ebc708175c0fc60050b0e73aa8f14ebfd77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 02:33:25 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:33:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:38:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:38:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:38:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:38:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:38:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:38:51 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:27:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:28:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:28:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:28:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:28:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:28:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:29:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:29:25 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:29:25 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:29:26 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:29:26 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:29:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:34:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:34:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:34:26 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:34:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:34:27 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:34:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e269e3f6d3470aae1ecb4ca401010e7bbf79bdba2eecf4677d2811ef925bc5c`  
		Last Modified: Wed, 07 Feb 2018 03:07:46 GMT  
		Size: 20.9 MB (20899466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a23f6e370f0913dee6aac69f8af7dc2ac4a22987096780ba264cdfbcdbe785`  
		Last Modified: Wed, 07 Feb 2018 03:07:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e461fc0aa7be40cae1b120ef2b28057c61784dc0695973cea780ad831709ce8b`  
		Last Modified: Wed, 07 Feb 2018 03:45:24 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c418088eee83b03574ea3ab4eac2cf626b0a417c0069300a3acdd3757b49f6e`  
		Last Modified: Wed, 07 Feb 2018 03:45:27 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24af8f297c1b85b11af3a9a086321bbc3ec4c7ff2b6dae9d654f77b07289749e`  
		Last Modified: Wed, 07 Feb 2018 03:45:23 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378dfe5af65dbd0f71a7e0ad495ee0643df2e0d8b6058c9f0776a1f6bc697e16`  
		Last Modified: Wed, 07 Feb 2018 03:45:22 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad91453ac3e238314ea341c51e2535ab8e6d006cb156939b3be5b4ee134ebbd`  
		Last Modified: Wed, 07 Feb 2018 03:45:37 GMT  
		Size: 54.3 MB (54345167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e06e14be3fb4a12e90cf9f7cd2b26c7109560eb0439f1554508b331a77eae0d`  
		Last Modified: Wed, 07 Feb 2018 03:45:20 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e2a7166c38440886371c82c71ee9f791a87d2381a7372c5ce8260217c1362b`  
		Last Modified: Wed, 07 Feb 2018 03:45:22 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08a180ebd7599bd23a865ff7857e1b2a10f03fa86029d484a54588470bae54f`  
		Last Modified: Wed, 07 Feb 2018 03:45:46 GMT  
		Size: 97.3 MB (97286668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40959d54d2b3913535c2f26349fdcd7b9a9014e2f04c19969824d1cea5917ba2`  
		Last Modified: Wed, 07 Feb 2018 03:45:21 GMT  
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
$ docker pull redmine@sha256:d68b7d838539e85241f8abd23d6bcc8f992e30c41239e5152021e66e7be3bf2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258948295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703be990e659ef7c8569104ad2fdb8a682d891ef7ae8f967a26ceb5bf8b10f23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:53:24 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:53:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:02:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:03:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:03:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:03:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:03:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:03:08 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:24:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:25:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:25:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:25:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:25:57 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:26:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:29:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:29:58 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:30:00 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:30:01 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:30:02 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:30:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:40:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:40:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:40:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:40:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:40:58 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:41:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dc1fec2f840453035fd34b627fe37118c72f8a2a21c82d540109d6be7bd24d`  
		Last Modified: Wed, 07 Feb 2018 03:03:40 GMT  
		Size: 21.7 MB (21714307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fcfbca729fc584ef23463860f2edeb0ca9b70d5ca059277e117bef40c9b98f`  
		Last Modified: Wed, 07 Feb 2018 03:03:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895eec8a69b2c5813faef894489dec191d690741159397ad9250a3310c27a4d5`  
		Last Modified: Wed, 07 Feb 2018 04:05:25 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58d4bf24f74d32efdd0088beb13b29126989216c90087e6b56c01af02c045f5`  
		Last Modified: Wed, 07 Feb 2018 04:05:28 GMT  
		Size: 14.7 MB (14720269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77f3ad23ae39d267f897410b9629de295c8bb309c7c38cbcb0d1edb39ffa5e1`  
		Last Modified: Wed, 07 Feb 2018 04:05:22 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2724cb5022a764939503e3b767774985a1b9cd9123a093d311bc7cd41707216e`  
		Last Modified: Wed, 07 Feb 2018 04:05:22 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567430fe426ad60201ddab11f643ff87c392eead8fe430084004085808d9f3d`  
		Last Modified: Wed, 07 Feb 2018 04:05:34 GMT  
		Size: 58.1 MB (58133361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4023ed267682c387d8443e609df778bac7d0ad153addc153a7d9911c0b66f53d`  
		Last Modified: Wed, 07 Feb 2018 04:05:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902ca49580ae23346b63fe532fa5397c99fc3ba4472a2154ae7fb7c30bd0d61`  
		Last Modified: Wed, 07 Feb 2018 04:05:21 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20314c24b18048d865adf93e1c94a1d4ed36ec99850e4b0d0f555c20902b1bbc`  
		Last Modified: Wed, 07 Feb 2018 04:05:43 GMT  
		Size: 99.5 MB (99477805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d78e7a41bda31470536b4f06bed3c5e443809d67e0efb12f8871a04ef73872`  
		Last Modified: Wed, 07 Feb 2018 04:05:19 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:e040e42cf28d028bdbe1a292aa367367316ebee3be305e3219753727b4ab37bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263879114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8add0f74e687f731d2d80a98179d4d70f8a505d354d43d9481794ce93c4b0c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:58:10 GMT
ENV RUBY_MAJOR=2.4
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_VERSION=2.4.3
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 09:45:49 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 09:45:49 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 09:49:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 09:49:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 09:49:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 09:49:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 09:49:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 09:49:09 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 10:34:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 10:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:34:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 10:34:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 10:34:18 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 10:34:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 10:34:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:34:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 10:34:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 10:34:58 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 10:34:58 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 10:35:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 10:37:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 10:37:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 10:37:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 10:37:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 10:37:52 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 10:37:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48920cf36e0ba682bf491b280265e3eb26ad1d48a7b0110435b01eb61fced843`  
		Last Modified: Wed, 07 Feb 2018 10:15:38 GMT  
		Size: 21.7 MB (21667348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529559c589d35ec202b85798f7735f9988906c9e753848addcca1ae4f1bbef26`  
		Last Modified: Wed, 07 Feb 2018 10:15:32 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63b620d928b352d26083ee7184f910081781ffc757a40152b3d2b3ae080dfde`  
		Last Modified: Wed, 07 Feb 2018 10:44:06 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb813590ad1ee264ec7d14bfce7d9154ba69c06db81a23703ac3b73c03b9bf13`  
		Last Modified: Wed, 07 Feb 2018 10:44:08 GMT  
		Size: 14.8 MB (14815153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d617cebb7760951ee73528f4e9fc906ae2e612f67f72718c76602f04b53e3d`  
		Last Modified: Wed, 07 Feb 2018 10:44:06 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde8658bf75a01a8cbc65f308306b8c0fe07caf78eb0f79774a4992d2771813`  
		Last Modified: Wed, 07 Feb 2018 10:44:05 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b4d8ff0258ed77b2f214ec5c95f26e680a4d5bd805ffb9d77920c80e8217c0`  
		Last Modified: Wed, 07 Feb 2018 10:44:15 GMT  
		Size: 59.1 MB (59110640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4409b9ead1dd7d48178384f4380c64f9b7522021ab88a3435af39503152de22f`  
		Last Modified: Wed, 07 Feb 2018 10:44:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415a23b9a93c5918eb0ca90943df628adcb73b30a48f45c588d08cbee51af097`  
		Last Modified: Wed, 07 Feb 2018 10:44:04 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76aa630370e5d3ab3b39a65f920fa94094d8dfd9c99e074d2726ef2b0b0d5006`  
		Last Modified: Wed, 07 Feb 2018 10:44:22 GMT  
		Size: 102.6 MB (102562276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c40a40d94f3e415cc208d8e6cc1ff8c7f2312fd5b30a2bedfd3b69fbcfb31b5`  
		Last Modified: Wed, 07 Feb 2018 10:44:03 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.4`

```console
$ docker pull redmine@sha256:d082d344b2febfeac64958da98d43a13b4fa1aac6b3ff8b0d1632bf8f122e4dd
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
$ docker pull redmine@sha256:ba2abc1fa25e343a185fa0bb61ee8480f73a89c39282f85c945b7dfe63d3dc21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247083290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52652e8c331913246bed5941c638ebc708175c0fc60050b0e73aa8f14ebfd77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 02:33:25 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:33:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:38:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:38:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:38:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:38:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:38:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:38:51 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:27:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:28:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:28:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:28:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:28:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:28:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:29:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:29:25 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:29:25 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:29:26 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:29:26 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:29:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:34:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:34:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:34:26 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:34:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:34:27 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:34:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e269e3f6d3470aae1ecb4ca401010e7bbf79bdba2eecf4677d2811ef925bc5c`  
		Last Modified: Wed, 07 Feb 2018 03:07:46 GMT  
		Size: 20.9 MB (20899466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a23f6e370f0913dee6aac69f8af7dc2ac4a22987096780ba264cdfbcdbe785`  
		Last Modified: Wed, 07 Feb 2018 03:07:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e461fc0aa7be40cae1b120ef2b28057c61784dc0695973cea780ad831709ce8b`  
		Last Modified: Wed, 07 Feb 2018 03:45:24 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c418088eee83b03574ea3ab4eac2cf626b0a417c0069300a3acdd3757b49f6e`  
		Last Modified: Wed, 07 Feb 2018 03:45:27 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24af8f297c1b85b11af3a9a086321bbc3ec4c7ff2b6dae9d654f77b07289749e`  
		Last Modified: Wed, 07 Feb 2018 03:45:23 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378dfe5af65dbd0f71a7e0ad495ee0643df2e0d8b6058c9f0776a1f6bc697e16`  
		Last Modified: Wed, 07 Feb 2018 03:45:22 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad91453ac3e238314ea341c51e2535ab8e6d006cb156939b3be5b4ee134ebbd`  
		Last Modified: Wed, 07 Feb 2018 03:45:37 GMT  
		Size: 54.3 MB (54345167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e06e14be3fb4a12e90cf9f7cd2b26c7109560eb0439f1554508b331a77eae0d`  
		Last Modified: Wed, 07 Feb 2018 03:45:20 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e2a7166c38440886371c82c71ee9f791a87d2381a7372c5ce8260217c1362b`  
		Last Modified: Wed, 07 Feb 2018 03:45:22 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08a180ebd7599bd23a865ff7857e1b2a10f03fa86029d484a54588470bae54f`  
		Last Modified: Wed, 07 Feb 2018 03:45:46 GMT  
		Size: 97.3 MB (97286668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40959d54d2b3913535c2f26349fdcd7b9a9014e2f04c19969824d1cea5917ba2`  
		Last Modified: Wed, 07 Feb 2018 03:45:21 GMT  
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
$ docker pull redmine@sha256:d68b7d838539e85241f8abd23d6bcc8f992e30c41239e5152021e66e7be3bf2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258948295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703be990e659ef7c8569104ad2fdb8a682d891ef7ae8f967a26ceb5bf8b10f23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:53:24 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:53:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:02:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:03:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:03:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:03:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:03:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:03:08 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:24:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:25:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:25:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:25:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:25:57 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:26:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:29:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:29:58 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:30:00 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:30:01 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:30:02 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:30:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:40:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:40:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:40:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:40:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:40:58 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:41:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dc1fec2f840453035fd34b627fe37118c72f8a2a21c82d540109d6be7bd24d`  
		Last Modified: Wed, 07 Feb 2018 03:03:40 GMT  
		Size: 21.7 MB (21714307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fcfbca729fc584ef23463860f2edeb0ca9b70d5ca059277e117bef40c9b98f`  
		Last Modified: Wed, 07 Feb 2018 03:03:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895eec8a69b2c5813faef894489dec191d690741159397ad9250a3310c27a4d5`  
		Last Modified: Wed, 07 Feb 2018 04:05:25 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58d4bf24f74d32efdd0088beb13b29126989216c90087e6b56c01af02c045f5`  
		Last Modified: Wed, 07 Feb 2018 04:05:28 GMT  
		Size: 14.7 MB (14720269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77f3ad23ae39d267f897410b9629de295c8bb309c7c38cbcb0d1edb39ffa5e1`  
		Last Modified: Wed, 07 Feb 2018 04:05:22 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2724cb5022a764939503e3b767774985a1b9cd9123a093d311bc7cd41707216e`  
		Last Modified: Wed, 07 Feb 2018 04:05:22 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567430fe426ad60201ddab11f643ff87c392eead8fe430084004085808d9f3d`  
		Last Modified: Wed, 07 Feb 2018 04:05:34 GMT  
		Size: 58.1 MB (58133361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4023ed267682c387d8443e609df778bac7d0ad153addc153a7d9911c0b66f53d`  
		Last Modified: Wed, 07 Feb 2018 04:05:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902ca49580ae23346b63fe532fa5397c99fc3ba4472a2154ae7fb7c30bd0d61`  
		Last Modified: Wed, 07 Feb 2018 04:05:21 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20314c24b18048d865adf93e1c94a1d4ed36ec99850e4b0d0f555c20902b1bbc`  
		Last Modified: Wed, 07 Feb 2018 04:05:43 GMT  
		Size: 99.5 MB (99477805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d78e7a41bda31470536b4f06bed3c5e443809d67e0efb12f8871a04ef73872`  
		Last Modified: Wed, 07 Feb 2018 04:05:19 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; s390x

```console
$ docker pull redmine@sha256:e040e42cf28d028bdbe1a292aa367367316ebee3be305e3219753727b4ab37bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263879114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8add0f74e687f731d2d80a98179d4d70f8a505d354d43d9481794ce93c4b0c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:58:10 GMT
ENV RUBY_MAJOR=2.4
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_VERSION=2.4.3
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 09:45:49 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 09:45:49 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 09:49:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 09:49:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 09:49:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 09:49:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 09:49:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 09:49:09 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 10:34:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 10:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:34:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 10:34:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 10:34:18 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 10:34:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 10:34:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:34:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 10:34:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 10:34:58 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 10:34:58 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 10:35:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 10:37:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 10:37:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 10:37:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 10:37:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 10:37:52 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 10:37:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48920cf36e0ba682bf491b280265e3eb26ad1d48a7b0110435b01eb61fced843`  
		Last Modified: Wed, 07 Feb 2018 10:15:38 GMT  
		Size: 21.7 MB (21667348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529559c589d35ec202b85798f7735f9988906c9e753848addcca1ae4f1bbef26`  
		Last Modified: Wed, 07 Feb 2018 10:15:32 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63b620d928b352d26083ee7184f910081781ffc757a40152b3d2b3ae080dfde`  
		Last Modified: Wed, 07 Feb 2018 10:44:06 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb813590ad1ee264ec7d14bfce7d9154ba69c06db81a23703ac3b73c03b9bf13`  
		Last Modified: Wed, 07 Feb 2018 10:44:08 GMT  
		Size: 14.8 MB (14815153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d617cebb7760951ee73528f4e9fc906ae2e612f67f72718c76602f04b53e3d`  
		Last Modified: Wed, 07 Feb 2018 10:44:06 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde8658bf75a01a8cbc65f308306b8c0fe07caf78eb0f79774a4992d2771813`  
		Last Modified: Wed, 07 Feb 2018 10:44:05 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b4d8ff0258ed77b2f214ec5c95f26e680a4d5bd805ffb9d77920c80e8217c0`  
		Last Modified: Wed, 07 Feb 2018 10:44:15 GMT  
		Size: 59.1 MB (59110640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4409b9ead1dd7d48178384f4380c64f9b7522021ab88a3435af39503152de22f`  
		Last Modified: Wed, 07 Feb 2018 10:44:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415a23b9a93c5918eb0ca90943df628adcb73b30a48f45c588d08cbee51af097`  
		Last Modified: Wed, 07 Feb 2018 10:44:04 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76aa630370e5d3ab3b39a65f920fa94094d8dfd9c99e074d2726ef2b0b0d5006`  
		Last Modified: Wed, 07 Feb 2018 10:44:22 GMT  
		Size: 102.6 MB (102562276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c40a40d94f3e415cc208d8e6cc1ff8c7f2312fd5b30a2bedfd3b69fbcfb31b5`  
		Last Modified: Wed, 07 Feb 2018 10:44:03 GMT  
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
$ docker pull redmine@sha256:10b9da2c9dafeaecda703cc69020b270741059b817528e2615e7b037674a687a
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
$ docker pull redmine@sha256:ba2abc1fa25e343a185fa0bb61ee8480f73a89c39282f85c945b7dfe63d3dc21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247083290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52652e8c331913246bed5941c638ebc708175c0fc60050b0e73aa8f14ebfd77`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 02:33:25 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:33:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:38:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:38:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:38:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:38:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:38:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:38:51 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:27:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:28:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:28:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:28:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:28:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:28:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:29:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:29:25 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:29:25 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:29:26 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:29:26 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:29:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:34:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:34:26 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:34:26 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:34:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:34:27 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:34:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e269e3f6d3470aae1ecb4ca401010e7bbf79bdba2eecf4677d2811ef925bc5c`  
		Last Modified: Wed, 07 Feb 2018 03:07:46 GMT  
		Size: 20.9 MB (20899466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a23f6e370f0913dee6aac69f8af7dc2ac4a22987096780ba264cdfbcdbe785`  
		Last Modified: Wed, 07 Feb 2018 03:07:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e461fc0aa7be40cae1b120ef2b28057c61784dc0695973cea780ad831709ce8b`  
		Last Modified: Wed, 07 Feb 2018 03:45:24 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c418088eee83b03574ea3ab4eac2cf626b0a417c0069300a3acdd3757b49f6e`  
		Last Modified: Wed, 07 Feb 2018 03:45:27 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24af8f297c1b85b11af3a9a086321bbc3ec4c7ff2b6dae9d654f77b07289749e`  
		Last Modified: Wed, 07 Feb 2018 03:45:23 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378dfe5af65dbd0f71a7e0ad495ee0643df2e0d8b6058c9f0776a1f6bc697e16`  
		Last Modified: Wed, 07 Feb 2018 03:45:22 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad91453ac3e238314ea341c51e2535ab8e6d006cb156939b3be5b4ee134ebbd`  
		Last Modified: Wed, 07 Feb 2018 03:45:37 GMT  
		Size: 54.3 MB (54345167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e06e14be3fb4a12e90cf9f7cd2b26c7109560eb0439f1554508b331a77eae0d`  
		Last Modified: Wed, 07 Feb 2018 03:45:20 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e2a7166c38440886371c82c71ee9f791a87d2381a7372c5ce8260217c1362b`  
		Last Modified: Wed, 07 Feb 2018 03:45:22 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08a180ebd7599bd23a865ff7857e1b2a10f03fa86029d484a54588470bae54f`  
		Last Modified: Wed, 07 Feb 2018 03:45:46 GMT  
		Size: 97.3 MB (97286668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40959d54d2b3913535c2f26349fdcd7b9a9014e2f04c19969824d1cea5917ba2`  
		Last Modified: Wed, 07 Feb 2018 03:45:21 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:350af9ac1097cc39399bac6f05c6356a19ce1185e0589b2201bbe505fbea85f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251935521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc606ac921e0c967ed7420901b9f712224a69839045e56bee6e07ffa0926efd`
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
# Tue, 26 Dec 2017 22:20:01 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 22:20:01 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 22:51:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 22:51:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 22:51:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 22:51:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 22:51:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 22:51:16 GMT
CMD ["irb"]
# Thu, 25 Jan 2018 00:09:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 25 Jan 2018 00:10:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 00:10:26 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Jan 2018 00:10:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 25 Jan 2018 00:10:31 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 25 Jan 2018 00:10:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 25 Jan 2018 00:12:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 00:12:24 GMT
ENV RAILS_ENV=production
# Thu, 25 Jan 2018 00:12:24 GMT
WORKDIR /usr/src/redmine
# Thu, 25 Jan 2018 00:12:25 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 25 Jan 2018 00:12:26 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 25 Jan 2018 00:12:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 25 Jan 2018 00:22:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 25 Jan 2018 00:22:24 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 25 Jan 2018 00:22:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 25 Jan 2018 00:22:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Jan 2018 00:22:26 GMT
EXPOSE 3000/tcp
# Thu, 25 Jan 2018 00:22:27 GMT
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
	-	`sha256:b326c4e582513c6aaf6d6946afa67076a8dd18a6adde70985ecdee2cee1dc540`  
		Last Modified: Wed, 24 Jan 2018 23:45:46 GMT  
		Size: 21.2 MB (21238057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2891f2e1b20240cd107d569ea91479bf70c24366597e2d1ba2ee5a78c5dbe830`  
		Last Modified: Wed, 24 Jan 2018 23:44:28 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1700b4e066c20833d5c823d4f9fb335b76b6d0ddadc86885fa6ba0280fccd9f4`  
		Last Modified: Thu, 25 Jan 2018 00:47:20 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eefb85dea874502286f7e31cd150ed8c9871280737e6e528e7ecebacf50d9b0`  
		Last Modified: Thu, 25 Jan 2018 00:47:21 GMT  
		Size: 14.5 MB (14462715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46042afb015a16f58a04c298a325b9581b7d57811ffd6c1892eeb647fe223a0`  
		Last Modified: Thu, 25 Jan 2018 00:47:16 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488c66ee424fd7c1fe059f448f7f54c5d75e61bfd9dbee6a68c038d607507071`  
		Last Modified: Thu, 25 Jan 2018 00:47:14 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f601c75074b3292f636f73b6ebf66b5fb946b285502ba45f7fef04819f41036`  
		Last Modified: Thu, 25 Jan 2018 00:49:44 GMT  
		Size: 55.8 MB (55793439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f89c362b289cf5f88e1f50d62b2a1bd34dc33627a077cfdcca05bd166f321a8`  
		Last Modified: Thu, 25 Jan 2018 00:47:12 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011055281d3f06e98ada52c6528242c55233b9a50e7985dc28ec8b6b30b62415`  
		Last Modified: Thu, 25 Jan 2018 00:47:16 GMT  
		Size: 2.5 MB (2454047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32dc5314f774d0f8d42b4df259300ca6e298bcccdef527615920a202040c9f7c`  
		Last Modified: Thu, 25 Jan 2018 00:51:50 GMT  
		Size: 98.2 MB (98224362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9df088cc98e177b70dad8c5b92c25a15fb813308e0694953ea8e44ffba8b0ca`  
		Last Modified: Thu, 25 Jan 2018 00:47:12 GMT  
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
$ docker pull redmine@sha256:d68b7d838539e85241f8abd23d6bcc8f992e30c41239e5152021e66e7be3bf2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258948295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703be990e659ef7c8569104ad2fdb8a682d891ef7ae8f967a26ceb5bf8b10f23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 01:53:24 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 01:53:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:02:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:03:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:03:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:03:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:03:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:03:08 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 03:24:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 03:25:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:25:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 03:25:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 03:25:57 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 03:26:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 03:29:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 03:29:58 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 03:30:00 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 03:30:01 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 03:30:02 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 03:30:09 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 03:40:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 03:40:54 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 03:40:56 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 03:40:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 03:40:58 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 03:41:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dc1fec2f840453035fd34b627fe37118c72f8a2a21c82d540109d6be7bd24d`  
		Last Modified: Wed, 07 Feb 2018 03:03:40 GMT  
		Size: 21.7 MB (21714307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fcfbca729fc584ef23463860f2edeb0ca9b70d5ca059277e117bef40c9b98f`  
		Last Modified: Wed, 07 Feb 2018 03:03:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895eec8a69b2c5813faef894489dec191d690741159397ad9250a3310c27a4d5`  
		Last Modified: Wed, 07 Feb 2018 04:05:25 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58d4bf24f74d32efdd0088beb13b29126989216c90087e6b56c01af02c045f5`  
		Last Modified: Wed, 07 Feb 2018 04:05:28 GMT  
		Size: 14.7 MB (14720269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77f3ad23ae39d267f897410b9629de295c8bb309c7c38cbcb0d1edb39ffa5e1`  
		Last Modified: Wed, 07 Feb 2018 04:05:22 GMT  
		Size: 469.8 KB (469846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2724cb5022a764939503e3b767774985a1b9cd9123a093d311bc7cd41707216e`  
		Last Modified: Wed, 07 Feb 2018 04:05:22 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567430fe426ad60201ddab11f643ff87c392eead8fe430084004085808d9f3d`  
		Last Modified: Wed, 07 Feb 2018 04:05:34 GMT  
		Size: 58.1 MB (58133361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4023ed267682c387d8443e609df778bac7d0ad153addc153a7d9911c0b66f53d`  
		Last Modified: Wed, 07 Feb 2018 04:05:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902ca49580ae23346b63fe532fa5397c99fc3ba4472a2154ae7fb7c30bd0d61`  
		Last Modified: Wed, 07 Feb 2018 04:05:21 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20314c24b18048d865adf93e1c94a1d4ed36ec99850e4b0d0f555c20902b1bbc`  
		Last Modified: Wed, 07 Feb 2018 04:05:43 GMT  
		Size: 99.5 MB (99477805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d78e7a41bda31470536b4f06bed3c5e443809d67e0efb12f8871a04ef73872`  
		Last Modified: Wed, 07 Feb 2018 04:05:19 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:e040e42cf28d028bdbe1a292aa367367316ebee3be305e3219753727b4ab37bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263879114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8add0f74e687f731d2d80a98179d4d70f8a505d354d43d9481794ce93c4b0c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:58:10 GMT
ENV RUBY_MAJOR=2.4
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_VERSION=2.4.3
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 07 Feb 2018 09:45:49 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 09:45:49 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 09:49:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 09:49:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 09:49:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 09:49:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 09:49:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 09:49:09 GMT
CMD ["irb"]
# Wed, 07 Feb 2018 10:34:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 07 Feb 2018 10:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:34:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 07 Feb 2018 10:34:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 07 Feb 2018 10:34:18 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 07 Feb 2018 10:34:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 07 Feb 2018 10:34:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Feb 2018 10:34:57 GMT
ENV RAILS_ENV=production
# Wed, 07 Feb 2018 10:34:57 GMT
WORKDIR /usr/src/redmine
# Wed, 07 Feb 2018 10:34:58 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 07 Feb 2018 10:34:58 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 07 Feb 2018 10:35:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 07 Feb 2018 10:37:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 07 Feb 2018 10:37:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 07 Feb 2018 10:37:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 07 Feb 2018 10:37:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Feb 2018 10:37:52 GMT
EXPOSE 3000/tcp
# Wed, 07 Feb 2018 10:37:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48920cf36e0ba682bf491b280265e3eb26ad1d48a7b0110435b01eb61fced843`  
		Last Modified: Wed, 07 Feb 2018 10:15:38 GMT  
		Size: 21.7 MB (21667348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529559c589d35ec202b85798f7735f9988906c9e753848addcca1ae4f1bbef26`  
		Last Modified: Wed, 07 Feb 2018 10:15:32 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63b620d928b352d26083ee7184f910081781ffc757a40152b3d2b3ae080dfde`  
		Last Modified: Wed, 07 Feb 2018 10:44:06 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb813590ad1ee264ec7d14bfce7d9154ba69c06db81a23703ac3b73c03b9bf13`  
		Last Modified: Wed, 07 Feb 2018 10:44:08 GMT  
		Size: 14.8 MB (14815153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d617cebb7760951ee73528f4e9fc906ae2e612f67f72718c76602f04b53e3d`  
		Last Modified: Wed, 07 Feb 2018 10:44:06 GMT  
		Size: 486.8 KB (486821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde8658bf75a01a8cbc65f308306b8c0fe07caf78eb0f79774a4992d2771813`  
		Last Modified: Wed, 07 Feb 2018 10:44:05 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b4d8ff0258ed77b2f214ec5c95f26e680a4d5bd805ffb9d77920c80e8217c0`  
		Last Modified: Wed, 07 Feb 2018 10:44:15 GMT  
		Size: 59.1 MB (59110640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4409b9ead1dd7d48178384f4380c64f9b7522021ab88a3435af39503152de22f`  
		Last Modified: Wed, 07 Feb 2018 10:44:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415a23b9a93c5918eb0ca90943df628adcb73b30a48f45c588d08cbee51af097`  
		Last Modified: Wed, 07 Feb 2018 10:44:04 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76aa630370e5d3ab3b39a65f920fa94094d8dfd9c99e074d2726ef2b0b0d5006`  
		Last Modified: Wed, 07 Feb 2018 10:44:22 GMT  
		Size: 102.6 MB (102562276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c40a40d94f3e415cc208d8e6cc1ff8c7f2312fd5b30a2bedfd3b69fbcfb31b5`  
		Last Modified: Wed, 07 Feb 2018 10:44:03 GMT  
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
