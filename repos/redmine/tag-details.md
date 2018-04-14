<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.9`](#redmine329)
-	[`redmine:3.2.9-passenger`](#redmine329-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
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
$ docker pull redmine@sha256:b9cc405136d72dfa7d7579bff8faeab266bd0acb1b4a890c8bf31c7aff289bc5
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
$ docker pull redmine@sha256:c78f5df0d23cc31742fa8a1c5cf52c02a863920ebd2f68569f1e2916b2e12f80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260368380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887149aec1cdf33df773f969d444d88dc3092e6c1c72f8936aa82bb96dd33d74`
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
# Thu, 29 Mar 2018 17:29:40 GMT
ENV RUBY_VERSION=2.4.4
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 17:29:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 17:32:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 17:32:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 17:32:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 17:32:57 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:23:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:24:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:24:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:24:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:25:12 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:25:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_VERSION=3.4.5
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Wed, 11 Apr 2018 18:12:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:16:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:16:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:16:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:16:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:16:01 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:16:02 GMT
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
	-	`sha256:2f114c079c5c56150a9793db1c7cf076074db15230225378244a6f127edb8a4f`  
		Last Modified: Thu, 29 Mar 2018 19:58:12 GMT  
		Size: 21.3 MB (21286461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d22406c4c57a9fc9e7cdf7ab197a39036e5dafbdf6153657e488f281d7b052`  
		Last Modified: Thu, 29 Mar 2018 19:58:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d980b36e61712037537af839fdc8acb362ad1a9a77336ea0eff886b8b877a621`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff832249133f8854b188ac696e70c686d0543eb6bd4ab05c0334411fdceac5`  
		Last Modified: Thu, 29 Mar 2018 22:31:50 GMT  
		Size: 14.7 MB (14650634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0402e8d92900b46f970320ba976eb70c751c0b52a88da58e307e37f637e520`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42096e160fa0d0ba869c5228c1f2e68b540ef60fc3dfdea8349826bbd27c676`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb7615572f0f0b82fd2825bbaaf1230f55f2dfcee3137feac3cb03b25cfb0b`  
		Last Modified: Thu, 29 Mar 2018 22:32:01 GMT  
		Size: 59.3 MB (59271553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfff2eac932158a73bae3bbf991a5a8e11df46c7d6c72a70d11cec447c648290`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245ec8355ca1d4449cff210950d642f782cbcda37028e55ed2dbc3f04f35e0df`  
		Last Modified: Wed, 11 Apr 2018 18:29:18 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31533a69d3ad5a3408747f34e443edb9f8c6bd41d57e4158cf1d943fdabc2f9e`  
		Last Modified: Wed, 11 Apr 2018 18:29:43 GMT  
		Size: 99.4 MB (99396158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f49cb81a17a222e06eb025df5ed3a923b5605a8156e5cc0b9bc38541c1b85`  
		Last Modified: Wed, 11 Apr 2018 18:29:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:065203d44f933f22dcad2e8314dc4f4d104f63aa0439a993b5bb0b000ab1557d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253677273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04839f165302cd8f910533c27d71d99db464ed94c3859861076bc0f9868e8a64`
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
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:05:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:11:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:11:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:11:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:11:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:11:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:11:37 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:00:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:01:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:01:10 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:01:12 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:01:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:02:14 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:02:15 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:51:44 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 08:51:44 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 08:51:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 08:57:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:57:24 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 08:57:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 08:57:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:57:25 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 08:57:25 GMT
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
	-	`sha256:75f7790ee9300991ccb22ee7b3a21ab78a42fb3d03069de3a293a8b796b3eb71`  
		Last Modified: Mon, 02 Apr 2018 17:42:10 GMT  
		Size: 21.1 MB (21056260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba65f3f58e6449b09074da5753f4fd12c655b3e3c434fa4299cd2a28c969093`  
		Last Modified: Mon, 02 Apr 2018 17:42:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbb0801355fcf21de11b0d3998cf9284af71800b73728d519373f69e2ada8be`  
		Last Modified: Mon, 02 Apr 2018 18:19:15 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e4894a36b0cccae2c3edf7677ff1af9257b0601801c8c3e4ec9ef72a69158`  
		Last Modified: Mon, 02 Apr 2018 18:19:19 GMT  
		Size: 14.3 MB (14347644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18db73123bf197ca6bc5ab2df7f7b8f39429a1fac2cc1d66c57e80ebbb34b9d0`  
		Last Modified: Mon, 02 Apr 2018 18:19:13 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6980fae2e185ce318554b2e4c620f9cc3668520c4e827883cb76dfe36deee0`  
		Last Modified: Mon, 02 Apr 2018 18:19:13 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca18b40dddd42e5642f3c229e21d3671e5b538ad436ff79b3a1b77f558a09c06`  
		Last Modified: Mon, 02 Apr 2018 18:19:32 GMT  
		Size: 56.6 MB (56610820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f51a5a7367725a0b8669dcee1563f0ad46f94c894c5b99a4b56bce67853ac9`  
		Last Modified: Mon, 02 Apr 2018 18:19:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138f744c3c18d058035c0d397eb571637715145d9e746025dc461cce73b21082`  
		Last Modified: Thu, 12 Apr 2018 09:02:51 GMT  
		Size: 2.5 MB (2455983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f52b5d422d129ca363e5fcdfd367e15358ad244bb4190626d666cc59d5745e`  
		Last Modified: Thu, 12 Apr 2018 09:03:22 GMT  
		Size: 98.7 MB (98679803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003f14500ec79e5a08b502bc0b3bb036c6eee6bac8ac2613bcbffdd42301f209`  
		Last Modified: Thu, 12 Apr 2018 09:02:50 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:8d74f7c669f15f68dd4b72c17991732a81c1abdcc4e5e5c2f1dbe3a819616fbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247696591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:582ae6c45375c3c6add551bc3bf0500107b9576b3037df36c88e0dea1198e253`
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
# Mon, 02 Apr 2018 16:58:02 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 16:58:02 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 16:58:03 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 16:58:03 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:03:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:03:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:03:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:03:25 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 17:52:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 17:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:52:40 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 17:52:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 17:52:44 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 17:52:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 17:53:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:53:41 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 17:53:41 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 11:59:28 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 11:59:28 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 11:59:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:04:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:04:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:04:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:05:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:05:00 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:05:00 GMT
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
	-	`sha256:57efc46cb5efbb5f3ab222a236c29cc6035a4565d42e88d5aa215cd8a5063573`  
		Last Modified: Mon, 02 Apr 2018 17:33:00 GMT  
		Size: 20.9 MB (20922327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cddf17c3c85180032cca210dbd0a0fad87206471bdb89404fabb21a83bfbe8`  
		Last Modified: Mon, 02 Apr 2018 17:32:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45e9fa1532e410938c2cc2fb9d1877a8e3fc086a4f2ff3ee0e7477666a64ac3`  
		Last Modified: Mon, 02 Apr 2018 18:09:58 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd254b34b90e256ff548e13131a035c979859f8783fee1622e7276b04feb41da`  
		Last Modified: Mon, 02 Apr 2018 18:10:02 GMT  
		Size: 14.1 MB (14134520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b251f139a15acffcef6333b324957d2baebff82d6d4ab5237d55527c481c0378`  
		Last Modified: Mon, 02 Apr 2018 18:09:57 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157182850bf6e72e8202d4905a2cbd9dc8924b576693cadcf54ba285528c3272`  
		Last Modified: Mon, 02 Apr 2018 18:09:56 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3be2404df7b281b0b36741d8a86d48a4c7d732a1bff7aca0efc65f8cd0e36d8`  
		Last Modified: Mon, 02 Apr 2018 18:10:12 GMT  
		Size: 54.3 MB (54345128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c208050705a17f27fe5b08516b6d045c1d73712a4579405b5e929b8922ce96ca`  
		Last Modified: Mon, 02 Apr 2018 18:09:56 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1895a922873e28401adf1b35e24e137ed4179b544537829bb9d07fc19b79086d`  
		Last Modified: Thu, 12 Apr 2018 12:09:56 GMT  
		Size: 2.5 MB (2455984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d531d111a65c46536edd6ccf46cc25d4b83b4656499050b198b8435a4d223bde`  
		Last Modified: Thu, 12 Apr 2018 12:10:19 GMT  
		Size: 97.9 MB (97863741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9cd43bfe8ffc4a95ed5315eab1328a5ac88bd66979e5bca9cbd8398aa7e9f7`  
		Last Modified: Thu, 12 Apr 2018 12:09:55 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:35e2bf0a39d51a08911b704c073d2247a6c707a5bab5b7854ebb97669f8e3aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252634339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b0385b3a0dc1d12ae61b8ba51fdb072c7b1811a14a8e6712095857396f7f18`
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
# Thu, 15 Mar 2018 02:14:58 GMT
ENV RUBY_MAJOR=2.4
# Mon, 02 Apr 2018 18:12:28 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 18:12:29 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 18:12:30 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 18:12:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 18:21:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 18:21:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 18:21:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 18:21:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 18:21:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 18:21:55 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 20:15:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 20:16:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 20:16:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 20:16:09 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 20:16:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 20:17:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:17:56 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 20:17:56 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 09:08:21 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 09:08:21 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 09:08:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 09:21:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 09:21:51 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 09:21:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 09:21:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 09:22:00 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 09:22:03 GMT
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
	-	`sha256:6a57c0a409c97dd1ae25838ea7b6ec9aed418c6adaceebd65e4394177eda6c64`  
		Last Modified: Mon, 02 Apr 2018 19:45:54 GMT  
		Size: 21.2 MB (21248093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08a95b8cf2c2f836fe2b3b0a7925fd640e3d2ee809421f9041505ef19172647`  
		Last Modified: Mon, 02 Apr 2018 19:45:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52467ca06c09c2f18d4a2df138ca9c35fff2bfc2d5c0e81261c58e1ac9bef526`  
		Last Modified: Mon, 02 Apr 2018 20:53:54 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd29c81b35b11642d05db118de989cba476b47eb72db1d0c7bdbf41248d52c9`  
		Last Modified: Mon, 02 Apr 2018 20:53:57 GMT  
		Size: 14.5 MB (14462784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc0b0b36b1c5703c0d28652065df89c0c5b72f2bc458e95fdf67409c6257c38`  
		Last Modified: Mon, 02 Apr 2018 20:53:53 GMT  
		Size: 468.7 KB (468706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4aa9f237b841871f32f384a05db0d7c7ca330d2ad3419acaa2f3c977a30912`  
		Last Modified: Mon, 02 Apr 2018 20:53:51 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3558d1f4d6aecc7fa2a4a31b76b6554dd3f87975553d2b5e5d65372ea770590`  
		Last Modified: Mon, 02 Apr 2018 20:54:10 GMT  
		Size: 55.8 MB (55794284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8801e07321a85d3ba1123ef242da8ab9ca66d178c5706b8202e1ff2959df1766`  
		Last Modified: Mon, 02 Apr 2018 20:53:50 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3e03f70f3885968c0bd94ed09f21090678940ebb047a00f265b07f065ada33`  
		Last Modified: Thu, 12 Apr 2018 09:38:51 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fabaf89d43ecd509bce93c453d8867283b7365066a658ab53f4e38da68cd2ec`  
		Last Modified: Thu, 12 Apr 2018 09:39:21 GMT  
		Size: 98.9 MB (98903478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa850deb7622fb9cd5d2c34cc1ebe7b620a2681b37f5718332a474826e5bdc69`  
		Last Modified: Thu, 12 Apr 2018 09:38:50 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:8eaf3d8bc8103b91febb5840e44ad88177749825f255916e02dfc6cfd382ea76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263450796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e2b02de2a5b44fed880c4c5cbb42d2fe28da2ed97eed1c0df303faed78ee2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:04:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:04:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 14 Apr 2018 02:04:53 GMT
ENV RUBY_MAJOR=2.4
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 14 Apr 2018 02:04:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 14 Apr 2018 02:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 14 Apr 2018 02:08:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 02:08:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 02:08:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 02:08:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 02:08:45 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:28:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 14 Apr 2018 05:29:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:29:14 GMT
ENV GOSU_VERSION=1.10
# Sat, 14 Apr 2018 05:29:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 14 Apr 2018 05:29:18 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 14 Apr 2018 05:29:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 14 Apr 2018 05:30:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:30:15 GMT
ENV RAILS_ENV=production
# Sat, 14 Apr 2018 05:30:15 GMT
WORKDIR /usr/src/redmine
# Sat, 14 Apr 2018 05:30:15 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 14 Apr 2018 05:30:15 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 14 Apr 2018 05:30:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 14 Apr 2018 05:33:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 14 Apr 2018 05:33:48 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 14 Apr 2018 05:33:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 14 Apr 2018 05:33:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 14 Apr 2018 05:33:49 GMT
EXPOSE 3000/tcp
# Sat, 14 Apr 2018 05:33:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca444cc3943bdd84ca84b9afb84bfda39b93fed03a55cb07ad3bb2179d2587ee`  
		Last Modified: Sat, 14 Apr 2018 02:41:00 GMT  
		Size: 14.6 MB (14649884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1869405bc615943f828b387e40f9c5de545349cddaabc42ac71ed9f323f893bb`  
		Last Modified: Sat, 14 Apr 2018 02:40:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8625490e27cfa172ed2429c911fcaf8442f967a157211dfb771e85b14ff3916a`  
		Last Modified: Sat, 14 Apr 2018 02:41:03 GMT  
		Size: 20.3 MB (20284075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64803bff468087aca06e131527a5447efd1b96f0c758d49fc0df698b311a6c79`  
		Last Modified: Sat, 14 Apr 2018 02:40:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d210e8895e4be3983b548c8c856e6c1de44a02e728705b12acafa3c46c904c4d`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8988f264e051a9f61b8aacf6e32ec2422c339abb3802d525b7265b9d318009`  
		Last Modified: Sat, 14 Apr 2018 05:42:29 GMT  
		Size: 14.8 MB (14817641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6bbc080a720cea62128064f396569625a7e83524ad8682397d303fde1bd4b9`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 480.6 KB (480575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcec09284827ddc3b119c96eb98fc28918e93c39d4087d1d8c73046fa9aac4`  
		Last Modified: Sat, 14 Apr 2018 05:42:24 GMT  
		Size: 8.6 KB (8568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c9e823500605eccc5be71f78d4c0a10e255f56030af6206382d3af3969bedd`  
		Last Modified: Sat, 14 Apr 2018 05:42:46 GMT  
		Size: 60.1 MB (60146745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df68907aaabfba403825682daf6b840043048ad8a46a242397925b4babce9f09`  
		Last Modified: Sat, 14 Apr 2018 05:42:24 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc108b9da01fbd779175fee54a97030cb8d6124b06bd66bf485cc3a8943248e5`  
		Last Modified: Sat, 14 Apr 2018 05:42:30 GMT  
		Size: 2.5 MB (2455509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b200d252391aa0b516ba747dc6c744c71f113331f904fefbd4414c1b79ff277`  
		Last Modified: Sat, 14 Apr 2018 05:42:52 GMT  
		Size: 97.8 MB (97815780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f767ae7964ec1b881aadacf75ef315f3b344dec456550a141084101daddf935`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:16a8f47378a20da3f173f12d7a808174dfd6f2e1fe04b2acd6b7ea046b72e775
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259576325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0d2bb2f251e8056b0432df0f9412217c069f4312fb05549d93e390d24f81fb`
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
# Mon, 02 Apr 2018 17:59:10 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:59:11 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:59:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:59:14 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 18:08:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 18:08:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 18:08:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 18:08:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 18:08:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 18:08:44 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 19:35:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 19:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:36:44 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 19:36:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 19:36:52 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 19:36:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 19:40:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:40:51 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 19:40:53 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:34:14 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 08:34:14 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 08:34:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 08:42:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:42:48 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 08:42:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 08:42:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:42:51 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 08:42:52 GMT
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
	-	`sha256:9ce1350e989fc2f796f8918ebc52465666f86d9d4687f0ee31cd7fd6f12a7ec0`  
		Last Modified: Mon, 02 Apr 2018 19:12:55 GMT  
		Size: 21.7 MB (21741464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e5cfb051829a21112a4688142c876fcc6094a374f6e8e936f5e16c66f8d0f2`  
		Last Modified: Mon, 02 Apr 2018 19:12:51 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1453dde26840c440a4570882f4b8d9cf67da3ff5f89e9ebac34290a460c817`  
		Last Modified: Mon, 02 Apr 2018 20:26:14 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91d22f8da73d6eb0d0610f0936dfd579731b09a664ac994e3e2783ec9bbc6c5`  
		Last Modified: Mon, 02 Apr 2018 20:26:15 GMT  
		Size: 14.7 MB (14720330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147e661b93c84e721620331f084fc3d172a51c445b7297880ebcebb0b3be5307`  
		Last Modified: Mon, 02 Apr 2018 20:26:11 GMT  
		Size: 469.9 KB (469850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac1fee42e9a058793822d8a3e90b82c2b670ef1247d227af18aae0a444d585a`  
		Last Modified: Mon, 02 Apr 2018 20:26:11 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d94cee04bced314d07d1dce1a4f46bc642bbca132df1d38ff3c29265f77488a`  
		Last Modified: Mon, 02 Apr 2018 20:26:18 GMT  
		Size: 58.1 MB (58132661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138535c3140b8742488d6175ddb05945805c478397c1ad706e56b6cfd07a69c`  
		Last Modified: Mon, 02 Apr 2018 20:26:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f0143f9572d6c3dbc5adce45a3960803fef2da3a86a1e6dbfb9b1122b78b8b`  
		Last Modified: Thu, 12 Apr 2018 08:50:44 GMT  
		Size: 2.5 MB (2455985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11cd9f85f5f05c8e28b99246619a2ecfe91b4d57d63581b09ced301a22941cd`  
		Last Modified: Thu, 12 Apr 2018 08:51:06 GMT  
		Size: 100.1 MB (100068411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177de89817615004a127114d52312c4e0ae394e2604ceeba3b2c08c13ca6f568`  
		Last Modified: Thu, 12 Apr 2018 08:50:42 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:ebfa11ae42fc656e076e2b8c335ec89549f91962241228a0a76a5f2107816b98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264526259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824baa78510a820c4091ba8389340d31b247b7ffd71fdc438052665a3353d001`
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
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:27:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:31:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:31:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:31:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:31:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:31:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:31:29 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:20:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:20:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:20:43 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:20:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:20:46 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:20:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:21:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:21:27 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:21:27 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 12:08:33 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 12:08:33 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 12:08:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:11:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:11:28 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:11:29 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:11:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:11:29 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:11:29 GMT
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
	-	`sha256:38f3338c8bb939b5fd61e1edd959256388a26bfcc3bfa8742d5de4f933e32b92`  
		Last Modified: Mon, 02 Apr 2018 18:00:52 GMT  
		Size: 21.7 MB (21689661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe90b7414be9bea2bc8bccc46a195f279ff5fa26f2fe4d87f52b55ce7c2807`  
		Last Modified: Mon, 02 Apr 2018 18:00:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3626a6b480f03279ab0fbfa1cc1154fdabff130c14d68bb1937bd4179e72ed86`  
		Last Modified: Mon, 02 Apr 2018 18:31:51 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04036ced3d3338ecec149375d94d9228bf0f344523f9cb47285cc5e9920705c6`  
		Last Modified: Mon, 02 Apr 2018 18:31:53 GMT  
		Size: 14.8 MB (14815240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878803a486304e0f9a49205647067608af04c1537ac8253444819f805e4aac24`  
		Last Modified: Mon, 02 Apr 2018 18:31:49 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ec29820c6edaa14f56347b6cf10a6eaaf0dbac5c1dd3dd27d46b8fcf4f9cd`  
		Last Modified: Mon, 02 Apr 2018 18:31:49 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dbba4cdd6101248ee23346e6d76bcaf68a68612d4b198c411b4c71fb5dd07c`  
		Last Modified: Mon, 02 Apr 2018 18:32:01 GMT  
		Size: 59.1 MB (59109864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127d27dd743727185cb54c4cb3ddd5b9f0a2bb3dc54af4ff865746f269e18c1e`  
		Last Modified: Mon, 02 Apr 2018 18:31:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1941bdfb901d67113482a8c1c4c57e545d22778b844ddc4cfda085a749d282`  
		Last Modified: Thu, 12 Apr 2018 12:14:39 GMT  
		Size: 2.5 MB (2455524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ce07121868a9ac77dec13d27a121d0374ccbc04942f30f92a0decc1bbf21fd`  
		Last Modified: Thu, 12 Apr 2018 12:14:54 GMT  
		Size: 103.2 MB (103180518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb16a10c965be8effdafa90dabb2cf7aa1bd67169dbc12f78fd45173d918eb47`  
		Last Modified: Thu, 12 Apr 2018 12:14:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:9f05e24ee00cf64aacca403d1ef4ffd9ea9e302695738d8a74ce0b03d773d103
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
$ docker pull redmine@sha256:f333cc8aa66b12ffe1fbd423d57c364fbe19bf569c88763527a8cecd2786200f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250869754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27142537a01cdd45aa82d23390bb117a25b887f9ef82aa0ec52b958fbc22ca6`
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
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_VERSION=2.2.10
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 18:48:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 18:51:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 18:51:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 18:51:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 18:51:26 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:41:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:41:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:41:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:41:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:41:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:41:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:42:19 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:42:19 GMT
WORKDIR /usr/src/redmine
# Thu, 29 Mar 2018 22:01:25 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 29 Mar 2018 22:01:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 29 Mar 2018 22:01:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 22:03:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 22:03:55 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 22:03:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 22:03:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 22:03:56 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 22:03:56 GMT
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
	-	`sha256:578ee768451cf3f9e7efc3a7c59d7cd6a0ae15acb993a437d091b3e0e6084e30`  
		Last Modified: Thu, 29 Mar 2018 21:01:24 GMT  
		Size: 31.9 MB (31892062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234f3ceb15646e4f6410441babc36899b925fb7286c6113d2e64491df39f440`  
		Last Modified: Thu, 29 Mar 2018 21:01:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4b3dc7eeff772e8eb30707685d0972220342f769f0eaa812a26cd30b472d8a`  
		Last Modified: Thu, 29 Mar 2018 23:07:01 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0681e8f540d612c7edb7d4e21b132068c1b5d738b03f6082151abc807f2faffa`  
		Last Modified: Thu, 29 Mar 2018 23:07:04 GMT  
		Size: 14.7 MB (14650519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68bdfc7caa768c32b344daec9ebf389c39669b2a77d393ac50de497b2b905d0`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9733ab947ec60f22dce16dd1882d4795850a6612fe8be4e85027b9d919527d`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb00870dc6028cc8631f196864be23507114111526c4665348cdece7e86516ca`  
		Last Modified: Thu, 29 Mar 2018 23:07:15 GMT  
		Size: 59.3 MB (59272052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764ec51c5afd64e88110d41378006a02d57198c18dfad80fd573ccd71d061db`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f89c92873ab3ca5ea676569c423ef6f6f7aadab8b7877f58f852ff89ad59e3`  
		Last Modified: Thu, 29 Mar 2018 23:20:41 GMT  
		Size: 2.3 MB (2347510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c526194479128aaa0a49d3ebc272a71b6ef340f6d6a587e8a76ecdf621380d`  
		Last Modified: Thu, 29 Mar 2018 23:20:57 GMT  
		Size: 79.4 MB (79399551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e53c3945409b6528f0a5db179a274df7653c9e5576ff749565e6335a00696e`  
		Last Modified: Thu, 29 Mar 2018 23:20:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:fabbcead83c7f99b3b6c38cbaab1271cea0b90e8f75d0377cd35d0ec5d7471eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.3 MB (243274053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45759f6f3dcf07171cd4459c8775056d2f0564a6d192c2ec7b87cf330b0f7f69`
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
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:34:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:38:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:38:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:38:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:38:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:38:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:38:45 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:07:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:08:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:08:25 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:08:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:08:27 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:08:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:09:26 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:09:26 GMT
WORKDIR /usr/src/redmine
# Mon, 02 Apr 2018 18:14:16 GMT
ENV REDMINE_VERSION=3.2.9
# Mon, 02 Apr 2018 18:14:16 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Mon, 02 Apr 2018 18:14:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:18:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:18:53 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:18:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:18:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:18:53 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:18:54 GMT
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
	-	`sha256:018fbfa073a885445ca862f3a666b7085ce54ed5165686698e2a42e87fdd625a`  
		Last Modified: Mon, 02 Apr 2018 17:44:49 GMT  
		Size: 30.8 MB (30812845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbc22d5eae9b0b2ae2f87805625059fa8739417be5b2b26daf3098178612045`  
		Last Modified: Mon, 02 Apr 2018 17:44:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1bf34289850d8d36c6694cee6a32f5bdc4bf6d8f2d458d2c48a28afce7ec64`  
		Last Modified: Mon, 02 Apr 2018 18:20:02 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca441e60036127f70d0f7774d950619c3c0c0487421695e6fe017f57c5f1a31a`  
		Last Modified: Mon, 02 Apr 2018 18:20:05 GMT  
		Size: 14.3 MB (14347651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc658acb7a403a2b37eaed99e086e76e57fd9549295bbf39cac4aef40d7eca3`  
		Last Modified: Mon, 02 Apr 2018 18:20:01 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802843659d1ae799dfd0368f60b333e64d3c09b0faa419bad6d480fbedc03071`  
		Last Modified: Mon, 02 Apr 2018 18:19:59 GMT  
		Size: 7.8 KB (7847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b858d062ecbc1b7e36e964a790b88b8f91107b8ee87c0c0b7c4f92e5bf8951`  
		Last Modified: Mon, 02 Apr 2018 18:20:20 GMT  
		Size: 56.6 MB (56610987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd4520a345a1d4fb455f00b67feb53a2b3b24688118a09c3f81ad27a2dd71f4`  
		Last Modified: Mon, 02 Apr 2018 18:20:04 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d202ab807623ad1c6e1aa8887e1c9700ae4085973308a137c616f7de0a8ff4a3`  
		Last Modified: Mon, 02 Apr 2018 18:20:31 GMT  
		Size: 2.3 MB (2347825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1eb50db89e3b244fcbed109040223a796e3ed0a26a4309e7a7260e492ff3680`  
		Last Modified: Mon, 02 Apr 2018 18:20:48 GMT  
		Size: 78.6 MB (78627983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a233458de2ac2e333f4d66e435c8b479790c940dcca3bd62b0699214071c9ad`  
		Last Modified: Mon, 02 Apr 2018 18:20:30 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:786f82da7e2d5fa8f38d6e47ad2818910bcd2c3d282ae02af639a4d390bacd84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237475320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81780bc08c05b0b8e3fe09e041b1e68b25f7272fd70888f075c48ac9eb20f328`
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
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:24:27 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:28:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:28:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:28:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:28:29 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 17:59:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 17:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:59:35 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 17:59:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 17:59:37 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 17:59:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:00:38 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:00:38 GMT
WORKDIR /usr/src/redmine
# Mon, 02 Apr 2018 18:05:14 GMT
ENV REDMINE_VERSION=3.2.9
# Mon, 02 Apr 2018 18:05:14 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Mon, 02 Apr 2018 18:05:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:09:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:09:32 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:09:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:09:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:09:34 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:09:34 GMT
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
	-	`sha256:4a02e93d1d117e9bc7ded1c0d03e71fc257efc2ee1ad844959807c983bd03be3`  
		Last Modified: Mon, 02 Apr 2018 17:36:21 GMT  
		Size: 30.6 MB (30588990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8bc19f5a7909442a3485bc49b744011b680f99a62522307e8b671465a1e66b`  
		Last Modified: Mon, 02 Apr 2018 17:36:09 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456389eabba24dcef41133706030349063b242d6a4ab014d2cac5c7d36a71db`  
		Last Modified: Mon, 02 Apr 2018 18:10:44 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4d5bbf6106937e6db754e25af211275b89de73d00c9b7548460f5e761a5820`  
		Last Modified: Mon, 02 Apr 2018 18:10:47 GMT  
		Size: 14.1 MB (14134520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a917fcc89d852428bc24c74543fc9d3d91b8f5567583846f7bbafe5cb796b76`  
		Last Modified: Mon, 02 Apr 2018 18:10:43 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3caf72ab38d2e79fc8add122fde51522e4aefb1572db35ae78f74f5971f857a`  
		Last Modified: Mon, 02 Apr 2018 18:10:42 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e376797feafbab83940e45f139d46ca2dd4ac340cd3970ddaae74f25abd5079`  
		Last Modified: Mon, 02 Apr 2018 18:10:59 GMT  
		Size: 54.3 MB (54345361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b0264355b0cb7c458f2d808e6dca5dbfdac149062c9a6f6036fdb6606ec32`  
		Last Modified: Mon, 02 Apr 2018 18:10:41 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff7a74d9e18d01736e6a004dfe4173d5b243d77ae4a8ad7e119d64e3ff2ddb1`  
		Last Modified: Mon, 02 Apr 2018 18:11:16 GMT  
		Size: 2.3 MB (2347828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73af465dae318a296fa0db8a51431cd5fe45f2a3c76f82cb1d8b41d20603a6d3`  
		Last Modified: Mon, 02 Apr 2018 18:11:32 GMT  
		Size: 78.1 MB (78083733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8cb90f8d45296cef205c9db084de4ba036ec36b2f7b201bf6f38dd0bacf283a`  
		Last Modified: Mon, 02 Apr 2018 18:11:15 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:1965f59ffae08c28ec56680ff94f88e6410236e4710e41bb638a81eb1298f71d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.1 MB (243051532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab23eafaf6f550242b49b302e255625e18d947ce31884ba40697ea16e5db908a`
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
# Mon, 02 Apr 2018 19:16:08 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 19:16:09 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 19:16:09 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 19:16:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 19:23:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 19:23:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 19:23:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 19:23:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 19:23:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 19:23:48 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 20:28:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 20:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:29:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 20:29:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 20:29:29 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 20:29:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 20:31:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:31:22 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 20:31:23 GMT
WORKDIR /usr/src/redmine
# Mon, 02 Apr 2018 20:43:10 GMT
ENV REDMINE_VERSION=3.2.9
# Mon, 02 Apr 2018 20:43:10 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Mon, 02 Apr 2018 20:43:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 20:53:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 20:53:10 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 20:53:10 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 20:53:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 20:53:12 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 20:53:13 GMT
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
	-	`sha256:f885db840e696fa9b0b01fc9b556af98771396eb71813521fc1b86ba424ee08b`  
		Last Modified: Mon, 02 Apr 2018 19:57:59 GMT  
		Size: 32.0 MB (32002026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a61c9ba487a07d74cd198e8a0d7ef4da5cde340d20c4f1d6ebe0972c0d33ab`  
		Last Modified: Mon, 02 Apr 2018 19:57:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd34382c812e79e09e4eda1c719fc25d6f0768d74418a4c5687c7176dd27ce2a`  
		Last Modified: Mon, 02 Apr 2018 20:55:55 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de70a5472f6eb0ea1419fc28c064331686e2d8e839bb4c07a215361223bf4d1`  
		Last Modified: Mon, 02 Apr 2018 20:55:59 GMT  
		Size: 14.5 MB (14462844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d2bdd440bddcfdc47959553bc7a536d345a908413752c86fdda264969621b8`  
		Last Modified: Mon, 02 Apr 2018 20:55:53 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46418ec45a559d66f879ecf02c0921c31d66c94955b02327a5f3e643c7bbc3a`  
		Last Modified: Mon, 02 Apr 2018 20:55:53 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7786c9a693eb4ec4d3bbb3c36e9ed986657d644e56ec003a96291eec0071035`  
		Last Modified: Mon, 02 Apr 2018 20:56:11 GMT  
		Size: 55.8 MB (55794616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c6f6fe8710a1982792b1dce2df88e3de2023745290629bc3b2a1cd98a1b929`  
		Last Modified: Mon, 02 Apr 2018 20:55:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de3a85847bd638052c33868cf0b9dd7bdc03263f0779d741b1f2c62da0d356d`  
		Last Modified: Mon, 02 Apr 2018 20:57:02 GMT  
		Size: 2.3 MB (2347504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265492b8be09666ef9e4229bb8c6d189ee5508d6830d7e8759be1cc472eddfc8`  
		Last Modified: Mon, 02 Apr 2018 20:57:23 GMT  
		Size: 78.7 MB (78674376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06298b72a83be33199d8db412519534cdeeecc9e15cf305761fb5a8bf6cf5b7`  
		Last Modified: Mon, 02 Apr 2018 20:57:00 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:317b4ecda90814a2dfa822147251b7c8cbd27610641e6585dd62731d51db7fbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253386571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c47aeb7ce51dfb44cd0690310c50f5b1dca1a6d86f9c5151197ec2eda041de1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:04:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:04:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_MAJOR=2.2
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 14 Apr 2018 02:32:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 14 Apr 2018 02:36:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 14 Apr 2018 02:36:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 02:36:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 02:36:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 02:36:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 02:36:22 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:34:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 14 Apr 2018 05:34:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:34:34 GMT
ENV GOSU_VERSION=1.10
# Sat, 14 Apr 2018 05:34:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 14 Apr 2018 05:34:38 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 14 Apr 2018 05:34:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 14 Apr 2018 05:35:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:35:37 GMT
ENV RAILS_ENV=production
# Sat, 14 Apr 2018 05:35:37 GMT
WORKDIR /usr/src/redmine
# Sat, 14 Apr 2018 05:38:55 GMT
ENV REDMINE_VERSION=3.2.9
# Sat, 14 Apr 2018 05:38:55 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sat, 14 Apr 2018 05:38:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 14 Apr 2018 05:42:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 14 Apr 2018 05:42:01 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 14 Apr 2018 05:42:02 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 14 Apr 2018 05:42:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 14 Apr 2018 05:42:02 GMT
EXPOSE 3000/tcp
# Sat, 14 Apr 2018 05:42:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca444cc3943bdd84ca84b9afb84bfda39b93fed03a55cb07ad3bb2179d2587ee`  
		Last Modified: Sat, 14 Apr 2018 02:41:00 GMT  
		Size: 14.6 MB (14649884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1869405bc615943f828b387e40f9c5de545349cddaabc42ac71ed9f323f893bb`  
		Last Modified: Sat, 14 Apr 2018 02:40:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fff2950ee0b00f6825ffa70729c3f04991d1bf930c9e78be70963a4ee596c`  
		Last Modified: Sat, 14 Apr 2018 02:44:29 GMT  
		Size: 29.4 MB (29359781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e553baa6c610fa7127faeb3ad6cf3e0138f9f226a9ea225aafa1f0bc9393ec37`  
		Last Modified: Sat, 14 Apr 2018 02:44:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928709a06266f99dbc0fa78622a18d2916bd6cf9349bef95f4da2da32917270a`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7c1f5909f387e986984d3aab488621f61718f8e9122260a56a339c05ccb332`  
		Last Modified: Sat, 14 Apr 2018 05:43:16 GMT  
		Size: 14.8 MB (14817674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56803f18fbf98ef3b4b8cf28ea1ce1f845d420046614ec334b3f2d116ae9878b`  
		Last Modified: Sat, 14 Apr 2018 05:43:12 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9936b9924c0460c441d697be0e528df9adf11cc7dd43c946a8fb4f844ce8d234`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a7829c8c06c5076437188a6f56c0647243ad8e9507e9fa45be172c32fcc3f0`  
		Last Modified: Sat, 14 Apr 2018 05:43:29 GMT  
		Size: 60.1 MB (60146928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9933a17ab7f3365e2e5b122e04f37cae4b4506ed1d77091389769a5311cc9cd8`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46c04e80a22829df5fc51bfc27bdba811efc0de03fdbe9d05009baa2bd7e974`  
		Last Modified: Sat, 14 Apr 2018 05:43:41 GMT  
		Size: 2.3 MB (2347499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6646af4d5accaaf1460fc3754e0f608833b34277719e2f4c04ff2ff4fccfe90`  
		Last Modified: Sat, 14 Apr 2018 05:43:52 GMT  
		Size: 78.8 MB (78783655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e8c5df3778cd197d7d46b3c4f250cf85441e95ccf46894b76d161ac7632bb7`  
		Last Modified: Sat, 14 Apr 2018 05:43:39 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:20a1836f3a8a679853ae43e88011bb4e277e92f58a180d396925bcdf992ee2ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250108241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b51f1ec3d8d79c46ea320fc71151b214663f72ea2c3e2ac028b094a34d31d03`
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
# Mon, 02 Apr 2018 18:53:39 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 18:53:41 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 18:53:43 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 18:53:44 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 19:02:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 19:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 19:02:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 19:02:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 19:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 19:02:56 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 19:54:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 19:55:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:55:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 19:55:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 19:55:29 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 19:55:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 19:59:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:59:06 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 19:59:08 GMT
WORKDIR /usr/src/redmine
# Mon, 02 Apr 2018 20:13:52 GMT
ENV REDMINE_VERSION=3.2.9
# Mon, 02 Apr 2018 20:13:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Mon, 02 Apr 2018 20:14:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 20:25:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 20:25:39 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 20:25:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 20:25:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 20:25:44 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 20:25:47 GMT
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
	-	`sha256:6e544887ec4077ed6486cf73fc40afda0da4983b305eedff08998229abdd7bb0`  
		Last Modified: Mon, 02 Apr 2018 19:19:15 GMT  
		Size: 32.9 MB (32883116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5a9a3f7c894975120d25eacd34bdeb0c04363231c42a94ccdbfe5730a263a`  
		Last Modified: Mon, 02 Apr 2018 19:19:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83801aa50e4f7199046f0da7ca3881e538301a1220770d1d77e8dff278ceb8b8`  
		Last Modified: Mon, 02 Apr 2018 20:27:13 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14595577fa1f07e0fa6f78494ea745c33eae11286cee152fda538a0f462d6a0f`  
		Last Modified: Mon, 02 Apr 2018 20:27:15 GMT  
		Size: 14.7 MB (14720361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a4f4809212a2c32c7f1e0903c1650f57a3680976893ae578fda2b10ec76c42`  
		Last Modified: Mon, 02 Apr 2018 20:27:11 GMT  
		Size: 469.9 KB (469853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1eb0054c8e49d6c20bff733c7b0af3dce6c62a3fcd1e9919674f4187d114b2`  
		Last Modified: Mon, 02 Apr 2018 20:27:10 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc72eea2ffd3febfc16c1e5a6c42ab6c67a956cedebf6ae35d1655f397de6d42`  
		Last Modified: Mon, 02 Apr 2018 20:27:27 GMT  
		Size: 58.1 MB (58132769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a5f1bcdc235c5f46b6b548f02cb453a744116f41842f0f6bdca41a3a747c60`  
		Last Modified: Mon, 02 Apr 2018 20:27:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4add93b8457c049ce02b61d642fe3a930fb896cc58c76e7a1145fb92d94b9a4`  
		Last Modified: Mon, 02 Apr 2018 20:27:49 GMT  
		Size: 2.3 MB (2347822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe13183219186eacc78a5d95871baca8539d40ea30b2bf56923970c8eb57de6`  
		Last Modified: Mon, 02 Apr 2018 20:28:04 GMT  
		Size: 79.6 MB (79566695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b14561e953bf8e646fb88194232d60b6649aac6fd152bbd9326c1bf8f8bbb2`  
		Last Modified: Mon, 02 Apr 2018 20:27:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:f7e1358abef8749593382ced735b50f259272d433f6b39b78c0f670cf5859103
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256865306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015e6ad26ccb90473eab586746f257c0617df6e12396ee9ae9c28773f3bdd3ec`
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
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:52:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:55:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:55:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:55:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:55:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:55:19 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:24:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:24:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:24:51 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:24:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:24:58 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:25:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:25:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:25:45 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:25:45 GMT
WORKDIR /usr/src/redmine
# Mon, 02 Apr 2018 18:28:46 GMT
ENV REDMINE_VERSION=3.2.9
# Mon, 02 Apr 2018 18:28:46 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Mon, 02 Apr 2018 18:28:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:31:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:31:18 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:31:19 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:31:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:31:19 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:31:19 GMT
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
	-	`sha256:c558c6d10fd441cc8c018a03609ee282a70f42763c44291481e7114420b92a4a`  
		Last Modified: Mon, 02 Apr 2018 18:04:39 GMT  
		Size: 35.5 MB (35542982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78d3cd2608e6bb56f8cd57923fe1119eadc48e71f0e8cf7fb874ff87d32ef8c`  
		Last Modified: Mon, 02 Apr 2018 18:04:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e56e7d61b5cafc8961e5a58ae4a6a88f2fd2347616e88a4d2713881ab08f14`  
		Last Modified: Mon, 02 Apr 2018 18:32:36 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bec803b8a1b359196ca9007081036408cab184646994f0d85b7b3b4a895158`  
		Last Modified: Mon, 02 Apr 2018 18:32:39 GMT  
		Size: 14.8 MB (14815213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94e26e6b848b15185d168db50bb4f60246b285b8e2f6197e34fb0e38f76aa67`  
		Last Modified: Mon, 02 Apr 2018 18:32:34 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9e0f09e73ae22019c0542ef1c13c3068942eb069f366928071614775c02cbd`  
		Last Modified: Mon, 02 Apr 2018 18:32:34 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b77d9263655d6ec61d9545b4919971aee2224f6c8c8d697a6bb0a3e01446ac7`  
		Last Modified: Mon, 02 Apr 2018 18:32:48 GMT  
		Size: 59.1 MB (59111160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75fc6c0b795877865e7756acbc02b45620c89d0892182d8c1246286727723f14`  
		Last Modified: Mon, 02 Apr 2018 18:32:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d6d774525217e0879077aa742f04c69f96b0ff2c3c9c0d876837033d5bc096`  
		Last Modified: Mon, 02 Apr 2018 18:33:08 GMT  
		Size: 2.3 MB (2347504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8085bccc184d50d32c50a5338017297133758ec683f7488d264500418f0561`  
		Last Modified: Mon, 02 Apr 2018 18:33:18 GMT  
		Size: 81.8 MB (81772993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f2e678eb875f8e2ef51e7cd7f4a47be0ab76a4c46dacef68a8a1cd4bbd6ca3`  
		Last Modified: Mon, 02 Apr 2018 18:33:06 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.9`

```console
$ docker pull redmine@sha256:9f05e24ee00cf64aacca403d1ef4ffd9ea9e302695738d8a74ce0b03d773d103
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
$ docker pull redmine@sha256:f333cc8aa66b12ffe1fbd423d57c364fbe19bf569c88763527a8cecd2786200f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250869754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27142537a01cdd45aa82d23390bb117a25b887f9ef82aa0ec52b958fbc22ca6`
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
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_VERSION=2.2.10
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 18:48:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 18:51:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 18:51:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 18:51:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 18:51:26 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:41:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:41:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:41:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:41:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:41:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:41:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:42:19 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:42:19 GMT
WORKDIR /usr/src/redmine
# Thu, 29 Mar 2018 22:01:25 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 29 Mar 2018 22:01:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 29 Mar 2018 22:01:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 22:03:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 22:03:55 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 22:03:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 22:03:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 22:03:56 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 22:03:56 GMT
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
	-	`sha256:578ee768451cf3f9e7efc3a7c59d7cd6a0ae15acb993a437d091b3e0e6084e30`  
		Last Modified: Thu, 29 Mar 2018 21:01:24 GMT  
		Size: 31.9 MB (31892062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234f3ceb15646e4f6410441babc36899b925fb7286c6113d2e64491df39f440`  
		Last Modified: Thu, 29 Mar 2018 21:01:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4b3dc7eeff772e8eb30707685d0972220342f769f0eaa812a26cd30b472d8a`  
		Last Modified: Thu, 29 Mar 2018 23:07:01 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0681e8f540d612c7edb7d4e21b132068c1b5d738b03f6082151abc807f2faffa`  
		Last Modified: Thu, 29 Mar 2018 23:07:04 GMT  
		Size: 14.7 MB (14650519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68bdfc7caa768c32b344daec9ebf389c39669b2a77d393ac50de497b2b905d0`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9733ab947ec60f22dce16dd1882d4795850a6612fe8be4e85027b9d919527d`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb00870dc6028cc8631f196864be23507114111526c4665348cdece7e86516ca`  
		Last Modified: Thu, 29 Mar 2018 23:07:15 GMT  
		Size: 59.3 MB (59272052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764ec51c5afd64e88110d41378006a02d57198c18dfad80fd573ccd71d061db`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f89c92873ab3ca5ea676569c423ef6f6f7aadab8b7877f58f852ff89ad59e3`  
		Last Modified: Thu, 29 Mar 2018 23:20:41 GMT  
		Size: 2.3 MB (2347510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c526194479128aaa0a49d3ebc272a71b6ef340f6d6a587e8a76ecdf621380d`  
		Last Modified: Thu, 29 Mar 2018 23:20:57 GMT  
		Size: 79.4 MB (79399551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e53c3945409b6528f0a5db179a274df7653c9e5576ff749565e6335a00696e`  
		Last Modified: Thu, 29 Mar 2018 23:20:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm variant v5

```console
$ docker pull redmine@sha256:fabbcead83c7f99b3b6c38cbaab1271cea0b90e8f75d0377cd35d0ec5d7471eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.3 MB (243274053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45759f6f3dcf07171cd4459c8775056d2f0564a6d192c2ec7b87cf330b0f7f69`
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
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:34:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:38:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:38:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:38:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:38:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:38:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:38:45 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:07:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:08:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:08:25 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:08:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:08:27 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:08:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:09:26 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:09:26 GMT
WORKDIR /usr/src/redmine
# Mon, 02 Apr 2018 18:14:16 GMT
ENV REDMINE_VERSION=3.2.9
# Mon, 02 Apr 2018 18:14:16 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Mon, 02 Apr 2018 18:14:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:18:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:18:53 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:18:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:18:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:18:53 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:18:54 GMT
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
	-	`sha256:018fbfa073a885445ca862f3a666b7085ce54ed5165686698e2a42e87fdd625a`  
		Last Modified: Mon, 02 Apr 2018 17:44:49 GMT  
		Size: 30.8 MB (30812845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbc22d5eae9b0b2ae2f87805625059fa8739417be5b2b26daf3098178612045`  
		Last Modified: Mon, 02 Apr 2018 17:44:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1bf34289850d8d36c6694cee6a32f5bdc4bf6d8f2d458d2c48a28afce7ec64`  
		Last Modified: Mon, 02 Apr 2018 18:20:02 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca441e60036127f70d0f7774d950619c3c0c0487421695e6fe017f57c5f1a31a`  
		Last Modified: Mon, 02 Apr 2018 18:20:05 GMT  
		Size: 14.3 MB (14347651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc658acb7a403a2b37eaed99e086e76e57fd9549295bbf39cac4aef40d7eca3`  
		Last Modified: Mon, 02 Apr 2018 18:20:01 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802843659d1ae799dfd0368f60b333e64d3c09b0faa419bad6d480fbedc03071`  
		Last Modified: Mon, 02 Apr 2018 18:19:59 GMT  
		Size: 7.8 KB (7847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b858d062ecbc1b7e36e964a790b88b8f91107b8ee87c0c0b7c4f92e5bf8951`  
		Last Modified: Mon, 02 Apr 2018 18:20:20 GMT  
		Size: 56.6 MB (56610987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd4520a345a1d4fb455f00b67feb53a2b3b24688118a09c3f81ad27a2dd71f4`  
		Last Modified: Mon, 02 Apr 2018 18:20:04 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d202ab807623ad1c6e1aa8887e1c9700ae4085973308a137c616f7de0a8ff4a3`  
		Last Modified: Mon, 02 Apr 2018 18:20:31 GMT  
		Size: 2.3 MB (2347825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1eb50db89e3b244fcbed109040223a796e3ed0a26a4309e7a7260e492ff3680`  
		Last Modified: Mon, 02 Apr 2018 18:20:48 GMT  
		Size: 78.6 MB (78627983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a233458de2ac2e333f4d66e435c8b479790c940dcca3bd62b0699214071c9ad`  
		Last Modified: Mon, 02 Apr 2018 18:20:30 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm variant v7

```console
$ docker pull redmine@sha256:786f82da7e2d5fa8f38d6e47ad2818910bcd2c3d282ae02af639a4d390bacd84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237475320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81780bc08c05b0b8e3fe09e041b1e68b25f7272fd70888f075c48ac9eb20f328`
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
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:24:27 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:28:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:28:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:28:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:28:29 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 17:59:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 17:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:59:35 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 17:59:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 17:59:37 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 17:59:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:00:38 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:00:38 GMT
WORKDIR /usr/src/redmine
# Mon, 02 Apr 2018 18:05:14 GMT
ENV REDMINE_VERSION=3.2.9
# Mon, 02 Apr 2018 18:05:14 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Mon, 02 Apr 2018 18:05:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:09:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:09:32 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:09:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:09:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:09:34 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:09:34 GMT
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
	-	`sha256:4a02e93d1d117e9bc7ded1c0d03e71fc257efc2ee1ad844959807c983bd03be3`  
		Last Modified: Mon, 02 Apr 2018 17:36:21 GMT  
		Size: 30.6 MB (30588990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8bc19f5a7909442a3485bc49b744011b680f99a62522307e8b671465a1e66b`  
		Last Modified: Mon, 02 Apr 2018 17:36:09 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456389eabba24dcef41133706030349063b242d6a4ab014d2cac5c7d36a71db`  
		Last Modified: Mon, 02 Apr 2018 18:10:44 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4d5bbf6106937e6db754e25af211275b89de73d00c9b7548460f5e761a5820`  
		Last Modified: Mon, 02 Apr 2018 18:10:47 GMT  
		Size: 14.1 MB (14134520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a917fcc89d852428bc24c74543fc9d3d91b8f5567583846f7bbafe5cb796b76`  
		Last Modified: Mon, 02 Apr 2018 18:10:43 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3caf72ab38d2e79fc8add122fde51522e4aefb1572db35ae78f74f5971f857a`  
		Last Modified: Mon, 02 Apr 2018 18:10:42 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e376797feafbab83940e45f139d46ca2dd4ac340cd3970ddaae74f25abd5079`  
		Last Modified: Mon, 02 Apr 2018 18:10:59 GMT  
		Size: 54.3 MB (54345361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b0264355b0cb7c458f2d808e6dca5dbfdac149062c9a6f6036fdb6606ec32`  
		Last Modified: Mon, 02 Apr 2018 18:10:41 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff7a74d9e18d01736e6a004dfe4173d5b243d77ae4a8ad7e119d64e3ff2ddb1`  
		Last Modified: Mon, 02 Apr 2018 18:11:16 GMT  
		Size: 2.3 MB (2347828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73af465dae318a296fa0db8a51431cd5fe45f2a3c76f82cb1d8b41d20603a6d3`  
		Last Modified: Mon, 02 Apr 2018 18:11:32 GMT  
		Size: 78.1 MB (78083733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8cb90f8d45296cef205c9db084de4ba036ec36b2f7b201bf6f38dd0bacf283a`  
		Last Modified: Mon, 02 Apr 2018 18:11:15 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:1965f59ffae08c28ec56680ff94f88e6410236e4710e41bb638a81eb1298f71d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.1 MB (243051532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab23eafaf6f550242b49b302e255625e18d947ce31884ba40697ea16e5db908a`
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
# Mon, 02 Apr 2018 19:16:08 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 19:16:09 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 19:16:09 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 19:16:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 19:23:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 19:23:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 19:23:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 19:23:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 19:23:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 19:23:48 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 20:28:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 20:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:29:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 20:29:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 20:29:29 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 20:29:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 20:31:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:31:22 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 20:31:23 GMT
WORKDIR /usr/src/redmine
# Mon, 02 Apr 2018 20:43:10 GMT
ENV REDMINE_VERSION=3.2.9
# Mon, 02 Apr 2018 20:43:10 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Mon, 02 Apr 2018 20:43:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 20:53:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 20:53:10 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 20:53:10 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 20:53:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 20:53:12 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 20:53:13 GMT
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
	-	`sha256:f885db840e696fa9b0b01fc9b556af98771396eb71813521fc1b86ba424ee08b`  
		Last Modified: Mon, 02 Apr 2018 19:57:59 GMT  
		Size: 32.0 MB (32002026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a61c9ba487a07d74cd198e8a0d7ef4da5cde340d20c4f1d6ebe0972c0d33ab`  
		Last Modified: Mon, 02 Apr 2018 19:57:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd34382c812e79e09e4eda1c719fc25d6f0768d74418a4c5687c7176dd27ce2a`  
		Last Modified: Mon, 02 Apr 2018 20:55:55 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de70a5472f6eb0ea1419fc28c064331686e2d8e839bb4c07a215361223bf4d1`  
		Last Modified: Mon, 02 Apr 2018 20:55:59 GMT  
		Size: 14.5 MB (14462844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d2bdd440bddcfdc47959553bc7a536d345a908413752c86fdda264969621b8`  
		Last Modified: Mon, 02 Apr 2018 20:55:53 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46418ec45a559d66f879ecf02c0921c31d66c94955b02327a5f3e643c7bbc3a`  
		Last Modified: Mon, 02 Apr 2018 20:55:53 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7786c9a693eb4ec4d3bbb3c36e9ed986657d644e56ec003a96291eec0071035`  
		Last Modified: Mon, 02 Apr 2018 20:56:11 GMT  
		Size: 55.8 MB (55794616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c6f6fe8710a1982792b1dce2df88e3de2023745290629bc3b2a1cd98a1b929`  
		Last Modified: Mon, 02 Apr 2018 20:55:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de3a85847bd638052c33868cf0b9dd7bdc03263f0779d741b1f2c62da0d356d`  
		Last Modified: Mon, 02 Apr 2018 20:57:02 GMT  
		Size: 2.3 MB (2347504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265492b8be09666ef9e4229bb8c6d189ee5508d6830d7e8759be1cc472eddfc8`  
		Last Modified: Mon, 02 Apr 2018 20:57:23 GMT  
		Size: 78.7 MB (78674376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06298b72a83be33199d8db412519534cdeeecc9e15cf305761fb5a8bf6cf5b7`  
		Last Modified: Mon, 02 Apr 2018 20:57:00 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; 386

```console
$ docker pull redmine@sha256:317b4ecda90814a2dfa822147251b7c8cbd27610641e6585dd62731d51db7fbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253386571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c47aeb7ce51dfb44cd0690310c50f5b1dca1a6d86f9c5151197ec2eda041de1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:04:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:04:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_MAJOR=2.2
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 14 Apr 2018 02:32:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 14 Apr 2018 02:36:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 14 Apr 2018 02:36:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 02:36:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 02:36:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 02:36:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 02:36:22 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:34:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 14 Apr 2018 05:34:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:34:34 GMT
ENV GOSU_VERSION=1.10
# Sat, 14 Apr 2018 05:34:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 14 Apr 2018 05:34:38 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 14 Apr 2018 05:34:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 14 Apr 2018 05:35:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:35:37 GMT
ENV RAILS_ENV=production
# Sat, 14 Apr 2018 05:35:37 GMT
WORKDIR /usr/src/redmine
# Sat, 14 Apr 2018 05:38:55 GMT
ENV REDMINE_VERSION=3.2.9
# Sat, 14 Apr 2018 05:38:55 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Sat, 14 Apr 2018 05:38:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 14 Apr 2018 05:42:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 14 Apr 2018 05:42:01 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 14 Apr 2018 05:42:02 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 14 Apr 2018 05:42:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 14 Apr 2018 05:42:02 GMT
EXPOSE 3000/tcp
# Sat, 14 Apr 2018 05:42:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca444cc3943bdd84ca84b9afb84bfda39b93fed03a55cb07ad3bb2179d2587ee`  
		Last Modified: Sat, 14 Apr 2018 02:41:00 GMT  
		Size: 14.6 MB (14649884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1869405bc615943f828b387e40f9c5de545349cddaabc42ac71ed9f323f893bb`  
		Last Modified: Sat, 14 Apr 2018 02:40:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fff2950ee0b00f6825ffa70729c3f04991d1bf930c9e78be70963a4ee596c`  
		Last Modified: Sat, 14 Apr 2018 02:44:29 GMT  
		Size: 29.4 MB (29359781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e553baa6c610fa7127faeb3ad6cf3e0138f9f226a9ea225aafa1f0bc9393ec37`  
		Last Modified: Sat, 14 Apr 2018 02:44:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928709a06266f99dbc0fa78622a18d2916bd6cf9349bef95f4da2da32917270a`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7c1f5909f387e986984d3aab488621f61718f8e9122260a56a339c05ccb332`  
		Last Modified: Sat, 14 Apr 2018 05:43:16 GMT  
		Size: 14.8 MB (14817674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56803f18fbf98ef3b4b8cf28ea1ce1f845d420046614ec334b3f2d116ae9878b`  
		Last Modified: Sat, 14 Apr 2018 05:43:12 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9936b9924c0460c441d697be0e528df9adf11cc7dd43c946a8fb4f844ce8d234`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a7829c8c06c5076437188a6f56c0647243ad8e9507e9fa45be172c32fcc3f0`  
		Last Modified: Sat, 14 Apr 2018 05:43:29 GMT  
		Size: 60.1 MB (60146928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9933a17ab7f3365e2e5b122e04f37cae4b4506ed1d77091389769a5311cc9cd8`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46c04e80a22829df5fc51bfc27bdba811efc0de03fdbe9d05009baa2bd7e974`  
		Last Modified: Sat, 14 Apr 2018 05:43:41 GMT  
		Size: 2.3 MB (2347499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6646af4d5accaaf1460fc3754e0f608833b34277719e2f4c04ff2ff4fccfe90`  
		Last Modified: Sat, 14 Apr 2018 05:43:52 GMT  
		Size: 78.8 MB (78783655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e8c5df3778cd197d7d46b3c4f250cf85441e95ccf46894b76d161ac7632bb7`  
		Last Modified: Sat, 14 Apr 2018 05:43:39 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; ppc64le

```console
$ docker pull redmine@sha256:20a1836f3a8a679853ae43e88011bb4e277e92f58a180d396925bcdf992ee2ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250108241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b51f1ec3d8d79c46ea320fc71151b214663f72ea2c3e2ac028b094a34d31d03`
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
# Mon, 02 Apr 2018 18:53:39 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 18:53:41 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 18:53:43 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 18:53:44 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 19:02:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 19:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 19:02:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 19:02:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 19:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 19:02:56 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 19:54:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 19:55:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:55:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 19:55:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 19:55:29 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 19:55:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 19:59:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:59:06 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 19:59:08 GMT
WORKDIR /usr/src/redmine
# Mon, 02 Apr 2018 20:13:52 GMT
ENV REDMINE_VERSION=3.2.9
# Mon, 02 Apr 2018 20:13:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Mon, 02 Apr 2018 20:14:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 20:25:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 20:25:39 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 20:25:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 20:25:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 20:25:44 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 20:25:47 GMT
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
	-	`sha256:6e544887ec4077ed6486cf73fc40afda0da4983b305eedff08998229abdd7bb0`  
		Last Modified: Mon, 02 Apr 2018 19:19:15 GMT  
		Size: 32.9 MB (32883116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5a9a3f7c894975120d25eacd34bdeb0c04363231c42a94ccdbfe5730a263a`  
		Last Modified: Mon, 02 Apr 2018 19:19:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83801aa50e4f7199046f0da7ca3881e538301a1220770d1d77e8dff278ceb8b8`  
		Last Modified: Mon, 02 Apr 2018 20:27:13 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14595577fa1f07e0fa6f78494ea745c33eae11286cee152fda538a0f462d6a0f`  
		Last Modified: Mon, 02 Apr 2018 20:27:15 GMT  
		Size: 14.7 MB (14720361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a4f4809212a2c32c7f1e0903c1650f57a3680976893ae578fda2b10ec76c42`  
		Last Modified: Mon, 02 Apr 2018 20:27:11 GMT  
		Size: 469.9 KB (469853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1eb0054c8e49d6c20bff733c7b0af3dce6c62a3fcd1e9919674f4187d114b2`  
		Last Modified: Mon, 02 Apr 2018 20:27:10 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc72eea2ffd3febfc16c1e5a6c42ab6c67a956cedebf6ae35d1655f397de6d42`  
		Last Modified: Mon, 02 Apr 2018 20:27:27 GMT  
		Size: 58.1 MB (58132769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a5f1bcdc235c5f46b6b548f02cb453a744116f41842f0f6bdca41a3a747c60`  
		Last Modified: Mon, 02 Apr 2018 20:27:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4add93b8457c049ce02b61d642fe3a930fb896cc58c76e7a1145fb92d94b9a4`  
		Last Modified: Mon, 02 Apr 2018 20:27:49 GMT  
		Size: 2.3 MB (2347822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe13183219186eacc78a5d95871baca8539d40ea30b2bf56923970c8eb57de6`  
		Last Modified: Mon, 02 Apr 2018 20:28:04 GMT  
		Size: 79.6 MB (79566695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b14561e953bf8e646fb88194232d60b6649aac6fd152bbd9326c1bf8f8bbb2`  
		Last Modified: Mon, 02 Apr 2018 20:27:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; s390x

```console
$ docker pull redmine@sha256:f7e1358abef8749593382ced735b50f259272d433f6b39b78c0f670cf5859103
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256865306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015e6ad26ccb90473eab586746f257c0617df6e12396ee9ae9c28773f3bdd3ec`
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
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:52:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:55:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:55:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:55:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:55:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:55:19 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:24:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:24:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:24:51 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:24:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:24:58 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:25:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:25:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:25:45 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:25:45 GMT
WORKDIR /usr/src/redmine
# Mon, 02 Apr 2018 18:28:46 GMT
ENV REDMINE_VERSION=3.2.9
# Mon, 02 Apr 2018 18:28:46 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Mon, 02 Apr 2018 18:28:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:31:18 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:31:18 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:31:19 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:31:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:31:19 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:31:19 GMT
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
	-	`sha256:c558c6d10fd441cc8c018a03609ee282a70f42763c44291481e7114420b92a4a`  
		Last Modified: Mon, 02 Apr 2018 18:04:39 GMT  
		Size: 35.5 MB (35542982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78d3cd2608e6bb56f8cd57923fe1119eadc48e71f0e8cf7fb874ff87d32ef8c`  
		Last Modified: Mon, 02 Apr 2018 18:04:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e56e7d61b5cafc8961e5a58ae4a6a88f2fd2347616e88a4d2713881ab08f14`  
		Last Modified: Mon, 02 Apr 2018 18:32:36 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bec803b8a1b359196ca9007081036408cab184646994f0d85b7b3b4a895158`  
		Last Modified: Mon, 02 Apr 2018 18:32:39 GMT  
		Size: 14.8 MB (14815213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94e26e6b848b15185d168db50bb4f60246b285b8e2f6197e34fb0e38f76aa67`  
		Last Modified: Mon, 02 Apr 2018 18:32:34 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9e0f09e73ae22019c0542ef1c13c3068942eb069f366928071614775c02cbd`  
		Last Modified: Mon, 02 Apr 2018 18:32:34 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b77d9263655d6ec61d9545b4919971aee2224f6c8c8d697a6bb0a3e01446ac7`  
		Last Modified: Mon, 02 Apr 2018 18:32:48 GMT  
		Size: 59.1 MB (59111160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75fc6c0b795877865e7756acbc02b45620c89d0892182d8c1246286727723f14`  
		Last Modified: Mon, 02 Apr 2018 18:32:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d6d774525217e0879077aa742f04c69f96b0ff2c3c9c0d876837033d5bc096`  
		Last Modified: Mon, 02 Apr 2018 18:33:08 GMT  
		Size: 2.3 MB (2347504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8085bccc184d50d32c50a5338017297133758ec683f7488d264500418f0561`  
		Last Modified: Mon, 02 Apr 2018 18:33:18 GMT  
		Size: 81.8 MB (81772993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f2e678eb875f8e2ef51e7cd7f4a47be0ab76a4c46dacef68a8a1cd4bbd6ca3`  
		Last Modified: Mon, 02 Apr 2018 18:33:06 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.9-passenger`

```console
$ docker pull redmine@sha256:1ab3abbb1773999ff0b323d80225ba766c06635b94fd999eb890f316b9c3ef92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.9-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9d8c06ae720cee5512fb366b11a0f0c9ed59f2dae22892730e5ecbfb37e605cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273701629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abea24256f9eedb200342aa24930a6781da3fd72e17fc705cab039691822995`
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
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_VERSION=2.2.10
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 18:48:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 18:51:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 18:51:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 18:51:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 18:51:26 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:41:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:41:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:41:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:41:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:41:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:41:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:42:19 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:42:19 GMT
WORKDIR /usr/src/redmine
# Thu, 29 Mar 2018 22:01:25 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 29 Mar 2018 22:01:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 29 Mar 2018 22:01:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 22:03:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 22:03:55 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 22:03:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 22:03:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 22:03:56 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 22:03:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Apr 2018 05:08:09 GMT
ENV PASSENGER_VERSION=5.2.3
# Tue, 10 Apr 2018 05:08:35 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Apr 2018 05:08:37 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Apr 2018 05:08:37 GMT
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
	-	`sha256:578ee768451cf3f9e7efc3a7c59d7cd6a0ae15acb993a437d091b3e0e6084e30`  
		Last Modified: Thu, 29 Mar 2018 21:01:24 GMT  
		Size: 31.9 MB (31892062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234f3ceb15646e4f6410441babc36899b925fb7286c6113d2e64491df39f440`  
		Last Modified: Thu, 29 Mar 2018 21:01:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4b3dc7eeff772e8eb30707685d0972220342f769f0eaa812a26cd30b472d8a`  
		Last Modified: Thu, 29 Mar 2018 23:07:01 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0681e8f540d612c7edb7d4e21b132068c1b5d738b03f6082151abc807f2faffa`  
		Last Modified: Thu, 29 Mar 2018 23:07:04 GMT  
		Size: 14.7 MB (14650519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68bdfc7caa768c32b344daec9ebf389c39669b2a77d393ac50de497b2b905d0`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9733ab947ec60f22dce16dd1882d4795850a6612fe8be4e85027b9d919527d`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb00870dc6028cc8631f196864be23507114111526c4665348cdece7e86516ca`  
		Last Modified: Thu, 29 Mar 2018 23:07:15 GMT  
		Size: 59.3 MB (59272052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764ec51c5afd64e88110d41378006a02d57198c18dfad80fd573ccd71d061db`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f89c92873ab3ca5ea676569c423ef6f6f7aadab8b7877f58f852ff89ad59e3`  
		Last Modified: Thu, 29 Mar 2018 23:20:41 GMT  
		Size: 2.3 MB (2347510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c526194479128aaa0a49d3ebc272a71b6ef340f6d6a587e8a76ecdf621380d`  
		Last Modified: Thu, 29 Mar 2018 23:20:57 GMT  
		Size: 79.4 MB (79399551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e53c3945409b6528f0a5db179a274df7653c9e5576ff749565e6335a00696e`  
		Last Modified: Thu, 29 Mar 2018 23:20:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0fe33009e0dbebd7ad0891c296e03e738930f885a9bad10fadf42fcd275012`  
		Last Modified: Tue, 10 Apr 2018 05:11:27 GMT  
		Size: 18.5 MB (18459813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b768f391f83af81c4f57b8e66b9e551306e2e2b666fe98806b20889db15bfbd8`  
		Last Modified: Tue, 10 Apr 2018 05:11:25 GMT  
		Size: 4.4 MB (4372062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:1ab3abbb1773999ff0b323d80225ba766c06635b94fd999eb890f316b9c3ef92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9d8c06ae720cee5512fb366b11a0f0c9ed59f2dae22892730e5ecbfb37e605cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273701629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abea24256f9eedb200342aa24930a6781da3fd72e17fc705cab039691822995`
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
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_VERSION=2.2.10
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 18:48:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 18:51:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 18:51:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 18:51:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 18:51:26 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:41:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:41:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:41:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:41:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:41:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:41:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:42:19 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:42:19 GMT
WORKDIR /usr/src/redmine
# Thu, 29 Mar 2018 22:01:25 GMT
ENV REDMINE_VERSION=3.2.9
# Thu, 29 Mar 2018 22:01:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Thu, 29 Mar 2018 22:01:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 22:03:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 22:03:55 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 22:03:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 22:03:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 22:03:56 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 22:03:56 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 10 Apr 2018 05:08:09 GMT
ENV PASSENGER_VERSION=5.2.3
# Tue, 10 Apr 2018 05:08:35 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 10 Apr 2018 05:08:37 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 10 Apr 2018 05:08:37 GMT
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
	-	`sha256:578ee768451cf3f9e7efc3a7c59d7cd6a0ae15acb993a437d091b3e0e6084e30`  
		Last Modified: Thu, 29 Mar 2018 21:01:24 GMT  
		Size: 31.9 MB (31892062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234f3ceb15646e4f6410441babc36899b925fb7286c6113d2e64491df39f440`  
		Last Modified: Thu, 29 Mar 2018 21:01:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4b3dc7eeff772e8eb30707685d0972220342f769f0eaa812a26cd30b472d8a`  
		Last Modified: Thu, 29 Mar 2018 23:07:01 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0681e8f540d612c7edb7d4e21b132068c1b5d738b03f6082151abc807f2faffa`  
		Last Modified: Thu, 29 Mar 2018 23:07:04 GMT  
		Size: 14.7 MB (14650519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68bdfc7caa768c32b344daec9ebf389c39669b2a77d393ac50de497b2b905d0`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9733ab947ec60f22dce16dd1882d4795850a6612fe8be4e85027b9d919527d`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb00870dc6028cc8631f196864be23507114111526c4665348cdece7e86516ca`  
		Last Modified: Thu, 29 Mar 2018 23:07:15 GMT  
		Size: 59.3 MB (59272052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764ec51c5afd64e88110d41378006a02d57198c18dfad80fd573ccd71d061db`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f89c92873ab3ca5ea676569c423ef6f6f7aadab8b7877f58f852ff89ad59e3`  
		Last Modified: Thu, 29 Mar 2018 23:20:41 GMT  
		Size: 2.3 MB (2347510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c526194479128aaa0a49d3ebc272a71b6ef340f6d6a587e8a76ecdf621380d`  
		Last Modified: Thu, 29 Mar 2018 23:20:57 GMT  
		Size: 79.4 MB (79399551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e53c3945409b6528f0a5db179a274df7653c9e5576ff749565e6335a00696e`  
		Last Modified: Thu, 29 Mar 2018 23:20:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0fe33009e0dbebd7ad0891c296e03e738930f885a9bad10fadf42fcd275012`  
		Last Modified: Tue, 10 Apr 2018 05:11:27 GMT  
		Size: 18.5 MB (18459813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b768f391f83af81c4f57b8e66b9e551306e2e2b666fe98806b20889db15bfbd8`  
		Last Modified: Tue, 10 Apr 2018 05:11:25 GMT  
		Size: 4.4 MB (4372062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:9f41951ab8e87b89a6b73d0658f8b31a8d3cc6a81dc585e7ba849fcbd614618a
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
$ docker pull redmine@sha256:fc911bc103b717b830105c1a14951de901d3c1a432cabfac6b7ae07268c3336a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (251013305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2fd8888b2e4dc88e30cf91d93ef7a7fe82a1fb32b2b759db130139ab69b076`
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
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_VERSION=2.2.10
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 18:48:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 18:51:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 18:51:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 18:51:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 18:51:26 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:41:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:41:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:41:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:41:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:41:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:41:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:42:19 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:42:19 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:18:03 GMT
ENV REDMINE_VERSION=3.3.7
# Wed, 11 Apr 2018 18:18:03 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Wed, 11 Apr 2018 18:18:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:20:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:20:33 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:20:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:20:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:20:34 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:20:34 GMT
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
	-	`sha256:578ee768451cf3f9e7efc3a7c59d7cd6a0ae15acb993a437d091b3e0e6084e30`  
		Last Modified: Thu, 29 Mar 2018 21:01:24 GMT  
		Size: 31.9 MB (31892062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234f3ceb15646e4f6410441babc36899b925fb7286c6113d2e64491df39f440`  
		Last Modified: Thu, 29 Mar 2018 21:01:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4b3dc7eeff772e8eb30707685d0972220342f769f0eaa812a26cd30b472d8a`  
		Last Modified: Thu, 29 Mar 2018 23:07:01 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0681e8f540d612c7edb7d4e21b132068c1b5d738b03f6082151abc807f2faffa`  
		Last Modified: Thu, 29 Mar 2018 23:07:04 GMT  
		Size: 14.7 MB (14650519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68bdfc7caa768c32b344daec9ebf389c39669b2a77d393ac50de497b2b905d0`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9733ab947ec60f22dce16dd1882d4795850a6612fe8be4e85027b9d919527d`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb00870dc6028cc8631f196864be23507114111526c4665348cdece7e86516ca`  
		Last Modified: Thu, 29 Mar 2018 23:07:15 GMT  
		Size: 59.3 MB (59272052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764ec51c5afd64e88110d41378006a02d57198c18dfad80fd573ccd71d061db`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d82567a4628484eb717f56b2a9b1dcbfef4eb59f5726c73591f0fee239227`  
		Last Modified: Wed, 11 Apr 2018 18:32:43 GMT  
		Size: 2.4 MB (2393661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b17e7fa93af6942d8d9503f004eca273a0f85df9bd1ec2c253ec31a0551609c`  
		Last Modified: Wed, 11 Apr 2018 18:33:02 GMT  
		Size: 79.5 MB (79496951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615415f0e2a54b190a2068465bcd15c545b6c3159714d7766816836c53532cb6`  
		Last Modified: Wed, 11 Apr 2018 18:32:41 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a91137e75daf53038383e7bb93b4c027879c3affc89b5b8ecbd7025363eb3450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243428295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6ec4a793ca17662390620d5310540dcf205e36d5156006e0a6eb0c54ce7f7c`
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
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:34:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:38:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:38:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:38:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:38:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:38:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:38:45 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:07:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:08:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:08:25 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:08:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:08:27 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:08:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:09:26 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:09:26 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:57:44 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 12 Apr 2018 08:57:44 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 12 Apr 2018 08:57:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 09:02:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 09:02:17 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 09:02:18 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 09:02:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 09:02:18 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 09:02:19 GMT
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
	-	`sha256:018fbfa073a885445ca862f3a666b7085ce54ed5165686698e2a42e87fdd625a`  
		Last Modified: Mon, 02 Apr 2018 17:44:49 GMT  
		Size: 30.8 MB (30812845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbc22d5eae9b0b2ae2f87805625059fa8739417be5b2b26daf3098178612045`  
		Last Modified: Mon, 02 Apr 2018 17:44:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1bf34289850d8d36c6694cee6a32f5bdc4bf6d8f2d458d2c48a28afce7ec64`  
		Last Modified: Mon, 02 Apr 2018 18:20:02 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca441e60036127f70d0f7774d950619c3c0c0487421695e6fe017f57c5f1a31a`  
		Last Modified: Mon, 02 Apr 2018 18:20:05 GMT  
		Size: 14.3 MB (14347651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc658acb7a403a2b37eaed99e086e76e57fd9549295bbf39cac4aef40d7eca3`  
		Last Modified: Mon, 02 Apr 2018 18:20:01 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802843659d1ae799dfd0368f60b333e64d3c09b0faa419bad6d480fbedc03071`  
		Last Modified: Mon, 02 Apr 2018 18:19:59 GMT  
		Size: 7.8 KB (7847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b858d062ecbc1b7e36e964a790b88b8f91107b8ee87c0c0b7c4f92e5bf8951`  
		Last Modified: Mon, 02 Apr 2018 18:20:20 GMT  
		Size: 56.6 MB (56610987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd4520a345a1d4fb455f00b67feb53a2b3b24688118a09c3f81ad27a2dd71f4`  
		Last Modified: Mon, 02 Apr 2018 18:20:04 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2547c677eca896fa84b389f5f34934cdc22e2fd9bad805161d06d9cb88bed30`  
		Last Modified: Thu, 12 Apr 2018 09:03:43 GMT  
		Size: 2.4 MB (2394069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59df3c22ab6f93fd3eef33930dff67320332618e8b63a0a9c82685526c3bf9ee`  
		Last Modified: Thu, 12 Apr 2018 09:03:59 GMT  
		Size: 78.7 MB (78735981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6488b85b90f1b4960c771b0c55f4ff2b2e939ef3ca791d6249660ca66d02b5d9`  
		Last Modified: Thu, 12 Apr 2018 09:03:41 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:31368136a456239be599824a88f34fd97c4b2ffa9cd94ccda419c3de707e6056
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237596330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8711cf6674359db0285332083d68f32cd8b9f546fe1d9e4289027022f43ecfd4`
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
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:24:27 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:28:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:28:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:28:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:28:29 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 17:59:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 17:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:59:35 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 17:59:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 17:59:37 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 17:59:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:00:38 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:00:38 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 12:05:08 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 12 Apr 2018 12:05:09 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 12 Apr 2018 12:05:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:09:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:09:32 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:09:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:09:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:09:33 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:09:34 GMT
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
	-	`sha256:4a02e93d1d117e9bc7ded1c0d03e71fc257efc2ee1ad844959807c983bd03be3`  
		Last Modified: Mon, 02 Apr 2018 17:36:21 GMT  
		Size: 30.6 MB (30588990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8bc19f5a7909442a3485bc49b744011b680f99a62522307e8b671465a1e66b`  
		Last Modified: Mon, 02 Apr 2018 17:36:09 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456389eabba24dcef41133706030349063b242d6a4ab014d2cac5c7d36a71db`  
		Last Modified: Mon, 02 Apr 2018 18:10:44 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4d5bbf6106937e6db754e25af211275b89de73d00c9b7548460f5e761a5820`  
		Last Modified: Mon, 02 Apr 2018 18:10:47 GMT  
		Size: 14.1 MB (14134520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a917fcc89d852428bc24c74543fc9d3d91b8f5567583846f7bbafe5cb796b76`  
		Last Modified: Mon, 02 Apr 2018 18:10:43 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3caf72ab38d2e79fc8add122fde51522e4aefb1572db35ae78f74f5971f857a`  
		Last Modified: Mon, 02 Apr 2018 18:10:42 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e376797feafbab83940e45f139d46ca2dd4ac340cd3970ddaae74f25abd5079`  
		Last Modified: Mon, 02 Apr 2018 18:10:59 GMT  
		Size: 54.3 MB (54345361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b0264355b0cb7c458f2d808e6dca5dbfdac149062c9a6f6036fdb6606ec32`  
		Last Modified: Mon, 02 Apr 2018 18:10:41 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa15f278b804ffbc30773401be7490d0b1071013b35df971d0832ba786967be3`  
		Last Modified: Thu, 12 Apr 2018 12:10:44 GMT  
		Size: 2.4 MB (2394066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13d4ba2856c01cbc97d2eddf11c4ccb3632bb606dddeff4302cd8945e2ed9a8`  
		Last Modified: Thu, 12 Apr 2018 12:11:00 GMT  
		Size: 78.2 MB (78158502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022440c9193127217a1f0ae2ca37196224f40f3301b9a8d5a1cb6521367066a8`  
		Last Modified: Thu, 12 Apr 2018 12:10:42 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:f9e91a478946534336e50b5d8fc885622840d4a41e9408fe0f1f73730d98f9be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243191044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d557cfef1e2df7e4a5e4ffe276b8a49ef132c12d468dba7b73cf5605545083`
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
# Mon, 02 Apr 2018 19:16:08 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 19:16:09 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 19:16:09 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 19:16:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 19:23:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 19:23:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 19:23:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 19:23:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 19:23:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 19:23:48 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 20:28:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 20:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:29:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 20:29:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 20:29:29 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 20:29:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 20:31:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:31:22 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 20:31:23 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 09:22:42 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 12 Apr 2018 09:22:43 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 12 Apr 2018 09:22:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 09:37:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 09:38:03 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 09:38:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 09:38:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 09:38:11 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 09:38:12 GMT
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
	-	`sha256:f885db840e696fa9b0b01fc9b556af98771396eb71813521fc1b86ba424ee08b`  
		Last Modified: Mon, 02 Apr 2018 19:57:59 GMT  
		Size: 32.0 MB (32002026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a61c9ba487a07d74cd198e8a0d7ef4da5cde340d20c4f1d6ebe0972c0d33ab`  
		Last Modified: Mon, 02 Apr 2018 19:57:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd34382c812e79e09e4eda1c719fc25d6f0768d74418a4c5687c7176dd27ce2a`  
		Last Modified: Mon, 02 Apr 2018 20:55:55 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de70a5472f6eb0ea1419fc28c064331686e2d8e839bb4c07a215361223bf4d1`  
		Last Modified: Mon, 02 Apr 2018 20:55:59 GMT  
		Size: 14.5 MB (14462844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d2bdd440bddcfdc47959553bc7a536d345a908413752c86fdda264969621b8`  
		Last Modified: Mon, 02 Apr 2018 20:55:53 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46418ec45a559d66f879ecf02c0921c31d66c94955b02327a5f3e643c7bbc3a`  
		Last Modified: Mon, 02 Apr 2018 20:55:53 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7786c9a693eb4ec4d3bbb3c36e9ed986657d644e56ec003a96291eec0071035`  
		Last Modified: Mon, 02 Apr 2018 20:56:11 GMT  
		Size: 55.8 MB (55794616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c6f6fe8710a1982792b1dce2df88e3de2023745290629bc3b2a1cd98a1b929`  
		Last Modified: Mon, 02 Apr 2018 20:55:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6f9241bf87b5b2c74e30321e78a7ee1821e22c7b4433f5ea8b47f2931acfc`  
		Last Modified: Thu, 12 Apr 2018 09:40:57 GMT  
		Size: 2.4 MB (2393652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41aaa84f0f89156eac1dcdc0ca4fb907ad1430346bdcdd129e28a1c8461e2f0`  
		Last Modified: Thu, 12 Apr 2018 09:41:17 GMT  
		Size: 78.8 MB (78767740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71299077c12320746afafe17d323a081e0412cbe2ba7ee82a0225e8252768ab`  
		Last Modified: Thu, 12 Apr 2018 09:40:55 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:c6fa06d2d6d139f03637cbec4e79d6fb4de934d332aab83ab71d27e2a9ca993c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253415039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a603776a23116e625ab7f37154b14e3b073e8eeddc0894b39bc6a5cb14a90a8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:04:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:04:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_MAJOR=2.2
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 14 Apr 2018 02:32:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 14 Apr 2018 02:36:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 14 Apr 2018 02:36:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 02:36:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 02:36:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 02:36:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 02:36:22 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:34:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 14 Apr 2018 05:34:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:34:34 GMT
ENV GOSU_VERSION=1.10
# Sat, 14 Apr 2018 05:34:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 14 Apr 2018 05:34:38 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 14 Apr 2018 05:34:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 14 Apr 2018 05:35:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:35:37 GMT
ENV RAILS_ENV=production
# Sat, 14 Apr 2018 05:35:37 GMT
WORKDIR /usr/src/redmine
# Sat, 14 Apr 2018 05:35:38 GMT
ENV REDMINE_VERSION=3.3.7
# Sat, 14 Apr 2018 05:35:38 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sat, 14 Apr 2018 05:35:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 14 Apr 2018 05:38:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 14 Apr 2018 05:38:44 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 14 Apr 2018 05:38:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 14 Apr 2018 05:38:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 14 Apr 2018 05:38:45 GMT
EXPOSE 3000/tcp
# Sat, 14 Apr 2018 05:38:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca444cc3943bdd84ca84b9afb84bfda39b93fed03a55cb07ad3bb2179d2587ee`  
		Last Modified: Sat, 14 Apr 2018 02:41:00 GMT  
		Size: 14.6 MB (14649884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1869405bc615943f828b387e40f9c5de545349cddaabc42ac71ed9f323f893bb`  
		Last Modified: Sat, 14 Apr 2018 02:40:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fff2950ee0b00f6825ffa70729c3f04991d1bf930c9e78be70963a4ee596c`  
		Last Modified: Sat, 14 Apr 2018 02:44:29 GMT  
		Size: 29.4 MB (29359781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e553baa6c610fa7127faeb3ad6cf3e0138f9f226a9ea225aafa1f0bc9393ec37`  
		Last Modified: Sat, 14 Apr 2018 02:44:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928709a06266f99dbc0fa78622a18d2916bd6cf9349bef95f4da2da32917270a`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7c1f5909f387e986984d3aab488621f61718f8e9122260a56a339c05ccb332`  
		Last Modified: Sat, 14 Apr 2018 05:43:16 GMT  
		Size: 14.8 MB (14817674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56803f18fbf98ef3b4b8cf28ea1ce1f845d420046614ec334b3f2d116ae9878b`  
		Last Modified: Sat, 14 Apr 2018 05:43:12 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9936b9924c0460c441d697be0e528df9adf11cc7dd43c946a8fb4f844ce8d234`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a7829c8c06c5076437188a6f56c0647243ad8e9507e9fa45be172c32fcc3f0`  
		Last Modified: Sat, 14 Apr 2018 05:43:29 GMT  
		Size: 60.1 MB (60146928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9933a17ab7f3365e2e5b122e04f37cae4b4506ed1d77091389769a5311cc9cd8`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad37a50a25768b0b07b33e96efb6256c803a35be1706e212a6d9fb6b101916c`  
		Last Modified: Sat, 14 Apr 2018 05:43:14 GMT  
		Size: 2.4 MB (2393650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97554ee12a7feb1f702a786492765916a8840ed3860caab069a1ecafec5fba4c`  
		Last Modified: Sat, 14 Apr 2018 05:43:29 GMT  
		Size: 78.8 MB (78765974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f26efbb452ecc6ee486f89d24e505c7305434ec8a845f7ba79a480eca6cd43`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:c849e486de695715a68991ece6e8bb20cb0f3b151db04a4e2f0be2c79ef65d40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250241492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc0d5bbff61a084e6007c924eedf8a5bf7d8d4d0e2cf9c68a78f7556856b8b4`
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
# Mon, 02 Apr 2018 18:53:39 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 18:53:41 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 18:53:43 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 18:53:44 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 19:02:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 19:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 19:02:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 19:02:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 19:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 19:02:56 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 19:54:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 19:55:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:55:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 19:55:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 19:55:29 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 19:55:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 19:59:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:59:06 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 19:59:08 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:43:02 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 12 Apr 2018 08:43:03 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 12 Apr 2018 08:43:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 08:50:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:50:14 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 08:50:15 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 08:50:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:50:18 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 08:50:20 GMT
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
	-	`sha256:6e544887ec4077ed6486cf73fc40afda0da4983b305eedff08998229abdd7bb0`  
		Last Modified: Mon, 02 Apr 2018 19:19:15 GMT  
		Size: 32.9 MB (32883116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5a9a3f7c894975120d25eacd34bdeb0c04363231c42a94ccdbfe5730a263a`  
		Last Modified: Mon, 02 Apr 2018 19:19:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83801aa50e4f7199046f0da7ca3881e538301a1220770d1d77e8dff278ceb8b8`  
		Last Modified: Mon, 02 Apr 2018 20:27:13 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14595577fa1f07e0fa6f78494ea745c33eae11286cee152fda538a0f462d6a0f`  
		Last Modified: Mon, 02 Apr 2018 20:27:15 GMT  
		Size: 14.7 MB (14720361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a4f4809212a2c32c7f1e0903c1650f57a3680976893ae578fda2b10ec76c42`  
		Last Modified: Mon, 02 Apr 2018 20:27:11 GMT  
		Size: 469.9 KB (469853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1eb0054c8e49d6c20bff733c7b0af3dce6c62a3fcd1e9919674f4187d114b2`  
		Last Modified: Mon, 02 Apr 2018 20:27:10 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc72eea2ffd3febfc16c1e5a6c42ab6c67a956cedebf6ae35d1655f397de6d42`  
		Last Modified: Mon, 02 Apr 2018 20:27:27 GMT  
		Size: 58.1 MB (58132769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a5f1bcdc235c5f46b6b548f02cb453a744116f41842f0f6bdca41a3a747c60`  
		Last Modified: Mon, 02 Apr 2018 20:27:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2646a7a474f0842f5941c9a7a99b5e75e815fce1b9a93a2733cffdfbaf3f8a1f`  
		Last Modified: Thu, 12 Apr 2018 08:51:52 GMT  
		Size: 2.4 MB (2394069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c08587fc25d1a9229f7421a97b2dfa99db4ceb44fdc59a85bec8a3bc60dd41`  
		Last Modified: Thu, 12 Apr 2018 08:52:06 GMT  
		Size: 79.7 MB (79653698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61d7854115d1d4b20480a55054f7c37b202a6b83963feffe6b63a8421e93c2d`  
		Last Modified: Thu, 12 Apr 2018 08:51:50 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:bf1aa522b57d727a9ba18d4a502430a4ead68cf720158cec572f48d5c5b7c175
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256969282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396bf5f1a1fca0067e47a305c7b04711213f8d1ecef24c3af31c2165f8a20a0d`
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
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:52:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:55:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:55:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:55:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:55:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:55:19 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:24:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:24:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:24:51 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:24:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:24:58 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:25:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:25:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:25:45 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:25:45 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 12:11:39 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 12 Apr 2018 12:11:39 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 12 Apr 2018 12:11:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:14:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:14:09 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:14:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:14:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:14:09 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:14:09 GMT
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
	-	`sha256:c558c6d10fd441cc8c018a03609ee282a70f42763c44291481e7114420b92a4a`  
		Last Modified: Mon, 02 Apr 2018 18:04:39 GMT  
		Size: 35.5 MB (35542982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78d3cd2608e6bb56f8cd57923fe1119eadc48e71f0e8cf7fb874ff87d32ef8c`  
		Last Modified: Mon, 02 Apr 2018 18:04:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e56e7d61b5cafc8961e5a58ae4a6a88f2fd2347616e88a4d2713881ab08f14`  
		Last Modified: Mon, 02 Apr 2018 18:32:36 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bec803b8a1b359196ca9007081036408cab184646994f0d85b7b3b4a895158`  
		Last Modified: Mon, 02 Apr 2018 18:32:39 GMT  
		Size: 14.8 MB (14815213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94e26e6b848b15185d168db50bb4f60246b285b8e2f6197e34fb0e38f76aa67`  
		Last Modified: Mon, 02 Apr 2018 18:32:34 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9e0f09e73ae22019c0542ef1c13c3068942eb069f366928071614775c02cbd`  
		Last Modified: Mon, 02 Apr 2018 18:32:34 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b77d9263655d6ec61d9545b4919971aee2224f6c8c8d697a6bb0a3e01446ac7`  
		Last Modified: Mon, 02 Apr 2018 18:32:48 GMT  
		Size: 59.1 MB (59111160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75fc6c0b795877865e7756acbc02b45620c89d0892182d8c1246286727723f14`  
		Last Modified: Mon, 02 Apr 2018 18:32:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6675350159a88e295210e1939ab5e7b2e32332195b6a48eb56e0f89d46f1b1`  
		Last Modified: Thu, 12 Apr 2018 12:15:17 GMT  
		Size: 2.4 MB (2393658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2497a778c6dab2d5ea76a6e12237d5e88d7e62d520d10cd0c1aeb099f2a7e03b`  
		Last Modified: Thu, 12 Apr 2018 12:15:28 GMT  
		Size: 81.8 MB (81830815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6638a9a4ef931027ea2e61c31f6b8043b71481a1e4101882ed812d037918a734`  
		Last Modified: Thu, 12 Apr 2018 12:15:16 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.7`

```console
$ docker pull redmine@sha256:9f41951ab8e87b89a6b73d0658f8b31a8d3cc6a81dc585e7ba849fcbd614618a
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
$ docker pull redmine@sha256:fc911bc103b717b830105c1a14951de901d3c1a432cabfac6b7ae07268c3336a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (251013305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2fd8888b2e4dc88e30cf91d93ef7a7fe82a1fb32b2b759db130139ab69b076`
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
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_VERSION=2.2.10
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 18:48:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 18:51:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 18:51:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 18:51:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 18:51:26 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:41:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:41:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:41:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:41:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:41:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:41:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:42:19 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:42:19 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:18:03 GMT
ENV REDMINE_VERSION=3.3.7
# Wed, 11 Apr 2018 18:18:03 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Wed, 11 Apr 2018 18:18:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:20:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:20:33 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:20:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:20:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:20:34 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:20:34 GMT
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
	-	`sha256:578ee768451cf3f9e7efc3a7c59d7cd6a0ae15acb993a437d091b3e0e6084e30`  
		Last Modified: Thu, 29 Mar 2018 21:01:24 GMT  
		Size: 31.9 MB (31892062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234f3ceb15646e4f6410441babc36899b925fb7286c6113d2e64491df39f440`  
		Last Modified: Thu, 29 Mar 2018 21:01:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4b3dc7eeff772e8eb30707685d0972220342f769f0eaa812a26cd30b472d8a`  
		Last Modified: Thu, 29 Mar 2018 23:07:01 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0681e8f540d612c7edb7d4e21b132068c1b5d738b03f6082151abc807f2faffa`  
		Last Modified: Thu, 29 Mar 2018 23:07:04 GMT  
		Size: 14.7 MB (14650519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68bdfc7caa768c32b344daec9ebf389c39669b2a77d393ac50de497b2b905d0`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9733ab947ec60f22dce16dd1882d4795850a6612fe8be4e85027b9d919527d`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb00870dc6028cc8631f196864be23507114111526c4665348cdece7e86516ca`  
		Last Modified: Thu, 29 Mar 2018 23:07:15 GMT  
		Size: 59.3 MB (59272052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764ec51c5afd64e88110d41378006a02d57198c18dfad80fd573ccd71d061db`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d82567a4628484eb717f56b2a9b1dcbfef4eb59f5726c73591f0fee239227`  
		Last Modified: Wed, 11 Apr 2018 18:32:43 GMT  
		Size: 2.4 MB (2393661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b17e7fa93af6942d8d9503f004eca273a0f85df9bd1ec2c253ec31a0551609c`  
		Last Modified: Wed, 11 Apr 2018 18:33:02 GMT  
		Size: 79.5 MB (79496951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615415f0e2a54b190a2068465bcd15c545b6c3159714d7766816836c53532cb6`  
		Last Modified: Wed, 11 Apr 2018 18:32:41 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a91137e75daf53038383e7bb93b4c027879c3affc89b5b8ecbd7025363eb3450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243428295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6ec4a793ca17662390620d5310540dcf205e36d5156006e0a6eb0c54ce7f7c`
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
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:34:25 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:34:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:38:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:38:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:38:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:38:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:38:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:38:45 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:07:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:08:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:08:25 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:08:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:08:27 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:08:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:09:26 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:09:26 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:57:44 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 12 Apr 2018 08:57:44 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 12 Apr 2018 08:57:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 09:02:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 09:02:17 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 09:02:18 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 09:02:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 09:02:18 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 09:02:19 GMT
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
	-	`sha256:018fbfa073a885445ca862f3a666b7085ce54ed5165686698e2a42e87fdd625a`  
		Last Modified: Mon, 02 Apr 2018 17:44:49 GMT  
		Size: 30.8 MB (30812845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbc22d5eae9b0b2ae2f87805625059fa8739417be5b2b26daf3098178612045`  
		Last Modified: Mon, 02 Apr 2018 17:44:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1bf34289850d8d36c6694cee6a32f5bdc4bf6d8f2d458d2c48a28afce7ec64`  
		Last Modified: Mon, 02 Apr 2018 18:20:02 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca441e60036127f70d0f7774d950619c3c0c0487421695e6fe017f57c5f1a31a`  
		Last Modified: Mon, 02 Apr 2018 18:20:05 GMT  
		Size: 14.3 MB (14347651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc658acb7a403a2b37eaed99e086e76e57fd9549295bbf39cac4aef40d7eca3`  
		Last Modified: Mon, 02 Apr 2018 18:20:01 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802843659d1ae799dfd0368f60b333e64d3c09b0faa419bad6d480fbedc03071`  
		Last Modified: Mon, 02 Apr 2018 18:19:59 GMT  
		Size: 7.8 KB (7847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b858d062ecbc1b7e36e964a790b88b8f91107b8ee87c0c0b7c4f92e5bf8951`  
		Last Modified: Mon, 02 Apr 2018 18:20:20 GMT  
		Size: 56.6 MB (56610987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd4520a345a1d4fb455f00b67feb53a2b3b24688118a09c3f81ad27a2dd71f4`  
		Last Modified: Mon, 02 Apr 2018 18:20:04 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2547c677eca896fa84b389f5f34934cdc22e2fd9bad805161d06d9cb88bed30`  
		Last Modified: Thu, 12 Apr 2018 09:03:43 GMT  
		Size: 2.4 MB (2394069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59df3c22ab6f93fd3eef33930dff67320332618e8b63a0a9c82685526c3bf9ee`  
		Last Modified: Thu, 12 Apr 2018 09:03:59 GMT  
		Size: 78.7 MB (78735981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6488b85b90f1b4960c771b0c55f4ff2b2e939ef3ca791d6249660ca66d02b5d9`  
		Last Modified: Thu, 12 Apr 2018 09:03:41 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; arm variant v7

```console
$ docker pull redmine@sha256:31368136a456239be599824a88f34fd97c4b2ffa9cd94ccda419c3de707e6056
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237596330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8711cf6674359db0285332083d68f32cd8b9f546fe1d9e4289027022f43ecfd4`
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
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:24:27 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:24:27 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:28:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:28:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:28:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:28:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:28:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:28:29 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 17:59:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 17:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:59:35 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 17:59:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 17:59:37 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 17:59:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:00:38 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:00:38 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 12:05:08 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 12 Apr 2018 12:05:09 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 12 Apr 2018 12:05:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:09:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:09:32 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:09:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:09:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:09:33 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:09:34 GMT
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
	-	`sha256:4a02e93d1d117e9bc7ded1c0d03e71fc257efc2ee1ad844959807c983bd03be3`  
		Last Modified: Mon, 02 Apr 2018 17:36:21 GMT  
		Size: 30.6 MB (30588990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8bc19f5a7909442a3485bc49b744011b680f99a62522307e8b671465a1e66b`  
		Last Modified: Mon, 02 Apr 2018 17:36:09 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456389eabba24dcef41133706030349063b242d6a4ab014d2cac5c7d36a71db`  
		Last Modified: Mon, 02 Apr 2018 18:10:44 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4d5bbf6106937e6db754e25af211275b89de73d00c9b7548460f5e761a5820`  
		Last Modified: Mon, 02 Apr 2018 18:10:47 GMT  
		Size: 14.1 MB (14134520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a917fcc89d852428bc24c74543fc9d3d91b8f5567583846f7bbafe5cb796b76`  
		Last Modified: Mon, 02 Apr 2018 18:10:43 GMT  
		Size: 475.3 KB (475268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3caf72ab38d2e79fc8add122fde51522e4aefb1572db35ae78f74f5971f857a`  
		Last Modified: Mon, 02 Apr 2018 18:10:42 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e376797feafbab83940e45f139d46ca2dd4ac340cd3970ddaae74f25abd5079`  
		Last Modified: Mon, 02 Apr 2018 18:10:59 GMT  
		Size: 54.3 MB (54345361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b0264355b0cb7c458f2d808e6dca5dbfdac149062c9a6f6036fdb6606ec32`  
		Last Modified: Mon, 02 Apr 2018 18:10:41 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa15f278b804ffbc30773401be7490d0b1071013b35df971d0832ba786967be3`  
		Last Modified: Thu, 12 Apr 2018 12:10:44 GMT  
		Size: 2.4 MB (2394066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13d4ba2856c01cbc97d2eddf11c4ccb3632bb606dddeff4302cd8945e2ed9a8`  
		Last Modified: Thu, 12 Apr 2018 12:11:00 GMT  
		Size: 78.2 MB (78158502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022440c9193127217a1f0ae2ca37196224f40f3301b9a8d5a1cb6521367066a8`  
		Last Modified: Thu, 12 Apr 2018 12:10:42 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:f9e91a478946534336e50b5d8fc885622840d4a41e9408fe0f1f73730d98f9be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243191044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d557cfef1e2df7e4a5e4ffe276b8a49ef132c12d468dba7b73cf5605545083`
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
# Mon, 02 Apr 2018 19:16:08 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 19:16:09 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 19:16:09 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 19:16:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 19:23:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 19:23:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 19:23:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 19:23:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 19:23:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 19:23:48 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 20:28:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 20:29:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:29:24 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 20:29:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 20:29:29 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 20:29:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 20:31:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:31:22 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 20:31:23 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 09:22:42 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 12 Apr 2018 09:22:43 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 12 Apr 2018 09:22:50 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 09:37:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 09:38:03 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 09:38:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 09:38:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 09:38:11 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 09:38:12 GMT
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
	-	`sha256:f885db840e696fa9b0b01fc9b556af98771396eb71813521fc1b86ba424ee08b`  
		Last Modified: Mon, 02 Apr 2018 19:57:59 GMT  
		Size: 32.0 MB (32002026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a61c9ba487a07d74cd198e8a0d7ef4da5cde340d20c4f1d6ebe0972c0d33ab`  
		Last Modified: Mon, 02 Apr 2018 19:57:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd34382c812e79e09e4eda1c719fc25d6f0768d74418a4c5687c7176dd27ce2a`  
		Last Modified: Mon, 02 Apr 2018 20:55:55 GMT  
		Size: 2.1 KB (2114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de70a5472f6eb0ea1419fc28c064331686e2d8e839bb4c07a215361223bf4d1`  
		Last Modified: Mon, 02 Apr 2018 20:55:59 GMT  
		Size: 14.5 MB (14462844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d2bdd440bddcfdc47959553bc7a536d345a908413752c86fdda264969621b8`  
		Last Modified: Mon, 02 Apr 2018 20:55:53 GMT  
		Size: 468.7 KB (468692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46418ec45a559d66f879ecf02c0921c31d66c94955b02327a5f3e643c7bbc3a`  
		Last Modified: Mon, 02 Apr 2018 20:55:53 GMT  
		Size: 8.1 KB (8149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7786c9a693eb4ec4d3bbb3c36e9ed986657d644e56ec003a96291eec0071035`  
		Last Modified: Mon, 02 Apr 2018 20:56:11 GMT  
		Size: 55.8 MB (55794616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c6f6fe8710a1982792b1dce2df88e3de2023745290629bc3b2a1cd98a1b929`  
		Last Modified: Mon, 02 Apr 2018 20:55:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6f9241bf87b5b2c74e30321e78a7ee1821e22c7b4433f5ea8b47f2931acfc`  
		Last Modified: Thu, 12 Apr 2018 09:40:57 GMT  
		Size: 2.4 MB (2393652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41aaa84f0f89156eac1dcdc0ca4fb907ad1430346bdcdd129e28a1c8461e2f0`  
		Last Modified: Thu, 12 Apr 2018 09:41:17 GMT  
		Size: 78.8 MB (78767740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71299077c12320746afafe17d323a081e0412cbe2ba7ee82a0225e8252768ab`  
		Last Modified: Thu, 12 Apr 2018 09:40:55 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; 386

```console
$ docker pull redmine@sha256:c6fa06d2d6d139f03637cbec4e79d6fb4de934d332aab83ab71d27e2a9ca993c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253415039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a603776a23116e625ab7f37154b14e3b073e8eeddc0894b39bc6a5cb14a90a8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:04:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:04:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_MAJOR=2.2
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_VERSION=2.2.10
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Sat, 14 Apr 2018 02:32:57 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 14 Apr 2018 02:32:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 14 Apr 2018 02:36:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 14 Apr 2018 02:36:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 02:36:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 02:36:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 02:36:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 02:36:22 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:34:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 14 Apr 2018 05:34:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:34:34 GMT
ENV GOSU_VERSION=1.10
# Sat, 14 Apr 2018 05:34:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 14 Apr 2018 05:34:38 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 14 Apr 2018 05:34:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 14 Apr 2018 05:35:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:35:37 GMT
ENV RAILS_ENV=production
# Sat, 14 Apr 2018 05:35:37 GMT
WORKDIR /usr/src/redmine
# Sat, 14 Apr 2018 05:35:38 GMT
ENV REDMINE_VERSION=3.3.7
# Sat, 14 Apr 2018 05:35:38 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Sat, 14 Apr 2018 05:35:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 14 Apr 2018 05:38:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 14 Apr 2018 05:38:44 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 14 Apr 2018 05:38:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 14 Apr 2018 05:38:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 14 Apr 2018 05:38:45 GMT
EXPOSE 3000/tcp
# Sat, 14 Apr 2018 05:38:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca444cc3943bdd84ca84b9afb84bfda39b93fed03a55cb07ad3bb2179d2587ee`  
		Last Modified: Sat, 14 Apr 2018 02:41:00 GMT  
		Size: 14.6 MB (14649884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1869405bc615943f828b387e40f9c5de545349cddaabc42ac71ed9f323f893bb`  
		Last Modified: Sat, 14 Apr 2018 02:40:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fff2950ee0b00f6825ffa70729c3f04991d1bf930c9e78be70963a4ee596c`  
		Last Modified: Sat, 14 Apr 2018 02:44:29 GMT  
		Size: 29.4 MB (29359781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e553baa6c610fa7127faeb3ad6cf3e0138f9f226a9ea225aafa1f0bc9393ec37`  
		Last Modified: Sat, 14 Apr 2018 02:44:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928709a06266f99dbc0fa78622a18d2916bd6cf9349bef95f4da2da32917270a`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7c1f5909f387e986984d3aab488621f61718f8e9122260a56a339c05ccb332`  
		Last Modified: Sat, 14 Apr 2018 05:43:16 GMT  
		Size: 14.8 MB (14817674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56803f18fbf98ef3b4b8cf28ea1ce1f845d420046614ec334b3f2d116ae9878b`  
		Last Modified: Sat, 14 Apr 2018 05:43:12 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9936b9924c0460c441d697be0e528df9adf11cc7dd43c946a8fb4f844ce8d234`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a7829c8c06c5076437188a6f56c0647243ad8e9507e9fa45be172c32fcc3f0`  
		Last Modified: Sat, 14 Apr 2018 05:43:29 GMT  
		Size: 60.1 MB (60146928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9933a17ab7f3365e2e5b122e04f37cae4b4506ed1d77091389769a5311cc9cd8`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad37a50a25768b0b07b33e96efb6256c803a35be1706e212a6d9fb6b101916c`  
		Last Modified: Sat, 14 Apr 2018 05:43:14 GMT  
		Size: 2.4 MB (2393650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97554ee12a7feb1f702a786492765916a8840ed3860caab069a1ecafec5fba4c`  
		Last Modified: Sat, 14 Apr 2018 05:43:29 GMT  
		Size: 78.8 MB (78765974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f26efbb452ecc6ee486f89d24e505c7305434ec8a845f7ba79a480eca6cd43`  
		Last Modified: Sat, 14 Apr 2018 05:43:11 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; ppc64le

```console
$ docker pull redmine@sha256:c849e486de695715a68991ece6e8bb20cb0f3b151db04a4e2f0be2c79ef65d40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250241492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc0d5bbff61a084e6007c924eedf8a5bf7d8d4d0e2cf9c68a78f7556856b8b4`
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
# Mon, 02 Apr 2018 18:53:39 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 18:53:41 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 18:53:43 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 18:53:44 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 19:02:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 19:02:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 19:02:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 19:02:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 19:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 19:02:56 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 19:54:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 19:55:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:55:21 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 19:55:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 19:55:29 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 19:55:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 19:59:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:59:06 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 19:59:08 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:43:02 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 12 Apr 2018 08:43:03 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 12 Apr 2018 08:43:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 08:50:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:50:14 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 08:50:15 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 08:50:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:50:18 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 08:50:20 GMT
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
	-	`sha256:6e544887ec4077ed6486cf73fc40afda0da4983b305eedff08998229abdd7bb0`  
		Last Modified: Mon, 02 Apr 2018 19:19:15 GMT  
		Size: 32.9 MB (32883116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c5a9a3f7c894975120d25eacd34bdeb0c04363231c42a94ccdbfe5730a263a`  
		Last Modified: Mon, 02 Apr 2018 19:19:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83801aa50e4f7199046f0da7ca3881e538301a1220770d1d77e8dff278ceb8b8`  
		Last Modified: Mon, 02 Apr 2018 20:27:13 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14595577fa1f07e0fa6f78494ea745c33eae11286cee152fda538a0f462d6a0f`  
		Last Modified: Mon, 02 Apr 2018 20:27:15 GMT  
		Size: 14.7 MB (14720361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a4f4809212a2c32c7f1e0903c1650f57a3680976893ae578fda2b10ec76c42`  
		Last Modified: Mon, 02 Apr 2018 20:27:11 GMT  
		Size: 469.9 KB (469853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1eb0054c8e49d6c20bff733c7b0af3dce6c62a3fcd1e9919674f4187d114b2`  
		Last Modified: Mon, 02 Apr 2018 20:27:10 GMT  
		Size: 8.6 KB (8639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc72eea2ffd3febfc16c1e5a6c42ab6c67a956cedebf6ae35d1655f397de6d42`  
		Last Modified: Mon, 02 Apr 2018 20:27:27 GMT  
		Size: 58.1 MB (58132769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a5f1bcdc235c5f46b6b548f02cb453a744116f41842f0f6bdca41a3a747c60`  
		Last Modified: Mon, 02 Apr 2018 20:27:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2646a7a474f0842f5941c9a7a99b5e75e815fce1b9a93a2733cffdfbaf3f8a1f`  
		Last Modified: Thu, 12 Apr 2018 08:51:52 GMT  
		Size: 2.4 MB (2394069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c08587fc25d1a9229f7421a97b2dfa99db4ceb44fdc59a85bec8a3bc60dd41`  
		Last Modified: Thu, 12 Apr 2018 08:52:06 GMT  
		Size: 79.7 MB (79653698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61d7854115d1d4b20480a55054f7c37b202a6b83963feffe6b63a8421e93c2d`  
		Last Modified: Thu, 12 Apr 2018 08:51:50 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.7` - linux; s390x

```console
$ docker pull redmine@sha256:bf1aa522b57d727a9ba18d4a502430a4ead68cf720158cec572f48d5c5b7c175
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256969282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396bf5f1a1fca0067e47a305c7b04711213f8d1ecef24c3af31c2165f8a20a0d`
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
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBY_VERSION=2.2.10
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Mon, 02 Apr 2018 17:52:53 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:52:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:55:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:55:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:55:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:55:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:55:19 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:24:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:24:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:24:51 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:24:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:24:58 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:25:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:25:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:25:45 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:25:45 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 12:11:39 GMT
ENV REDMINE_VERSION=3.3.7
# Thu, 12 Apr 2018 12:11:39 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Thu, 12 Apr 2018 12:11:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:14:08 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:14:09 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:14:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:14:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:14:09 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:14:09 GMT
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
	-	`sha256:c558c6d10fd441cc8c018a03609ee282a70f42763c44291481e7114420b92a4a`  
		Last Modified: Mon, 02 Apr 2018 18:04:39 GMT  
		Size: 35.5 MB (35542982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78d3cd2608e6bb56f8cd57923fe1119eadc48e71f0e8cf7fb874ff87d32ef8c`  
		Last Modified: Mon, 02 Apr 2018 18:04:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e56e7d61b5cafc8961e5a58ae4a6a88f2fd2347616e88a4d2713881ab08f14`  
		Last Modified: Mon, 02 Apr 2018 18:32:36 GMT  
		Size: 2.1 KB (2107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bec803b8a1b359196ca9007081036408cab184646994f0d85b7b3b4a895158`  
		Last Modified: Mon, 02 Apr 2018 18:32:39 GMT  
		Size: 14.8 MB (14815213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94e26e6b848b15185d168db50bb4f60246b285b8e2f6197e34fb0e38f76aa67`  
		Last Modified: Mon, 02 Apr 2018 18:32:34 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9e0f09e73ae22019c0542ef1c13c3068942eb069f366928071614775c02cbd`  
		Last Modified: Mon, 02 Apr 2018 18:32:34 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b77d9263655d6ec61d9545b4919971aee2224f6c8c8d697a6bb0a3e01446ac7`  
		Last Modified: Mon, 02 Apr 2018 18:32:48 GMT  
		Size: 59.1 MB (59111160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75fc6c0b795877865e7756acbc02b45620c89d0892182d8c1246286727723f14`  
		Last Modified: Mon, 02 Apr 2018 18:32:33 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6675350159a88e295210e1939ab5e7b2e32332195b6a48eb56e0f89d46f1b1`  
		Last Modified: Thu, 12 Apr 2018 12:15:17 GMT  
		Size: 2.4 MB (2393658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2497a778c6dab2d5ea76a6e12237d5e88d7e62d520d10cd0c1aeb099f2a7e03b`  
		Last Modified: Thu, 12 Apr 2018 12:15:28 GMT  
		Size: 81.8 MB (81830815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6638a9a4ef931027ea2e61c31f6b8043b71481a1e4101882ed812d037918a734`  
		Last Modified: Thu, 12 Apr 2018 12:15:16 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.7-passenger`

```console
$ docker pull redmine@sha256:d907341467a27be08a93411c8a2c7016d2bc20afe0e38369334bf7c663f54d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.7-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:b0b4ad3ab6f12df361fa1c2690078d17daaa882d22bc3e560acdc48c40e59fe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273845231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa57d36de5761e553a16015d51bcabb1dd08bc425a74b3e357d171f5077e1fca`
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
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_VERSION=2.2.10
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 18:48:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 18:51:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 18:51:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 18:51:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 18:51:26 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:41:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:41:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:41:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:41:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:41:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:41:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:42:19 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:42:19 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:18:03 GMT
ENV REDMINE_VERSION=3.3.7
# Wed, 11 Apr 2018 18:18:03 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Wed, 11 Apr 2018 18:18:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:20:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:20:33 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:20:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:20:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:20:34 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:20:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 11 Apr 2018 18:28:15 GMT
ENV PASSENGER_VERSION=5.2.3
# Wed, 11 Apr 2018 18:28:45 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:28:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 11 Apr 2018 18:28:47 GMT
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
	-	`sha256:578ee768451cf3f9e7efc3a7c59d7cd6a0ae15acb993a437d091b3e0e6084e30`  
		Last Modified: Thu, 29 Mar 2018 21:01:24 GMT  
		Size: 31.9 MB (31892062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234f3ceb15646e4f6410441babc36899b925fb7286c6113d2e64491df39f440`  
		Last Modified: Thu, 29 Mar 2018 21:01:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4b3dc7eeff772e8eb30707685d0972220342f769f0eaa812a26cd30b472d8a`  
		Last Modified: Thu, 29 Mar 2018 23:07:01 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0681e8f540d612c7edb7d4e21b132068c1b5d738b03f6082151abc807f2faffa`  
		Last Modified: Thu, 29 Mar 2018 23:07:04 GMT  
		Size: 14.7 MB (14650519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68bdfc7caa768c32b344daec9ebf389c39669b2a77d393ac50de497b2b905d0`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9733ab947ec60f22dce16dd1882d4795850a6612fe8be4e85027b9d919527d`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb00870dc6028cc8631f196864be23507114111526c4665348cdece7e86516ca`  
		Last Modified: Thu, 29 Mar 2018 23:07:15 GMT  
		Size: 59.3 MB (59272052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764ec51c5afd64e88110d41378006a02d57198c18dfad80fd573ccd71d061db`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d82567a4628484eb717f56b2a9b1dcbfef4eb59f5726c73591f0fee239227`  
		Last Modified: Wed, 11 Apr 2018 18:32:43 GMT  
		Size: 2.4 MB (2393661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b17e7fa93af6942d8d9503f004eca273a0f85df9bd1ec2c253ec31a0551609c`  
		Last Modified: Wed, 11 Apr 2018 18:33:02 GMT  
		Size: 79.5 MB (79496951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615415f0e2a54b190a2068465bcd15c545b6c3159714d7766816836c53532cb6`  
		Last Modified: Wed, 11 Apr 2018 18:32:41 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b592c1079b46ac201a55f609d839499ec7d37148db40f40f2d7898942db642a5`  
		Last Modified: Wed, 11 Apr 2018 18:33:53 GMT  
		Size: 18.5 MB (18459857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8c9fb45a5cb3b9abaef6d5bf97127cf5d39d62bf417ed0675e915e3cf09cdf`  
		Last Modified: Wed, 11 Apr 2018 18:33:49 GMT  
		Size: 4.4 MB (4372069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:d907341467a27be08a93411c8a2c7016d2bc20afe0e38369334bf7c663f54d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:b0b4ad3ab6f12df361fa1c2690078d17daaa882d22bc3e560acdc48c40e59fe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273845231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa57d36de5761e553a16015d51bcabb1dd08bc425a74b3e357d171f5077e1fca`
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
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_VERSION=2.2.10
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBY_DOWNLOAD_SHA256=bf77bcb7e6666ccae8d0882ea12b05f382f963f0a9a5285a328760c06a9ab650
# Thu, 29 Mar 2018 18:48:29 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 18:48:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 18:51:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 18:51:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 18:51:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 18:51:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 18:51:26 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:41:07 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:41:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:41:28 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:41:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:41:33 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:41:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:42:19 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:42:19 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:18:03 GMT
ENV REDMINE_VERSION=3.3.7
# Wed, 11 Apr 2018 18:18:03 GMT
ENV REDMINE_DOWNLOAD_MD5=cc51fa69b4a15dc44ff7f1b9d7cb0c30
# Wed, 11 Apr 2018 18:18:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:20:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:20:33 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:20:33 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:20:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:20:34 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:20:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 11 Apr 2018 18:28:15 GMT
ENV PASSENGER_VERSION=5.2.3
# Wed, 11 Apr 2018 18:28:45 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:28:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 11 Apr 2018 18:28:47 GMT
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
	-	`sha256:578ee768451cf3f9e7efc3a7c59d7cd6a0ae15acb993a437d091b3e0e6084e30`  
		Last Modified: Thu, 29 Mar 2018 21:01:24 GMT  
		Size: 31.9 MB (31892062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234f3ceb15646e4f6410441babc36899b925fb7286c6113d2e64491df39f440`  
		Last Modified: Thu, 29 Mar 2018 21:01:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4b3dc7eeff772e8eb30707685d0972220342f769f0eaa812a26cd30b472d8a`  
		Last Modified: Thu, 29 Mar 2018 23:07:01 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0681e8f540d612c7edb7d4e21b132068c1b5d738b03f6082151abc807f2faffa`  
		Last Modified: Thu, 29 Mar 2018 23:07:04 GMT  
		Size: 14.7 MB (14650519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68bdfc7caa768c32b344daec9ebf389c39669b2a77d393ac50de497b2b905d0`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9733ab947ec60f22dce16dd1882d4795850a6612fe8be4e85027b9d919527d`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb00870dc6028cc8631f196864be23507114111526c4665348cdece7e86516ca`  
		Last Modified: Thu, 29 Mar 2018 23:07:15 GMT  
		Size: 59.3 MB (59272052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4764ec51c5afd64e88110d41378006a02d57198c18dfad80fd573ccd71d061db`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d82567a4628484eb717f56b2a9b1dcbfef4eb59f5726c73591f0fee239227`  
		Last Modified: Wed, 11 Apr 2018 18:32:43 GMT  
		Size: 2.4 MB (2393661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b17e7fa93af6942d8d9503f004eca273a0f85df9bd1ec2c253ec31a0551609c`  
		Last Modified: Wed, 11 Apr 2018 18:33:02 GMT  
		Size: 79.5 MB (79496951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615415f0e2a54b190a2068465bcd15c545b6c3159714d7766816836c53532cb6`  
		Last Modified: Wed, 11 Apr 2018 18:32:41 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b592c1079b46ac201a55f609d839499ec7d37148db40f40f2d7898942db642a5`  
		Last Modified: Wed, 11 Apr 2018 18:33:53 GMT  
		Size: 18.5 MB (18459857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8c9fb45a5cb3b9abaef6d5bf97127cf5d39d62bf417ed0675e915e3cf09cdf`  
		Last Modified: Wed, 11 Apr 2018 18:33:49 GMT  
		Size: 4.4 MB (4372069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:b9cc405136d72dfa7d7579bff8faeab266bd0acb1b4a890c8bf31c7aff289bc5
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
$ docker pull redmine@sha256:c78f5df0d23cc31742fa8a1c5cf52c02a863920ebd2f68569f1e2916b2e12f80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260368380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887149aec1cdf33df773f969d444d88dc3092e6c1c72f8936aa82bb96dd33d74`
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
# Thu, 29 Mar 2018 17:29:40 GMT
ENV RUBY_VERSION=2.4.4
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 17:29:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 17:32:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 17:32:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 17:32:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 17:32:57 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:23:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:24:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:24:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:24:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:25:12 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:25:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_VERSION=3.4.5
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Wed, 11 Apr 2018 18:12:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:16:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:16:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:16:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:16:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:16:01 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:16:02 GMT
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
	-	`sha256:2f114c079c5c56150a9793db1c7cf076074db15230225378244a6f127edb8a4f`  
		Last Modified: Thu, 29 Mar 2018 19:58:12 GMT  
		Size: 21.3 MB (21286461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d22406c4c57a9fc9e7cdf7ab197a39036e5dafbdf6153657e488f281d7b052`  
		Last Modified: Thu, 29 Mar 2018 19:58:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d980b36e61712037537af839fdc8acb362ad1a9a77336ea0eff886b8b877a621`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff832249133f8854b188ac696e70c686d0543eb6bd4ab05c0334411fdceac5`  
		Last Modified: Thu, 29 Mar 2018 22:31:50 GMT  
		Size: 14.7 MB (14650634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0402e8d92900b46f970320ba976eb70c751c0b52a88da58e307e37f637e520`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42096e160fa0d0ba869c5228c1f2e68b540ef60fc3dfdea8349826bbd27c676`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb7615572f0f0b82fd2825bbaaf1230f55f2dfcee3137feac3cb03b25cfb0b`  
		Last Modified: Thu, 29 Mar 2018 22:32:01 GMT  
		Size: 59.3 MB (59271553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfff2eac932158a73bae3bbf991a5a8e11df46c7d6c72a70d11cec447c648290`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245ec8355ca1d4449cff210950d642f782cbcda37028e55ed2dbc3f04f35e0df`  
		Last Modified: Wed, 11 Apr 2018 18:29:18 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31533a69d3ad5a3408747f34e443edb9f8c6bd41d57e4158cf1d943fdabc2f9e`  
		Last Modified: Wed, 11 Apr 2018 18:29:43 GMT  
		Size: 99.4 MB (99396158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f49cb81a17a222e06eb025df5ed3a923b5605a8156e5cc0b9bc38541c1b85`  
		Last Modified: Wed, 11 Apr 2018 18:29:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:065203d44f933f22dcad2e8314dc4f4d104f63aa0439a993b5bb0b000ab1557d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253677273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04839f165302cd8f910533c27d71d99db464ed94c3859861076bc0f9868e8a64`
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
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:05:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:11:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:11:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:11:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:11:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:11:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:11:37 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:00:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:01:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:01:10 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:01:12 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:01:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:02:14 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:02:15 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:51:44 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 08:51:44 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 08:51:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 08:57:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:57:24 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 08:57:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 08:57:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:57:25 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 08:57:25 GMT
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
	-	`sha256:75f7790ee9300991ccb22ee7b3a21ab78a42fb3d03069de3a293a8b796b3eb71`  
		Last Modified: Mon, 02 Apr 2018 17:42:10 GMT  
		Size: 21.1 MB (21056260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba65f3f58e6449b09074da5753f4fd12c655b3e3c434fa4299cd2a28c969093`  
		Last Modified: Mon, 02 Apr 2018 17:42:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbb0801355fcf21de11b0d3998cf9284af71800b73728d519373f69e2ada8be`  
		Last Modified: Mon, 02 Apr 2018 18:19:15 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e4894a36b0cccae2c3edf7677ff1af9257b0601801c8c3e4ec9ef72a69158`  
		Last Modified: Mon, 02 Apr 2018 18:19:19 GMT  
		Size: 14.3 MB (14347644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18db73123bf197ca6bc5ab2df7f7b8f39429a1fac2cc1d66c57e80ebbb34b9d0`  
		Last Modified: Mon, 02 Apr 2018 18:19:13 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6980fae2e185ce318554b2e4c620f9cc3668520c4e827883cb76dfe36deee0`  
		Last Modified: Mon, 02 Apr 2018 18:19:13 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca18b40dddd42e5642f3c229e21d3671e5b538ad436ff79b3a1b77f558a09c06`  
		Last Modified: Mon, 02 Apr 2018 18:19:32 GMT  
		Size: 56.6 MB (56610820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f51a5a7367725a0b8669dcee1563f0ad46f94c894c5b99a4b56bce67853ac9`  
		Last Modified: Mon, 02 Apr 2018 18:19:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138f744c3c18d058035c0d397eb571637715145d9e746025dc461cce73b21082`  
		Last Modified: Thu, 12 Apr 2018 09:02:51 GMT  
		Size: 2.5 MB (2455983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f52b5d422d129ca363e5fcdfd367e15358ad244bb4190626d666cc59d5745e`  
		Last Modified: Thu, 12 Apr 2018 09:03:22 GMT  
		Size: 98.7 MB (98679803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003f14500ec79e5a08b502bc0b3bb036c6eee6bac8ac2613bcbffdd42301f209`  
		Last Modified: Thu, 12 Apr 2018 09:02:50 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:8d74f7c669f15f68dd4b72c17991732a81c1abdcc4e5e5c2f1dbe3a819616fbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247696591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:582ae6c45375c3c6add551bc3bf0500107b9576b3037df36c88e0dea1198e253`
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
# Mon, 02 Apr 2018 16:58:02 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 16:58:02 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 16:58:03 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 16:58:03 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:03:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:03:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:03:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:03:25 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 17:52:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 17:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:52:40 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 17:52:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 17:52:44 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 17:52:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 17:53:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:53:41 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 17:53:41 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 11:59:28 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 11:59:28 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 11:59:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:04:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:04:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:04:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:05:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:05:00 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:05:00 GMT
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
	-	`sha256:57efc46cb5efbb5f3ab222a236c29cc6035a4565d42e88d5aa215cd8a5063573`  
		Last Modified: Mon, 02 Apr 2018 17:33:00 GMT  
		Size: 20.9 MB (20922327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cddf17c3c85180032cca210dbd0a0fad87206471bdb89404fabb21a83bfbe8`  
		Last Modified: Mon, 02 Apr 2018 17:32:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45e9fa1532e410938c2cc2fb9d1877a8e3fc086a4f2ff3ee0e7477666a64ac3`  
		Last Modified: Mon, 02 Apr 2018 18:09:58 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd254b34b90e256ff548e13131a035c979859f8783fee1622e7276b04feb41da`  
		Last Modified: Mon, 02 Apr 2018 18:10:02 GMT  
		Size: 14.1 MB (14134520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b251f139a15acffcef6333b324957d2baebff82d6d4ab5237d55527c481c0378`  
		Last Modified: Mon, 02 Apr 2018 18:09:57 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157182850bf6e72e8202d4905a2cbd9dc8924b576693cadcf54ba285528c3272`  
		Last Modified: Mon, 02 Apr 2018 18:09:56 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3be2404df7b281b0b36741d8a86d48a4c7d732a1bff7aca0efc65f8cd0e36d8`  
		Last Modified: Mon, 02 Apr 2018 18:10:12 GMT  
		Size: 54.3 MB (54345128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c208050705a17f27fe5b08516b6d045c1d73712a4579405b5e929b8922ce96ca`  
		Last Modified: Mon, 02 Apr 2018 18:09:56 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1895a922873e28401adf1b35e24e137ed4179b544537829bb9d07fc19b79086d`  
		Last Modified: Thu, 12 Apr 2018 12:09:56 GMT  
		Size: 2.5 MB (2455984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d531d111a65c46536edd6ccf46cc25d4b83b4656499050b198b8435a4d223bde`  
		Last Modified: Thu, 12 Apr 2018 12:10:19 GMT  
		Size: 97.9 MB (97863741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9cd43bfe8ffc4a95ed5315eab1328a5ac88bd66979e5bca9cbd8398aa7e9f7`  
		Last Modified: Thu, 12 Apr 2018 12:09:55 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:35e2bf0a39d51a08911b704c073d2247a6c707a5bab5b7854ebb97669f8e3aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252634339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b0385b3a0dc1d12ae61b8ba51fdb072c7b1811a14a8e6712095857396f7f18`
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
# Thu, 15 Mar 2018 02:14:58 GMT
ENV RUBY_MAJOR=2.4
# Mon, 02 Apr 2018 18:12:28 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 18:12:29 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 18:12:30 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 18:12:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 18:21:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 18:21:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 18:21:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 18:21:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 18:21:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 18:21:55 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 20:15:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 20:16:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 20:16:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 20:16:09 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 20:16:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 20:17:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:17:56 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 20:17:56 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 09:08:21 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 09:08:21 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 09:08:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 09:21:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 09:21:51 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 09:21:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 09:21:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 09:22:00 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 09:22:03 GMT
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
	-	`sha256:6a57c0a409c97dd1ae25838ea7b6ec9aed418c6adaceebd65e4394177eda6c64`  
		Last Modified: Mon, 02 Apr 2018 19:45:54 GMT  
		Size: 21.2 MB (21248093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08a95b8cf2c2f836fe2b3b0a7925fd640e3d2ee809421f9041505ef19172647`  
		Last Modified: Mon, 02 Apr 2018 19:45:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52467ca06c09c2f18d4a2df138ca9c35fff2bfc2d5c0e81261c58e1ac9bef526`  
		Last Modified: Mon, 02 Apr 2018 20:53:54 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd29c81b35b11642d05db118de989cba476b47eb72db1d0c7bdbf41248d52c9`  
		Last Modified: Mon, 02 Apr 2018 20:53:57 GMT  
		Size: 14.5 MB (14462784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc0b0b36b1c5703c0d28652065df89c0c5b72f2bc458e95fdf67409c6257c38`  
		Last Modified: Mon, 02 Apr 2018 20:53:53 GMT  
		Size: 468.7 KB (468706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4aa9f237b841871f32f384a05db0d7c7ca330d2ad3419acaa2f3c977a30912`  
		Last Modified: Mon, 02 Apr 2018 20:53:51 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3558d1f4d6aecc7fa2a4a31b76b6554dd3f87975553d2b5e5d65372ea770590`  
		Last Modified: Mon, 02 Apr 2018 20:54:10 GMT  
		Size: 55.8 MB (55794284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8801e07321a85d3ba1123ef242da8ab9ca66d178c5706b8202e1ff2959df1766`  
		Last Modified: Mon, 02 Apr 2018 20:53:50 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3e03f70f3885968c0bd94ed09f21090678940ebb047a00f265b07f065ada33`  
		Last Modified: Thu, 12 Apr 2018 09:38:51 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fabaf89d43ecd509bce93c453d8867283b7365066a658ab53f4e38da68cd2ec`  
		Last Modified: Thu, 12 Apr 2018 09:39:21 GMT  
		Size: 98.9 MB (98903478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa850deb7622fb9cd5d2c34cc1ebe7b620a2681b37f5718332a474826e5bdc69`  
		Last Modified: Thu, 12 Apr 2018 09:38:50 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:8eaf3d8bc8103b91febb5840e44ad88177749825f255916e02dfc6cfd382ea76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263450796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e2b02de2a5b44fed880c4c5cbb42d2fe28da2ed97eed1c0df303faed78ee2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:04:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:04:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 14 Apr 2018 02:04:53 GMT
ENV RUBY_MAJOR=2.4
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 14 Apr 2018 02:04:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 14 Apr 2018 02:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 14 Apr 2018 02:08:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 02:08:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 02:08:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 02:08:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 02:08:45 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:28:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 14 Apr 2018 05:29:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:29:14 GMT
ENV GOSU_VERSION=1.10
# Sat, 14 Apr 2018 05:29:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 14 Apr 2018 05:29:18 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 14 Apr 2018 05:29:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 14 Apr 2018 05:30:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:30:15 GMT
ENV RAILS_ENV=production
# Sat, 14 Apr 2018 05:30:15 GMT
WORKDIR /usr/src/redmine
# Sat, 14 Apr 2018 05:30:15 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 14 Apr 2018 05:30:15 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 14 Apr 2018 05:30:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 14 Apr 2018 05:33:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 14 Apr 2018 05:33:48 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 14 Apr 2018 05:33:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 14 Apr 2018 05:33:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 14 Apr 2018 05:33:49 GMT
EXPOSE 3000/tcp
# Sat, 14 Apr 2018 05:33:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca444cc3943bdd84ca84b9afb84bfda39b93fed03a55cb07ad3bb2179d2587ee`  
		Last Modified: Sat, 14 Apr 2018 02:41:00 GMT  
		Size: 14.6 MB (14649884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1869405bc615943f828b387e40f9c5de545349cddaabc42ac71ed9f323f893bb`  
		Last Modified: Sat, 14 Apr 2018 02:40:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8625490e27cfa172ed2429c911fcaf8442f967a157211dfb771e85b14ff3916a`  
		Last Modified: Sat, 14 Apr 2018 02:41:03 GMT  
		Size: 20.3 MB (20284075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64803bff468087aca06e131527a5447efd1b96f0c758d49fc0df698b311a6c79`  
		Last Modified: Sat, 14 Apr 2018 02:40:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d210e8895e4be3983b548c8c856e6c1de44a02e728705b12acafa3c46c904c4d`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8988f264e051a9f61b8aacf6e32ec2422c339abb3802d525b7265b9d318009`  
		Last Modified: Sat, 14 Apr 2018 05:42:29 GMT  
		Size: 14.8 MB (14817641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6bbc080a720cea62128064f396569625a7e83524ad8682397d303fde1bd4b9`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 480.6 KB (480575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcec09284827ddc3b119c96eb98fc28918e93c39d4087d1d8c73046fa9aac4`  
		Last Modified: Sat, 14 Apr 2018 05:42:24 GMT  
		Size: 8.6 KB (8568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c9e823500605eccc5be71f78d4c0a10e255f56030af6206382d3af3969bedd`  
		Last Modified: Sat, 14 Apr 2018 05:42:46 GMT  
		Size: 60.1 MB (60146745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df68907aaabfba403825682daf6b840043048ad8a46a242397925b4babce9f09`  
		Last Modified: Sat, 14 Apr 2018 05:42:24 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc108b9da01fbd779175fee54a97030cb8d6124b06bd66bf485cc3a8943248e5`  
		Last Modified: Sat, 14 Apr 2018 05:42:30 GMT  
		Size: 2.5 MB (2455509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b200d252391aa0b516ba747dc6c744c71f113331f904fefbd4414c1b79ff277`  
		Last Modified: Sat, 14 Apr 2018 05:42:52 GMT  
		Size: 97.8 MB (97815780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f767ae7964ec1b881aadacf75ef315f3b344dec456550a141084101daddf935`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:16a8f47378a20da3f173f12d7a808174dfd6f2e1fe04b2acd6b7ea046b72e775
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259576325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0d2bb2f251e8056b0432df0f9412217c069f4312fb05549d93e390d24f81fb`
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
# Mon, 02 Apr 2018 17:59:10 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:59:11 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:59:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:59:14 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 18:08:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 18:08:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 18:08:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 18:08:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 18:08:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 18:08:44 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 19:35:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 19:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:36:44 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 19:36:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 19:36:52 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 19:36:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 19:40:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:40:51 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 19:40:53 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:34:14 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 08:34:14 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 08:34:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 08:42:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:42:48 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 08:42:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 08:42:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:42:51 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 08:42:52 GMT
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
	-	`sha256:9ce1350e989fc2f796f8918ebc52465666f86d9d4687f0ee31cd7fd6f12a7ec0`  
		Last Modified: Mon, 02 Apr 2018 19:12:55 GMT  
		Size: 21.7 MB (21741464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e5cfb051829a21112a4688142c876fcc6094a374f6e8e936f5e16c66f8d0f2`  
		Last Modified: Mon, 02 Apr 2018 19:12:51 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1453dde26840c440a4570882f4b8d9cf67da3ff5f89e9ebac34290a460c817`  
		Last Modified: Mon, 02 Apr 2018 20:26:14 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91d22f8da73d6eb0d0610f0936dfd579731b09a664ac994e3e2783ec9bbc6c5`  
		Last Modified: Mon, 02 Apr 2018 20:26:15 GMT  
		Size: 14.7 MB (14720330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147e661b93c84e721620331f084fc3d172a51c445b7297880ebcebb0b3be5307`  
		Last Modified: Mon, 02 Apr 2018 20:26:11 GMT  
		Size: 469.9 KB (469850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac1fee42e9a058793822d8a3e90b82c2b670ef1247d227af18aae0a444d585a`  
		Last Modified: Mon, 02 Apr 2018 20:26:11 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d94cee04bced314d07d1dce1a4f46bc642bbca132df1d38ff3c29265f77488a`  
		Last Modified: Mon, 02 Apr 2018 20:26:18 GMT  
		Size: 58.1 MB (58132661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138535c3140b8742488d6175ddb05945805c478397c1ad706e56b6cfd07a69c`  
		Last Modified: Mon, 02 Apr 2018 20:26:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f0143f9572d6c3dbc5adce45a3960803fef2da3a86a1e6dbfb9b1122b78b8b`  
		Last Modified: Thu, 12 Apr 2018 08:50:44 GMT  
		Size: 2.5 MB (2455985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11cd9f85f5f05c8e28b99246619a2ecfe91b4d57d63581b09ced301a22941cd`  
		Last Modified: Thu, 12 Apr 2018 08:51:06 GMT  
		Size: 100.1 MB (100068411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177de89817615004a127114d52312c4e0ae394e2604ceeba3b2c08c13ca6f568`  
		Last Modified: Thu, 12 Apr 2018 08:50:42 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:ebfa11ae42fc656e076e2b8c335ec89549f91962241228a0a76a5f2107816b98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264526259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824baa78510a820c4091ba8389340d31b247b7ffd71fdc438052665a3353d001`
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
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:27:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:31:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:31:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:31:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:31:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:31:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:31:29 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:20:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:20:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:20:43 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:20:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:20:46 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:20:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:21:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:21:27 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:21:27 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 12:08:33 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 12:08:33 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 12:08:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:11:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:11:28 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:11:29 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:11:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:11:29 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:11:29 GMT
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
	-	`sha256:38f3338c8bb939b5fd61e1edd959256388a26bfcc3bfa8742d5de4f933e32b92`  
		Last Modified: Mon, 02 Apr 2018 18:00:52 GMT  
		Size: 21.7 MB (21689661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe90b7414be9bea2bc8bccc46a195f279ff5fa26f2fe4d87f52b55ce7c2807`  
		Last Modified: Mon, 02 Apr 2018 18:00:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3626a6b480f03279ab0fbfa1cc1154fdabff130c14d68bb1937bd4179e72ed86`  
		Last Modified: Mon, 02 Apr 2018 18:31:51 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04036ced3d3338ecec149375d94d9228bf0f344523f9cb47285cc5e9920705c6`  
		Last Modified: Mon, 02 Apr 2018 18:31:53 GMT  
		Size: 14.8 MB (14815240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878803a486304e0f9a49205647067608af04c1537ac8253444819f805e4aac24`  
		Last Modified: Mon, 02 Apr 2018 18:31:49 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ec29820c6edaa14f56347b6cf10a6eaaf0dbac5c1dd3dd27d46b8fcf4f9cd`  
		Last Modified: Mon, 02 Apr 2018 18:31:49 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dbba4cdd6101248ee23346e6d76bcaf68a68612d4b198c411b4c71fb5dd07c`  
		Last Modified: Mon, 02 Apr 2018 18:32:01 GMT  
		Size: 59.1 MB (59109864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127d27dd743727185cb54c4cb3ddd5b9f0a2bb3dc54af4ff865746f269e18c1e`  
		Last Modified: Mon, 02 Apr 2018 18:31:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1941bdfb901d67113482a8c1c4c57e545d22778b844ddc4cfda085a749d282`  
		Last Modified: Thu, 12 Apr 2018 12:14:39 GMT  
		Size: 2.5 MB (2455524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ce07121868a9ac77dec13d27a121d0374ccbc04942f30f92a0decc1bbf21fd`  
		Last Modified: Thu, 12 Apr 2018 12:14:54 GMT  
		Size: 103.2 MB (103180518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb16a10c965be8effdafa90dabb2cf7aa1bd67169dbc12f78fd45173d918eb47`  
		Last Modified: Thu, 12 Apr 2018 12:14:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.5`

```console
$ docker pull redmine@sha256:b9cc405136d72dfa7d7579bff8faeab266bd0acb1b4a890c8bf31c7aff289bc5
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
$ docker pull redmine@sha256:c78f5df0d23cc31742fa8a1c5cf52c02a863920ebd2f68569f1e2916b2e12f80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260368380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887149aec1cdf33df773f969d444d88dc3092e6c1c72f8936aa82bb96dd33d74`
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
# Thu, 29 Mar 2018 17:29:40 GMT
ENV RUBY_VERSION=2.4.4
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 17:29:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 17:32:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 17:32:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 17:32:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 17:32:57 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:23:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:24:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:24:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:24:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:25:12 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:25:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_VERSION=3.4.5
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Wed, 11 Apr 2018 18:12:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:16:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:16:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:16:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:16:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:16:01 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:16:02 GMT
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
	-	`sha256:2f114c079c5c56150a9793db1c7cf076074db15230225378244a6f127edb8a4f`  
		Last Modified: Thu, 29 Mar 2018 19:58:12 GMT  
		Size: 21.3 MB (21286461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d22406c4c57a9fc9e7cdf7ab197a39036e5dafbdf6153657e488f281d7b052`  
		Last Modified: Thu, 29 Mar 2018 19:58:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d980b36e61712037537af839fdc8acb362ad1a9a77336ea0eff886b8b877a621`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff832249133f8854b188ac696e70c686d0543eb6bd4ab05c0334411fdceac5`  
		Last Modified: Thu, 29 Mar 2018 22:31:50 GMT  
		Size: 14.7 MB (14650634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0402e8d92900b46f970320ba976eb70c751c0b52a88da58e307e37f637e520`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42096e160fa0d0ba869c5228c1f2e68b540ef60fc3dfdea8349826bbd27c676`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb7615572f0f0b82fd2825bbaaf1230f55f2dfcee3137feac3cb03b25cfb0b`  
		Last Modified: Thu, 29 Mar 2018 22:32:01 GMT  
		Size: 59.3 MB (59271553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfff2eac932158a73bae3bbf991a5a8e11df46c7d6c72a70d11cec447c648290`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245ec8355ca1d4449cff210950d642f782cbcda37028e55ed2dbc3f04f35e0df`  
		Last Modified: Wed, 11 Apr 2018 18:29:18 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31533a69d3ad5a3408747f34e443edb9f8c6bd41d57e4158cf1d943fdabc2f9e`  
		Last Modified: Wed, 11 Apr 2018 18:29:43 GMT  
		Size: 99.4 MB (99396158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f49cb81a17a222e06eb025df5ed3a923b5605a8156e5cc0b9bc38541c1b85`  
		Last Modified: Wed, 11 Apr 2018 18:29:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; arm variant v5

```console
$ docker pull redmine@sha256:065203d44f933f22dcad2e8314dc4f4d104f63aa0439a993b5bb0b000ab1557d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253677273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04839f165302cd8f910533c27d71d99db464ed94c3859861076bc0f9868e8a64`
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
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:05:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:11:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:11:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:11:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:11:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:11:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:11:37 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:00:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:01:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:01:10 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:01:12 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:01:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:02:14 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:02:15 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:51:44 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 08:51:44 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 08:51:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 08:57:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:57:24 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 08:57:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 08:57:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:57:25 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 08:57:25 GMT
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
	-	`sha256:75f7790ee9300991ccb22ee7b3a21ab78a42fb3d03069de3a293a8b796b3eb71`  
		Last Modified: Mon, 02 Apr 2018 17:42:10 GMT  
		Size: 21.1 MB (21056260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba65f3f58e6449b09074da5753f4fd12c655b3e3c434fa4299cd2a28c969093`  
		Last Modified: Mon, 02 Apr 2018 17:42:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbb0801355fcf21de11b0d3998cf9284af71800b73728d519373f69e2ada8be`  
		Last Modified: Mon, 02 Apr 2018 18:19:15 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e4894a36b0cccae2c3edf7677ff1af9257b0601801c8c3e4ec9ef72a69158`  
		Last Modified: Mon, 02 Apr 2018 18:19:19 GMT  
		Size: 14.3 MB (14347644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18db73123bf197ca6bc5ab2df7f7b8f39429a1fac2cc1d66c57e80ebbb34b9d0`  
		Last Modified: Mon, 02 Apr 2018 18:19:13 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6980fae2e185ce318554b2e4c620f9cc3668520c4e827883cb76dfe36deee0`  
		Last Modified: Mon, 02 Apr 2018 18:19:13 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca18b40dddd42e5642f3c229e21d3671e5b538ad436ff79b3a1b77f558a09c06`  
		Last Modified: Mon, 02 Apr 2018 18:19:32 GMT  
		Size: 56.6 MB (56610820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f51a5a7367725a0b8669dcee1563f0ad46f94c894c5b99a4b56bce67853ac9`  
		Last Modified: Mon, 02 Apr 2018 18:19:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138f744c3c18d058035c0d397eb571637715145d9e746025dc461cce73b21082`  
		Last Modified: Thu, 12 Apr 2018 09:02:51 GMT  
		Size: 2.5 MB (2455983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f52b5d422d129ca363e5fcdfd367e15358ad244bb4190626d666cc59d5745e`  
		Last Modified: Thu, 12 Apr 2018 09:03:22 GMT  
		Size: 98.7 MB (98679803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003f14500ec79e5a08b502bc0b3bb036c6eee6bac8ac2613bcbffdd42301f209`  
		Last Modified: Thu, 12 Apr 2018 09:02:50 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; arm variant v7

```console
$ docker pull redmine@sha256:8d74f7c669f15f68dd4b72c17991732a81c1abdcc4e5e5c2f1dbe3a819616fbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247696591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:582ae6c45375c3c6add551bc3bf0500107b9576b3037df36c88e0dea1198e253`
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
# Mon, 02 Apr 2018 16:58:02 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 16:58:02 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 16:58:03 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 16:58:03 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:03:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:03:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:03:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:03:25 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 17:52:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 17:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:52:40 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 17:52:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 17:52:44 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 17:52:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 17:53:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:53:41 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 17:53:41 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 11:59:28 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 11:59:28 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 11:59:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:04:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:04:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:04:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:05:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:05:00 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:05:00 GMT
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
	-	`sha256:57efc46cb5efbb5f3ab222a236c29cc6035a4565d42e88d5aa215cd8a5063573`  
		Last Modified: Mon, 02 Apr 2018 17:33:00 GMT  
		Size: 20.9 MB (20922327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cddf17c3c85180032cca210dbd0a0fad87206471bdb89404fabb21a83bfbe8`  
		Last Modified: Mon, 02 Apr 2018 17:32:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45e9fa1532e410938c2cc2fb9d1877a8e3fc086a4f2ff3ee0e7477666a64ac3`  
		Last Modified: Mon, 02 Apr 2018 18:09:58 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd254b34b90e256ff548e13131a035c979859f8783fee1622e7276b04feb41da`  
		Last Modified: Mon, 02 Apr 2018 18:10:02 GMT  
		Size: 14.1 MB (14134520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b251f139a15acffcef6333b324957d2baebff82d6d4ab5237d55527c481c0378`  
		Last Modified: Mon, 02 Apr 2018 18:09:57 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157182850bf6e72e8202d4905a2cbd9dc8924b576693cadcf54ba285528c3272`  
		Last Modified: Mon, 02 Apr 2018 18:09:56 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3be2404df7b281b0b36741d8a86d48a4c7d732a1bff7aca0efc65f8cd0e36d8`  
		Last Modified: Mon, 02 Apr 2018 18:10:12 GMT  
		Size: 54.3 MB (54345128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c208050705a17f27fe5b08516b6d045c1d73712a4579405b5e929b8922ce96ca`  
		Last Modified: Mon, 02 Apr 2018 18:09:56 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1895a922873e28401adf1b35e24e137ed4179b544537829bb9d07fc19b79086d`  
		Last Modified: Thu, 12 Apr 2018 12:09:56 GMT  
		Size: 2.5 MB (2455984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d531d111a65c46536edd6ccf46cc25d4b83b4656499050b198b8435a4d223bde`  
		Last Modified: Thu, 12 Apr 2018 12:10:19 GMT  
		Size: 97.9 MB (97863741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9cd43bfe8ffc4a95ed5315eab1328a5ac88bd66979e5bca9cbd8398aa7e9f7`  
		Last Modified: Thu, 12 Apr 2018 12:09:55 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:35e2bf0a39d51a08911b704c073d2247a6c707a5bab5b7854ebb97669f8e3aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252634339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b0385b3a0dc1d12ae61b8ba51fdb072c7b1811a14a8e6712095857396f7f18`
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
# Thu, 15 Mar 2018 02:14:58 GMT
ENV RUBY_MAJOR=2.4
# Mon, 02 Apr 2018 18:12:28 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 18:12:29 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 18:12:30 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 18:12:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 18:21:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 18:21:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 18:21:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 18:21:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 18:21:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 18:21:55 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 20:15:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 20:16:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 20:16:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 20:16:09 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 20:16:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 20:17:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:17:56 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 20:17:56 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 09:08:21 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 09:08:21 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 09:08:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 09:21:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 09:21:51 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 09:21:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 09:21:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 09:22:00 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 09:22:03 GMT
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
	-	`sha256:6a57c0a409c97dd1ae25838ea7b6ec9aed418c6adaceebd65e4394177eda6c64`  
		Last Modified: Mon, 02 Apr 2018 19:45:54 GMT  
		Size: 21.2 MB (21248093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08a95b8cf2c2f836fe2b3b0a7925fd640e3d2ee809421f9041505ef19172647`  
		Last Modified: Mon, 02 Apr 2018 19:45:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52467ca06c09c2f18d4a2df138ca9c35fff2bfc2d5c0e81261c58e1ac9bef526`  
		Last Modified: Mon, 02 Apr 2018 20:53:54 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd29c81b35b11642d05db118de989cba476b47eb72db1d0c7bdbf41248d52c9`  
		Last Modified: Mon, 02 Apr 2018 20:53:57 GMT  
		Size: 14.5 MB (14462784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc0b0b36b1c5703c0d28652065df89c0c5b72f2bc458e95fdf67409c6257c38`  
		Last Modified: Mon, 02 Apr 2018 20:53:53 GMT  
		Size: 468.7 KB (468706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4aa9f237b841871f32f384a05db0d7c7ca330d2ad3419acaa2f3c977a30912`  
		Last Modified: Mon, 02 Apr 2018 20:53:51 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3558d1f4d6aecc7fa2a4a31b76b6554dd3f87975553d2b5e5d65372ea770590`  
		Last Modified: Mon, 02 Apr 2018 20:54:10 GMT  
		Size: 55.8 MB (55794284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8801e07321a85d3ba1123ef242da8ab9ca66d178c5706b8202e1ff2959df1766`  
		Last Modified: Mon, 02 Apr 2018 20:53:50 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3e03f70f3885968c0bd94ed09f21090678940ebb047a00f265b07f065ada33`  
		Last Modified: Thu, 12 Apr 2018 09:38:51 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fabaf89d43ecd509bce93c453d8867283b7365066a658ab53f4e38da68cd2ec`  
		Last Modified: Thu, 12 Apr 2018 09:39:21 GMT  
		Size: 98.9 MB (98903478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa850deb7622fb9cd5d2c34cc1ebe7b620a2681b37f5718332a474826e5bdc69`  
		Last Modified: Thu, 12 Apr 2018 09:38:50 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; 386

```console
$ docker pull redmine@sha256:8eaf3d8bc8103b91febb5840e44ad88177749825f255916e02dfc6cfd382ea76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263450796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e2b02de2a5b44fed880c4c5cbb42d2fe28da2ed97eed1c0df303faed78ee2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:04:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:04:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 14 Apr 2018 02:04:53 GMT
ENV RUBY_MAJOR=2.4
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 14 Apr 2018 02:04:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 14 Apr 2018 02:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 14 Apr 2018 02:08:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 02:08:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 02:08:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 02:08:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 02:08:45 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:28:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 14 Apr 2018 05:29:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:29:14 GMT
ENV GOSU_VERSION=1.10
# Sat, 14 Apr 2018 05:29:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 14 Apr 2018 05:29:18 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 14 Apr 2018 05:29:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 14 Apr 2018 05:30:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:30:15 GMT
ENV RAILS_ENV=production
# Sat, 14 Apr 2018 05:30:15 GMT
WORKDIR /usr/src/redmine
# Sat, 14 Apr 2018 05:30:15 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 14 Apr 2018 05:30:15 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 14 Apr 2018 05:30:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 14 Apr 2018 05:33:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 14 Apr 2018 05:33:48 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 14 Apr 2018 05:33:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 14 Apr 2018 05:33:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 14 Apr 2018 05:33:49 GMT
EXPOSE 3000/tcp
# Sat, 14 Apr 2018 05:33:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca444cc3943bdd84ca84b9afb84bfda39b93fed03a55cb07ad3bb2179d2587ee`  
		Last Modified: Sat, 14 Apr 2018 02:41:00 GMT  
		Size: 14.6 MB (14649884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1869405bc615943f828b387e40f9c5de545349cddaabc42ac71ed9f323f893bb`  
		Last Modified: Sat, 14 Apr 2018 02:40:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8625490e27cfa172ed2429c911fcaf8442f967a157211dfb771e85b14ff3916a`  
		Last Modified: Sat, 14 Apr 2018 02:41:03 GMT  
		Size: 20.3 MB (20284075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64803bff468087aca06e131527a5447efd1b96f0c758d49fc0df698b311a6c79`  
		Last Modified: Sat, 14 Apr 2018 02:40:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d210e8895e4be3983b548c8c856e6c1de44a02e728705b12acafa3c46c904c4d`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8988f264e051a9f61b8aacf6e32ec2422c339abb3802d525b7265b9d318009`  
		Last Modified: Sat, 14 Apr 2018 05:42:29 GMT  
		Size: 14.8 MB (14817641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6bbc080a720cea62128064f396569625a7e83524ad8682397d303fde1bd4b9`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 480.6 KB (480575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcec09284827ddc3b119c96eb98fc28918e93c39d4087d1d8c73046fa9aac4`  
		Last Modified: Sat, 14 Apr 2018 05:42:24 GMT  
		Size: 8.6 KB (8568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c9e823500605eccc5be71f78d4c0a10e255f56030af6206382d3af3969bedd`  
		Last Modified: Sat, 14 Apr 2018 05:42:46 GMT  
		Size: 60.1 MB (60146745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df68907aaabfba403825682daf6b840043048ad8a46a242397925b4babce9f09`  
		Last Modified: Sat, 14 Apr 2018 05:42:24 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc108b9da01fbd779175fee54a97030cb8d6124b06bd66bf485cc3a8943248e5`  
		Last Modified: Sat, 14 Apr 2018 05:42:30 GMT  
		Size: 2.5 MB (2455509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b200d252391aa0b516ba747dc6c744c71f113331f904fefbd4414c1b79ff277`  
		Last Modified: Sat, 14 Apr 2018 05:42:52 GMT  
		Size: 97.8 MB (97815780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f767ae7964ec1b881aadacf75ef315f3b344dec456550a141084101daddf935`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; ppc64le

```console
$ docker pull redmine@sha256:16a8f47378a20da3f173f12d7a808174dfd6f2e1fe04b2acd6b7ea046b72e775
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259576325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0d2bb2f251e8056b0432df0f9412217c069f4312fb05549d93e390d24f81fb`
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
# Mon, 02 Apr 2018 17:59:10 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:59:11 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:59:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:59:14 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 18:08:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 18:08:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 18:08:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 18:08:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 18:08:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 18:08:44 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 19:35:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 19:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:36:44 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 19:36:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 19:36:52 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 19:36:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 19:40:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:40:51 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 19:40:53 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:34:14 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 08:34:14 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 08:34:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 08:42:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:42:48 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 08:42:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 08:42:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:42:51 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 08:42:52 GMT
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
	-	`sha256:9ce1350e989fc2f796f8918ebc52465666f86d9d4687f0ee31cd7fd6f12a7ec0`  
		Last Modified: Mon, 02 Apr 2018 19:12:55 GMT  
		Size: 21.7 MB (21741464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e5cfb051829a21112a4688142c876fcc6094a374f6e8e936f5e16c66f8d0f2`  
		Last Modified: Mon, 02 Apr 2018 19:12:51 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1453dde26840c440a4570882f4b8d9cf67da3ff5f89e9ebac34290a460c817`  
		Last Modified: Mon, 02 Apr 2018 20:26:14 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91d22f8da73d6eb0d0610f0936dfd579731b09a664ac994e3e2783ec9bbc6c5`  
		Last Modified: Mon, 02 Apr 2018 20:26:15 GMT  
		Size: 14.7 MB (14720330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147e661b93c84e721620331f084fc3d172a51c445b7297880ebcebb0b3be5307`  
		Last Modified: Mon, 02 Apr 2018 20:26:11 GMT  
		Size: 469.9 KB (469850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac1fee42e9a058793822d8a3e90b82c2b670ef1247d227af18aae0a444d585a`  
		Last Modified: Mon, 02 Apr 2018 20:26:11 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d94cee04bced314d07d1dce1a4f46bc642bbca132df1d38ff3c29265f77488a`  
		Last Modified: Mon, 02 Apr 2018 20:26:18 GMT  
		Size: 58.1 MB (58132661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138535c3140b8742488d6175ddb05945805c478397c1ad706e56b6cfd07a69c`  
		Last Modified: Mon, 02 Apr 2018 20:26:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f0143f9572d6c3dbc5adce45a3960803fef2da3a86a1e6dbfb9b1122b78b8b`  
		Last Modified: Thu, 12 Apr 2018 08:50:44 GMT  
		Size: 2.5 MB (2455985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11cd9f85f5f05c8e28b99246619a2ecfe91b4d57d63581b09ced301a22941cd`  
		Last Modified: Thu, 12 Apr 2018 08:51:06 GMT  
		Size: 100.1 MB (100068411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177de89817615004a127114d52312c4e0ae394e2604ceeba3b2c08c13ca6f568`  
		Last Modified: Thu, 12 Apr 2018 08:50:42 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.5` - linux; s390x

```console
$ docker pull redmine@sha256:ebfa11ae42fc656e076e2b8c335ec89549f91962241228a0a76a5f2107816b98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264526259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824baa78510a820c4091ba8389340d31b247b7ffd71fdc438052665a3353d001`
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
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:27:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:31:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:31:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:31:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:31:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:31:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:31:29 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:20:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:20:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:20:43 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:20:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:20:46 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:20:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:21:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:21:27 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:21:27 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 12:08:33 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 12:08:33 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 12:08:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:11:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:11:28 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:11:29 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:11:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:11:29 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:11:29 GMT
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
	-	`sha256:38f3338c8bb939b5fd61e1edd959256388a26bfcc3bfa8742d5de4f933e32b92`  
		Last Modified: Mon, 02 Apr 2018 18:00:52 GMT  
		Size: 21.7 MB (21689661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe90b7414be9bea2bc8bccc46a195f279ff5fa26f2fe4d87f52b55ce7c2807`  
		Last Modified: Mon, 02 Apr 2018 18:00:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3626a6b480f03279ab0fbfa1cc1154fdabff130c14d68bb1937bd4179e72ed86`  
		Last Modified: Mon, 02 Apr 2018 18:31:51 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04036ced3d3338ecec149375d94d9228bf0f344523f9cb47285cc5e9920705c6`  
		Last Modified: Mon, 02 Apr 2018 18:31:53 GMT  
		Size: 14.8 MB (14815240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878803a486304e0f9a49205647067608af04c1537ac8253444819f805e4aac24`  
		Last Modified: Mon, 02 Apr 2018 18:31:49 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ec29820c6edaa14f56347b6cf10a6eaaf0dbac5c1dd3dd27d46b8fcf4f9cd`  
		Last Modified: Mon, 02 Apr 2018 18:31:49 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dbba4cdd6101248ee23346e6d76bcaf68a68612d4b198c411b4c71fb5dd07c`  
		Last Modified: Mon, 02 Apr 2018 18:32:01 GMT  
		Size: 59.1 MB (59109864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127d27dd743727185cb54c4cb3ddd5b9f0a2bb3dc54af4ff865746f269e18c1e`  
		Last Modified: Mon, 02 Apr 2018 18:31:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1941bdfb901d67113482a8c1c4c57e545d22778b844ddc4cfda085a749d282`  
		Last Modified: Thu, 12 Apr 2018 12:14:39 GMT  
		Size: 2.5 MB (2455524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ce07121868a9ac77dec13d27a121d0374ccbc04942f30f92a0decc1bbf21fd`  
		Last Modified: Thu, 12 Apr 2018 12:14:54 GMT  
		Size: 103.2 MB (103180518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb16a10c965be8effdafa90dabb2cf7aa1bd67169dbc12f78fd45173d918eb47`  
		Last Modified: Thu, 12 Apr 2018 12:14:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.5-passenger`

```console
$ docker pull redmine@sha256:423e9491592da21d22c82c39e7aa7ad0aeff1e383686484b623222670d838250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.5-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:f3dc154a4b2f4bea1c02653908ec1bff43bb1f659d7b96d61b9f7b257be8266d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283200330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:270be00ebce2b5d7935d81fd2073af1a80bd80693485e4a7be59e2932f23d70a`
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
# Thu, 29 Mar 2018 17:29:40 GMT
ENV RUBY_VERSION=2.4.4
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 17:29:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 17:32:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 17:32:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 17:32:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 17:32:57 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:23:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:24:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:24:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:24:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:25:12 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:25:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_VERSION=3.4.5
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Wed, 11 Apr 2018 18:12:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:16:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:16:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:16:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:16:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:16:01 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:16:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 11 Apr 2018 18:17:16 GMT
ENV PASSENGER_VERSION=5.2.3
# Wed, 11 Apr 2018 18:17:42 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:17:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 11 Apr 2018 18:17:44 GMT
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
	-	`sha256:2f114c079c5c56150a9793db1c7cf076074db15230225378244a6f127edb8a4f`  
		Last Modified: Thu, 29 Mar 2018 19:58:12 GMT  
		Size: 21.3 MB (21286461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d22406c4c57a9fc9e7cdf7ab197a39036e5dafbdf6153657e488f281d7b052`  
		Last Modified: Thu, 29 Mar 2018 19:58:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d980b36e61712037537af839fdc8acb362ad1a9a77336ea0eff886b8b877a621`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff832249133f8854b188ac696e70c686d0543eb6bd4ab05c0334411fdceac5`  
		Last Modified: Thu, 29 Mar 2018 22:31:50 GMT  
		Size: 14.7 MB (14650634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0402e8d92900b46f970320ba976eb70c751c0b52a88da58e307e37f637e520`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42096e160fa0d0ba869c5228c1f2e68b540ef60fc3dfdea8349826bbd27c676`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb7615572f0f0b82fd2825bbaaf1230f55f2dfcee3137feac3cb03b25cfb0b`  
		Last Modified: Thu, 29 Mar 2018 22:32:01 GMT  
		Size: 59.3 MB (59271553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfff2eac932158a73bae3bbf991a5a8e11df46c7d6c72a70d11cec447c648290`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245ec8355ca1d4449cff210950d642f782cbcda37028e55ed2dbc3f04f35e0df`  
		Last Modified: Wed, 11 Apr 2018 18:29:18 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31533a69d3ad5a3408747f34e443edb9f8c6bd41d57e4158cf1d943fdabc2f9e`  
		Last Modified: Wed, 11 Apr 2018 18:29:43 GMT  
		Size: 99.4 MB (99396158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f49cb81a17a222e06eb025df5ed3a923b5605a8156e5cc0b9bc38541c1b85`  
		Last Modified: Wed, 11 Apr 2018 18:29:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cfd4c24c46d90e203d7583663f3051a52c02f4e3a660944e57ab84b8bca906`  
		Last Modified: Wed, 11 Apr 2018 18:31:12 GMT  
		Size: 18.5 MB (18459886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd93b24959ad6c25ac4b9e4ad5d216969ab620877ad9f3d2b759cc288819818d`  
		Last Modified: Wed, 11 Apr 2018 18:31:10 GMT  
		Size: 4.4 MB (4372064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:423e9491592da21d22c82c39e7aa7ad0aeff1e383686484b623222670d838250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:f3dc154a4b2f4bea1c02653908ec1bff43bb1f659d7b96d61b9f7b257be8266d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283200330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:270be00ebce2b5d7935d81fd2073af1a80bd80693485e4a7be59e2932f23d70a`
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
# Thu, 29 Mar 2018 17:29:40 GMT
ENV RUBY_VERSION=2.4.4
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 17:29:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 17:32:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 17:32:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 17:32:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 17:32:57 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:23:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:24:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:24:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:24:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:25:12 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:25:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_VERSION=3.4.5
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Wed, 11 Apr 2018 18:12:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:16:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:16:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:16:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:16:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:16:01 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:16:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 11 Apr 2018 18:17:16 GMT
ENV PASSENGER_VERSION=5.2.3
# Wed, 11 Apr 2018 18:17:42 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:17:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 11 Apr 2018 18:17:44 GMT
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
	-	`sha256:2f114c079c5c56150a9793db1c7cf076074db15230225378244a6f127edb8a4f`  
		Last Modified: Thu, 29 Mar 2018 19:58:12 GMT  
		Size: 21.3 MB (21286461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d22406c4c57a9fc9e7cdf7ab197a39036e5dafbdf6153657e488f281d7b052`  
		Last Modified: Thu, 29 Mar 2018 19:58:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d980b36e61712037537af839fdc8acb362ad1a9a77336ea0eff886b8b877a621`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff832249133f8854b188ac696e70c686d0543eb6bd4ab05c0334411fdceac5`  
		Last Modified: Thu, 29 Mar 2018 22:31:50 GMT  
		Size: 14.7 MB (14650634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0402e8d92900b46f970320ba976eb70c751c0b52a88da58e307e37f637e520`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42096e160fa0d0ba869c5228c1f2e68b540ef60fc3dfdea8349826bbd27c676`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb7615572f0f0b82fd2825bbaaf1230f55f2dfcee3137feac3cb03b25cfb0b`  
		Last Modified: Thu, 29 Mar 2018 22:32:01 GMT  
		Size: 59.3 MB (59271553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfff2eac932158a73bae3bbf991a5a8e11df46c7d6c72a70d11cec447c648290`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245ec8355ca1d4449cff210950d642f782cbcda37028e55ed2dbc3f04f35e0df`  
		Last Modified: Wed, 11 Apr 2018 18:29:18 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31533a69d3ad5a3408747f34e443edb9f8c6bd41d57e4158cf1d943fdabc2f9e`  
		Last Modified: Wed, 11 Apr 2018 18:29:43 GMT  
		Size: 99.4 MB (99396158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f49cb81a17a222e06eb025df5ed3a923b5605a8156e5cc0b9bc38541c1b85`  
		Last Modified: Wed, 11 Apr 2018 18:29:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cfd4c24c46d90e203d7583663f3051a52c02f4e3a660944e57ab84b8bca906`  
		Last Modified: Wed, 11 Apr 2018 18:31:12 GMT  
		Size: 18.5 MB (18459886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd93b24959ad6c25ac4b9e4ad5d216969ab620877ad9f3d2b759cc288819818d`  
		Last Modified: Wed, 11 Apr 2018 18:31:10 GMT  
		Size: 4.4 MB (4372064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:423e9491592da21d22c82c39e7aa7ad0aeff1e383686484b623222670d838250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:f3dc154a4b2f4bea1c02653908ec1bff43bb1f659d7b96d61b9f7b257be8266d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283200330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:270be00ebce2b5d7935d81fd2073af1a80bd80693485e4a7be59e2932f23d70a`
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
# Thu, 29 Mar 2018 17:29:40 GMT
ENV RUBY_VERSION=2.4.4
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 17:29:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 17:32:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 17:32:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 17:32:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 17:32:57 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:23:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:24:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:24:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:24:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:25:12 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:25:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_VERSION=3.4.5
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Wed, 11 Apr 2018 18:12:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:16:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:16:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:16:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:16:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:16:01 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:16:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 11 Apr 2018 18:17:16 GMT
ENV PASSENGER_VERSION=5.2.3
# Wed, 11 Apr 2018 18:17:42 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:17:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 11 Apr 2018 18:17:44 GMT
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
	-	`sha256:2f114c079c5c56150a9793db1c7cf076074db15230225378244a6f127edb8a4f`  
		Last Modified: Thu, 29 Mar 2018 19:58:12 GMT  
		Size: 21.3 MB (21286461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d22406c4c57a9fc9e7cdf7ab197a39036e5dafbdf6153657e488f281d7b052`  
		Last Modified: Thu, 29 Mar 2018 19:58:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d980b36e61712037537af839fdc8acb362ad1a9a77336ea0eff886b8b877a621`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff832249133f8854b188ac696e70c686d0543eb6bd4ab05c0334411fdceac5`  
		Last Modified: Thu, 29 Mar 2018 22:31:50 GMT  
		Size: 14.7 MB (14650634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0402e8d92900b46f970320ba976eb70c751c0b52a88da58e307e37f637e520`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42096e160fa0d0ba869c5228c1f2e68b540ef60fc3dfdea8349826bbd27c676`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb7615572f0f0b82fd2825bbaaf1230f55f2dfcee3137feac3cb03b25cfb0b`  
		Last Modified: Thu, 29 Mar 2018 22:32:01 GMT  
		Size: 59.3 MB (59271553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfff2eac932158a73bae3bbf991a5a8e11df46c7d6c72a70d11cec447c648290`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245ec8355ca1d4449cff210950d642f782cbcda37028e55ed2dbc3f04f35e0df`  
		Last Modified: Wed, 11 Apr 2018 18:29:18 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31533a69d3ad5a3408747f34e443edb9f8c6bd41d57e4158cf1d943fdabc2f9e`  
		Last Modified: Wed, 11 Apr 2018 18:29:43 GMT  
		Size: 99.4 MB (99396158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f49cb81a17a222e06eb025df5ed3a923b5605a8156e5cc0b9bc38541c1b85`  
		Last Modified: Wed, 11 Apr 2018 18:29:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cfd4c24c46d90e203d7583663f3051a52c02f4e3a660944e57ab84b8bca906`  
		Last Modified: Wed, 11 Apr 2018 18:31:12 GMT  
		Size: 18.5 MB (18459886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd93b24959ad6c25ac4b9e4ad5d216969ab620877ad9f3d2b759cc288819818d`  
		Last Modified: Wed, 11 Apr 2018 18:31:10 GMT  
		Size: 4.4 MB (4372064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:b9cc405136d72dfa7d7579bff8faeab266bd0acb1b4a890c8bf31c7aff289bc5
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
$ docker pull redmine@sha256:c78f5df0d23cc31742fa8a1c5cf52c02a863920ebd2f68569f1e2916b2e12f80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260368380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887149aec1cdf33df773f969d444d88dc3092e6c1c72f8936aa82bb96dd33d74`
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
# Thu, 29 Mar 2018 17:29:40 GMT
ENV RUBY_VERSION=2.4.4
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 17:29:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 17:32:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 17:32:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 17:32:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 17:32:57 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:23:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:24:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:24:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:24:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:25:12 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:25:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_VERSION=3.4.5
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Wed, 11 Apr 2018 18:12:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:16:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:16:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:16:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:16:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:16:01 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:16:02 GMT
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
	-	`sha256:2f114c079c5c56150a9793db1c7cf076074db15230225378244a6f127edb8a4f`  
		Last Modified: Thu, 29 Mar 2018 19:58:12 GMT  
		Size: 21.3 MB (21286461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d22406c4c57a9fc9e7cdf7ab197a39036e5dafbdf6153657e488f281d7b052`  
		Last Modified: Thu, 29 Mar 2018 19:58:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d980b36e61712037537af839fdc8acb362ad1a9a77336ea0eff886b8b877a621`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff832249133f8854b188ac696e70c686d0543eb6bd4ab05c0334411fdceac5`  
		Last Modified: Thu, 29 Mar 2018 22:31:50 GMT  
		Size: 14.7 MB (14650634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0402e8d92900b46f970320ba976eb70c751c0b52a88da58e307e37f637e520`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42096e160fa0d0ba869c5228c1f2e68b540ef60fc3dfdea8349826bbd27c676`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb7615572f0f0b82fd2825bbaaf1230f55f2dfcee3137feac3cb03b25cfb0b`  
		Last Modified: Thu, 29 Mar 2018 22:32:01 GMT  
		Size: 59.3 MB (59271553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfff2eac932158a73bae3bbf991a5a8e11df46c7d6c72a70d11cec447c648290`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245ec8355ca1d4449cff210950d642f782cbcda37028e55ed2dbc3f04f35e0df`  
		Last Modified: Wed, 11 Apr 2018 18:29:18 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31533a69d3ad5a3408747f34e443edb9f8c6bd41d57e4158cf1d943fdabc2f9e`  
		Last Modified: Wed, 11 Apr 2018 18:29:43 GMT  
		Size: 99.4 MB (99396158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f49cb81a17a222e06eb025df5ed3a923b5605a8156e5cc0b9bc38541c1b85`  
		Last Modified: Wed, 11 Apr 2018 18:29:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:065203d44f933f22dcad2e8314dc4f4d104f63aa0439a993b5bb0b000ab1557d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253677273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04839f165302cd8f910533c27d71d99db464ed94c3859861076bc0f9868e8a64`
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
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:05:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:05:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:11:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:11:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:11:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:11:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:11:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:11:37 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:00:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:01:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:01:10 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:01:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:01:12 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:01:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:02:14 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:02:15 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:51:44 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 08:51:44 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 08:51:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 08:57:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:57:24 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 08:57:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 08:57:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:57:25 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 08:57:25 GMT
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
	-	`sha256:75f7790ee9300991ccb22ee7b3a21ab78a42fb3d03069de3a293a8b796b3eb71`  
		Last Modified: Mon, 02 Apr 2018 17:42:10 GMT  
		Size: 21.1 MB (21056260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba65f3f58e6449b09074da5753f4fd12c655b3e3c434fa4299cd2a28c969093`  
		Last Modified: Mon, 02 Apr 2018 17:42:03 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbb0801355fcf21de11b0d3998cf9284af71800b73728d519373f69e2ada8be`  
		Last Modified: Mon, 02 Apr 2018 18:19:15 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e4894a36b0cccae2c3edf7677ff1af9257b0601801c8c3e4ec9ef72a69158`  
		Last Modified: Mon, 02 Apr 2018 18:19:19 GMT  
		Size: 14.3 MB (14347644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18db73123bf197ca6bc5ab2df7f7b8f39429a1fac2cc1d66c57e80ebbb34b9d0`  
		Last Modified: Mon, 02 Apr 2018 18:19:13 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6980fae2e185ce318554b2e4c620f9cc3668520c4e827883cb76dfe36deee0`  
		Last Modified: Mon, 02 Apr 2018 18:19:13 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca18b40dddd42e5642f3c229e21d3671e5b538ad436ff79b3a1b77f558a09c06`  
		Last Modified: Mon, 02 Apr 2018 18:19:32 GMT  
		Size: 56.6 MB (56610820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f51a5a7367725a0b8669dcee1563f0ad46f94c894c5b99a4b56bce67853ac9`  
		Last Modified: Mon, 02 Apr 2018 18:19:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138f744c3c18d058035c0d397eb571637715145d9e746025dc461cce73b21082`  
		Last Modified: Thu, 12 Apr 2018 09:02:51 GMT  
		Size: 2.5 MB (2455983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f52b5d422d129ca363e5fcdfd367e15358ad244bb4190626d666cc59d5745e`  
		Last Modified: Thu, 12 Apr 2018 09:03:22 GMT  
		Size: 98.7 MB (98679803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003f14500ec79e5a08b502bc0b3bb036c6eee6bac8ac2613bcbffdd42301f209`  
		Last Modified: Thu, 12 Apr 2018 09:02:50 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:8d74f7c669f15f68dd4b72c17991732a81c1abdcc4e5e5c2f1dbe3a819616fbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.7 MB (247696591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:582ae6c45375c3c6add551bc3bf0500107b9576b3037df36c88e0dea1198e253`
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
# Mon, 02 Apr 2018 16:58:02 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 16:58:02 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 16:58:03 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 16:58:03 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:03:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:03:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:03:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:03:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:03:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:03:25 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 17:52:12 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 17:52:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:52:40 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 17:52:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 17:52:44 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 17:52:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 17:53:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 17:53:41 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 17:53:41 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 11:59:28 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 11:59:28 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 11:59:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:04:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:04:59 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:04:59 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:05:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:05:00 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:05:00 GMT
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
	-	`sha256:57efc46cb5efbb5f3ab222a236c29cc6035a4565d42e88d5aa215cd8a5063573`  
		Last Modified: Mon, 02 Apr 2018 17:33:00 GMT  
		Size: 20.9 MB (20922327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cddf17c3c85180032cca210dbd0a0fad87206471bdb89404fabb21a83bfbe8`  
		Last Modified: Mon, 02 Apr 2018 17:32:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45e9fa1532e410938c2cc2fb9d1877a8e3fc086a4f2ff3ee0e7477666a64ac3`  
		Last Modified: Mon, 02 Apr 2018 18:09:58 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd254b34b90e256ff548e13131a035c979859f8783fee1622e7276b04feb41da`  
		Last Modified: Mon, 02 Apr 2018 18:10:02 GMT  
		Size: 14.1 MB (14134520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b251f139a15acffcef6333b324957d2baebff82d6d4ab5237d55527c481c0378`  
		Last Modified: Mon, 02 Apr 2018 18:09:57 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157182850bf6e72e8202d4905a2cbd9dc8924b576693cadcf54ba285528c3272`  
		Last Modified: Mon, 02 Apr 2018 18:09:56 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3be2404df7b281b0b36741d8a86d48a4c7d732a1bff7aca0efc65f8cd0e36d8`  
		Last Modified: Mon, 02 Apr 2018 18:10:12 GMT  
		Size: 54.3 MB (54345128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c208050705a17f27fe5b08516b6d045c1d73712a4579405b5e929b8922ce96ca`  
		Last Modified: Mon, 02 Apr 2018 18:09:56 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1895a922873e28401adf1b35e24e137ed4179b544537829bb9d07fc19b79086d`  
		Last Modified: Thu, 12 Apr 2018 12:09:56 GMT  
		Size: 2.5 MB (2455984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d531d111a65c46536edd6ccf46cc25d4b83b4656499050b198b8435a4d223bde`  
		Last Modified: Thu, 12 Apr 2018 12:10:19 GMT  
		Size: 97.9 MB (97863741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9cd43bfe8ffc4a95ed5315eab1328a5ac88bd66979e5bca9cbd8398aa7e9f7`  
		Last Modified: Thu, 12 Apr 2018 12:09:55 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:35e2bf0a39d51a08911b704c073d2247a6c707a5bab5b7854ebb97669f8e3aa4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252634339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b0385b3a0dc1d12ae61b8ba51fdb072c7b1811a14a8e6712095857396f7f18`
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
# Thu, 15 Mar 2018 02:14:58 GMT
ENV RUBY_MAJOR=2.4
# Mon, 02 Apr 2018 18:12:28 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 18:12:29 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 18:12:30 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 18:12:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 18:21:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 18:21:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 18:21:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 18:21:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 18:21:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 18:21:55 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 20:15:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 20:16:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:16:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 20:16:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 20:16:09 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 20:16:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 20:17:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 20:17:56 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 20:17:56 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 09:08:21 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 09:08:21 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 09:08:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 09:21:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 09:21:51 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 09:21:53 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 09:21:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 09:22:00 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 09:22:03 GMT
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
	-	`sha256:6a57c0a409c97dd1ae25838ea7b6ec9aed418c6adaceebd65e4394177eda6c64`  
		Last Modified: Mon, 02 Apr 2018 19:45:54 GMT  
		Size: 21.2 MB (21248093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08a95b8cf2c2f836fe2b3b0a7925fd640e3d2ee809421f9041505ef19172647`  
		Last Modified: Mon, 02 Apr 2018 19:45:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52467ca06c09c2f18d4a2df138ca9c35fff2bfc2d5c0e81261c58e1ac9bef526`  
		Last Modified: Mon, 02 Apr 2018 20:53:54 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd29c81b35b11642d05db118de989cba476b47eb72db1d0c7bdbf41248d52c9`  
		Last Modified: Mon, 02 Apr 2018 20:53:57 GMT  
		Size: 14.5 MB (14462784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc0b0b36b1c5703c0d28652065df89c0c5b72f2bc458e95fdf67409c6257c38`  
		Last Modified: Mon, 02 Apr 2018 20:53:53 GMT  
		Size: 468.7 KB (468706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4aa9f237b841871f32f384a05db0d7c7ca330d2ad3419acaa2f3c977a30912`  
		Last Modified: Mon, 02 Apr 2018 20:53:51 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3558d1f4d6aecc7fa2a4a31b76b6554dd3f87975553d2b5e5d65372ea770590`  
		Last Modified: Mon, 02 Apr 2018 20:54:10 GMT  
		Size: 55.8 MB (55794284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8801e07321a85d3ba1123ef242da8ab9ca66d178c5706b8202e1ff2959df1766`  
		Last Modified: Mon, 02 Apr 2018 20:53:50 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3e03f70f3885968c0bd94ed09f21090678940ebb047a00f265b07f065ada33`  
		Last Modified: Thu, 12 Apr 2018 09:38:51 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fabaf89d43ecd509bce93c453d8867283b7365066a658ab53f4e38da68cd2ec`  
		Last Modified: Thu, 12 Apr 2018 09:39:21 GMT  
		Size: 98.9 MB (98903478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa850deb7622fb9cd5d2c34cc1ebe7b620a2681b37f5718332a474826e5bdc69`  
		Last Modified: Thu, 12 Apr 2018 09:38:50 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:8eaf3d8bc8103b91febb5840e44ad88177749825f255916e02dfc6cfd382ea76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263450796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e2b02de2a5b44fed880c4c5cbb42d2fe28da2ed97eed1c0df303faed78ee2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:04:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:04:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 14 Apr 2018 02:04:53 GMT
ENV RUBY_MAJOR=2.4
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBY_VERSION=2.4.4
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Sat, 14 Apr 2018 02:04:54 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 14 Apr 2018 02:04:54 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 14 Apr 2018 02:08:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 14 Apr 2018 02:08:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 02:08:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 02:08:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 02:08:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 02:08:45 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:28:41 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 14 Apr 2018 05:29:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:29:14 GMT
ENV GOSU_VERSION=1.10
# Sat, 14 Apr 2018 05:29:18 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 14 Apr 2018 05:29:18 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 14 Apr 2018 05:29:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 14 Apr 2018 05:30:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:30:15 GMT
ENV RAILS_ENV=production
# Sat, 14 Apr 2018 05:30:15 GMT
WORKDIR /usr/src/redmine
# Sat, 14 Apr 2018 05:30:15 GMT
ENV REDMINE_VERSION=3.4.5
# Sat, 14 Apr 2018 05:30:15 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Sat, 14 Apr 2018 05:30:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 14 Apr 2018 05:33:47 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 14 Apr 2018 05:33:48 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 14 Apr 2018 05:33:48 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 14 Apr 2018 05:33:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 14 Apr 2018 05:33:49 GMT
EXPOSE 3000/tcp
# Sat, 14 Apr 2018 05:33:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca444cc3943bdd84ca84b9afb84bfda39b93fed03a55cb07ad3bb2179d2587ee`  
		Last Modified: Sat, 14 Apr 2018 02:41:00 GMT  
		Size: 14.6 MB (14649884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1869405bc615943f828b387e40f9c5de545349cddaabc42ac71ed9f323f893bb`  
		Last Modified: Sat, 14 Apr 2018 02:40:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8625490e27cfa172ed2429c911fcaf8442f967a157211dfb771e85b14ff3916a`  
		Last Modified: Sat, 14 Apr 2018 02:41:03 GMT  
		Size: 20.3 MB (20284075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64803bff468087aca06e131527a5447efd1b96f0c758d49fc0df698b311a6c79`  
		Last Modified: Sat, 14 Apr 2018 02:40:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d210e8895e4be3983b548c8c856e6c1de44a02e728705b12acafa3c46c904c4d`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8988f264e051a9f61b8aacf6e32ec2422c339abb3802d525b7265b9d318009`  
		Last Modified: Sat, 14 Apr 2018 05:42:29 GMT  
		Size: 14.8 MB (14817641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6bbc080a720cea62128064f396569625a7e83524ad8682397d303fde1bd4b9`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 480.6 KB (480575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcec09284827ddc3b119c96eb98fc28918e93c39d4087d1d8c73046fa9aac4`  
		Last Modified: Sat, 14 Apr 2018 05:42:24 GMT  
		Size: 8.6 KB (8568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c9e823500605eccc5be71f78d4c0a10e255f56030af6206382d3af3969bedd`  
		Last Modified: Sat, 14 Apr 2018 05:42:46 GMT  
		Size: 60.1 MB (60146745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df68907aaabfba403825682daf6b840043048ad8a46a242397925b4babce9f09`  
		Last Modified: Sat, 14 Apr 2018 05:42:24 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc108b9da01fbd779175fee54a97030cb8d6124b06bd66bf485cc3a8943248e5`  
		Last Modified: Sat, 14 Apr 2018 05:42:30 GMT  
		Size: 2.5 MB (2455509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b200d252391aa0b516ba747dc6c744c71f113331f904fefbd4414c1b79ff277`  
		Last Modified: Sat, 14 Apr 2018 05:42:52 GMT  
		Size: 97.8 MB (97815780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f767ae7964ec1b881aadacf75ef315f3b344dec456550a141084101daddf935`  
		Last Modified: Sat, 14 Apr 2018 05:42:23 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:16a8f47378a20da3f173f12d7a808174dfd6f2e1fe04b2acd6b7ea046b72e775
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259576325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0d2bb2f251e8056b0432df0f9412217c069f4312fb05549d93e390d24f81fb`
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
# Mon, 02 Apr 2018 17:59:10 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:59:11 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:59:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:59:14 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 18:08:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 18:08:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 18:08:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 18:08:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 18:08:42 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 18:08:44 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 19:35:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 19:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:36:44 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 19:36:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 19:36:52 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 19:36:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 19:40:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 19:40:51 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 19:40:53 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 08:34:14 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 08:34:14 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 08:34:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 08:42:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 08:42:48 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 08:42:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 08:42:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 08:42:51 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 08:42:52 GMT
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
	-	`sha256:9ce1350e989fc2f796f8918ebc52465666f86d9d4687f0ee31cd7fd6f12a7ec0`  
		Last Modified: Mon, 02 Apr 2018 19:12:55 GMT  
		Size: 21.7 MB (21741464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e5cfb051829a21112a4688142c876fcc6094a374f6e8e936f5e16c66f8d0f2`  
		Last Modified: Mon, 02 Apr 2018 19:12:51 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1453dde26840c440a4570882f4b8d9cf67da3ff5f89e9ebac34290a460c817`  
		Last Modified: Mon, 02 Apr 2018 20:26:14 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91d22f8da73d6eb0d0610f0936dfd579731b09a664ac994e3e2783ec9bbc6c5`  
		Last Modified: Mon, 02 Apr 2018 20:26:15 GMT  
		Size: 14.7 MB (14720330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147e661b93c84e721620331f084fc3d172a51c445b7297880ebcebb0b3be5307`  
		Last Modified: Mon, 02 Apr 2018 20:26:11 GMT  
		Size: 469.9 KB (469850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac1fee42e9a058793822d8a3e90b82c2b670ef1247d227af18aae0a444d585a`  
		Last Modified: Mon, 02 Apr 2018 20:26:11 GMT  
		Size: 8.6 KB (8641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d94cee04bced314d07d1dce1a4f46bc642bbca132df1d38ff3c29265f77488a`  
		Last Modified: Mon, 02 Apr 2018 20:26:18 GMT  
		Size: 58.1 MB (58132661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138535c3140b8742488d6175ddb05945805c478397c1ad706e56b6cfd07a69c`  
		Last Modified: Mon, 02 Apr 2018 20:26:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f0143f9572d6c3dbc5adce45a3960803fef2da3a86a1e6dbfb9b1122b78b8b`  
		Last Modified: Thu, 12 Apr 2018 08:50:44 GMT  
		Size: 2.5 MB (2455985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11cd9f85f5f05c8e28b99246619a2ecfe91b4d57d63581b09ced301a22941cd`  
		Last Modified: Thu, 12 Apr 2018 08:51:06 GMT  
		Size: 100.1 MB (100068411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177de89817615004a127114d52312c4e0ae394e2604ceeba3b2c08c13ca6f568`  
		Last Modified: Thu, 12 Apr 2018 08:50:42 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:ebfa11ae42fc656e076e2b8c335ec89549f91962241228a0a76a5f2107816b98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264526259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824baa78510a820c4091ba8389340d31b247b7ffd71fdc438052665a3353d001`
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
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBY_VERSION=2.4.4
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Mon, 02 Apr 2018 17:27:13 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:27:13 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:31:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:31:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:31:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:31:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:31:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:31:29 GMT
CMD ["irb"]
# Mon, 02 Apr 2018 18:20:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 02 Apr 2018 18:20:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:20:43 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Apr 2018 18:20:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 02 Apr 2018 18:20:46 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 02 Apr 2018 18:20:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 02 Apr 2018 18:21:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Apr 2018 18:21:27 GMT
ENV RAILS_ENV=production
# Mon, 02 Apr 2018 18:21:27 GMT
WORKDIR /usr/src/redmine
# Thu, 12 Apr 2018 12:08:33 GMT
ENV REDMINE_VERSION=3.4.5
# Thu, 12 Apr 2018 12:08:33 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Thu, 12 Apr 2018 12:08:36 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 12 Apr 2018 12:11:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 12 Apr 2018 12:11:28 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 12 Apr 2018 12:11:29 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 12 Apr 2018 12:11:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 12 Apr 2018 12:11:29 GMT
EXPOSE 3000/tcp
# Thu, 12 Apr 2018 12:11:29 GMT
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
	-	`sha256:38f3338c8bb939b5fd61e1edd959256388a26bfcc3bfa8742d5de4f933e32b92`  
		Last Modified: Mon, 02 Apr 2018 18:00:52 GMT  
		Size: 21.7 MB (21689661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe90b7414be9bea2bc8bccc46a195f279ff5fa26f2fe4d87f52b55ce7c2807`  
		Last Modified: Mon, 02 Apr 2018 18:00:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3626a6b480f03279ab0fbfa1cc1154fdabff130c14d68bb1937bd4179e72ed86`  
		Last Modified: Mon, 02 Apr 2018 18:31:51 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04036ced3d3338ecec149375d94d9228bf0f344523f9cb47285cc5e9920705c6`  
		Last Modified: Mon, 02 Apr 2018 18:31:53 GMT  
		Size: 14.8 MB (14815240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878803a486304e0f9a49205647067608af04c1537ac8253444819f805e4aac24`  
		Last Modified: Mon, 02 Apr 2018 18:31:49 GMT  
		Size: 486.8 KB (486829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ec29820c6edaa14f56347b6cf10a6eaaf0dbac5c1dd3dd27d46b8fcf4f9cd`  
		Last Modified: Mon, 02 Apr 2018 18:31:49 GMT  
		Size: 8.6 KB (8621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dbba4cdd6101248ee23346e6d76bcaf68a68612d4b198c411b4c71fb5dd07c`  
		Last Modified: Mon, 02 Apr 2018 18:32:01 GMT  
		Size: 59.1 MB (59109864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127d27dd743727185cb54c4cb3ddd5b9f0a2bb3dc54af4ff865746f269e18c1e`  
		Last Modified: Mon, 02 Apr 2018 18:31:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1941bdfb901d67113482a8c1c4c57e545d22778b844ddc4cfda085a749d282`  
		Last Modified: Thu, 12 Apr 2018 12:14:39 GMT  
		Size: 2.5 MB (2455524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ce07121868a9ac77dec13d27a121d0374ccbc04942f30f92a0decc1bbf21fd`  
		Last Modified: Thu, 12 Apr 2018 12:14:54 GMT  
		Size: 103.2 MB (103180518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb16a10c965be8effdafa90dabb2cf7aa1bd67169dbc12f78fd45173d918eb47`  
		Last Modified: Thu, 12 Apr 2018 12:14:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:423e9491592da21d22c82c39e7aa7ad0aeff1e383686484b623222670d838250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:f3dc154a4b2f4bea1c02653908ec1bff43bb1f659d7b96d61b9f7b257be8266d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283200330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:270be00ebce2b5d7935d81fd2073af1a80bd80693485e4a7be59e2932f23d70a`
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
# Thu, 29 Mar 2018 17:29:40 GMT
ENV RUBY_VERSION=2.4.4
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Thu, 29 Mar 2018 17:29:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 17:29:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 17:32:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 17:32:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 17:32:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 17:32:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 17:32:57 GMT
CMD ["irb"]
# Thu, 29 Mar 2018 21:23:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 29 Mar 2018 21:24:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:24:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 29 Mar 2018 21:24:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 29 Mar 2018 21:24:24 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 29 Mar 2018 21:24:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 29 Mar 2018 21:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 21:25:12 GMT
ENV RAILS_ENV=production
# Thu, 29 Mar 2018 21:25:13 GMT
WORKDIR /usr/src/redmine
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_VERSION=3.4.5
# Wed, 11 Apr 2018 18:12:48 GMT
ENV REDMINE_DOWNLOAD_MD5=1c61ccbf3f597ebceefb05b60cc1947b
# Wed, 11 Apr 2018 18:12:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 11 Apr 2018 18:16:00 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:16:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 11 Apr 2018 18:16:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 11 Apr 2018 18:16:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Apr 2018 18:16:01 GMT
EXPOSE 3000/tcp
# Wed, 11 Apr 2018 18:16:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 11 Apr 2018 18:17:16 GMT
ENV PASSENGER_VERSION=5.2.3
# Wed, 11 Apr 2018 18:17:42 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 11 Apr 2018 18:17:44 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 11 Apr 2018 18:17:44 GMT
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
	-	`sha256:2f114c079c5c56150a9793db1c7cf076074db15230225378244a6f127edb8a4f`  
		Last Modified: Thu, 29 Mar 2018 19:58:12 GMT  
		Size: 21.3 MB (21286461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d22406c4c57a9fc9e7cdf7ab197a39036e5dafbdf6153657e488f281d7b052`  
		Last Modified: Thu, 29 Mar 2018 19:58:05 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d980b36e61712037537af839fdc8acb362ad1a9a77336ea0eff886b8b877a621`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cff832249133f8854b188ac696e70c686d0543eb6bd4ab05c0334411fdceac5`  
		Last Modified: Thu, 29 Mar 2018 22:31:50 GMT  
		Size: 14.7 MB (14650634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0402e8d92900b46f970320ba976eb70c751c0b52a88da58e307e37f637e520`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42096e160fa0d0ba869c5228c1f2e68b540ef60fc3dfdea8349826bbd27c676`  
		Last Modified: Thu, 29 Mar 2018 22:31:45 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb7615572f0f0b82fd2825bbaaf1230f55f2dfcee3137feac3cb03b25cfb0b`  
		Last Modified: Thu, 29 Mar 2018 22:32:01 GMT  
		Size: 59.3 MB (59271553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfff2eac932158a73bae3bbf991a5a8e11df46c7d6c72a70d11cec447c648290`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245ec8355ca1d4449cff210950d642f782cbcda37028e55ed2dbc3f04f35e0df`  
		Last Modified: Wed, 11 Apr 2018 18:29:18 GMT  
		Size: 2.5 MB (2455519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31533a69d3ad5a3408747f34e443edb9f8c6bd41d57e4158cf1d943fdabc2f9e`  
		Last Modified: Wed, 11 Apr 2018 18:29:43 GMT  
		Size: 99.4 MB (99396158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f49cb81a17a222e06eb025df5ed3a923b5605a8156e5cc0b9bc38541c1b85`  
		Last Modified: Wed, 11 Apr 2018 18:29:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cfd4c24c46d90e203d7583663f3051a52c02f4e3a660944e57ab84b8bca906`  
		Last Modified: Wed, 11 Apr 2018 18:31:12 GMT  
		Size: 18.5 MB (18459886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd93b24959ad6c25ac4b9e4ad5d216969ab620877ad9f3d2b759cc288819818d`  
		Last Modified: Wed, 11 Apr 2018 18:31:10 GMT  
		Size: 4.4 MB (4372064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
