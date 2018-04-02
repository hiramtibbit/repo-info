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
$ docker pull redmine@sha256:391bcf6c29ed5988b58be3d7dcf01d0bf30a3053f067a38861f4acdfbcb5ffc8
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
$ docker pull redmine@sha256:5e3f8240281e0df3114db734dc84692406ffd333df0f7389bff84f0eecdb9968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.2 MB (260242426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b5c21381816e92864a3259fe4ff20a66f535ee5aab6e62c653f49890b44d8d`
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
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 29 Mar 2018 21:25:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:28:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:28:23 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:28:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:28:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:28:24 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:28:25 GMT
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
	-	`sha256:1fd9833329e6b9158dd817ee555ecc536230bbe84d63c9728b8114e784004e95`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.5 MB (2454054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c0a11c79d30317a9736f9f2b346e78b7f86f26f3e019a6388516cb59ee3b9`  
		Last Modified: Thu, 29 Mar 2018 22:32:09 GMT  
		Size: 99.3 MB (99271669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57c06f9aebefffe75ff4206a4510f53c6f3a5b973538864d1922bfab83eb092`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a5891ea329bdd4c5d2b24cd5a26f94337f0e4a11524f19b4d4f385fc2a1bde3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253612366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ca5073469871d75220d273bfe3e5f53cfec7dccac4ebaea17a973f17e5ea29`
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
# Mon, 02 Apr 2018 18:02:15 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 18:02:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 18:02:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:07:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:07:43 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:07:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:07:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:07:44 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:07:44 GMT
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
	-	`sha256:53e9edbb4b63153f00c5aa37359c1691a406aa6d7aebae3c6d1e2b998c9e216a`  
		Last Modified: Mon, 02 Apr 2018 18:19:14 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afb11883c80e6a39433328f972c1467e23cb6451947b3c8324b8884c32e9989`  
		Last Modified: Mon, 02 Apr 2018 18:19:41 GMT  
		Size: 98.6 MB (98616299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20a8aacfc60b3ba5413b38b6d5856f504b78d8c4bb1741e41e3806949b7412f`  
		Last Modified: Mon, 02 Apr 2018 18:19:12 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f6da941f788c5c7cc67941dd94389e7f2ee98fa9e0426f3fa73bc159f5d0cdf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247632418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b584d7bb47a5ea99b921e07085beccd52a7fbb5490c49f52d512006e7a0e687`
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
# Mon, 02 Apr 2018 17:53:41 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 17:53:42 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 17:53:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 17:58:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 17:58:46 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 17:58:47 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 17:58:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 17:58:47 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 17:58:47 GMT
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
	-	`sha256:e2186621bee74b83c5362240b9232185f73bf428ec7ff0c21ff6209702827b41`  
		Last Modified: Mon, 02 Apr 2018 18:09:57 GMT  
		Size: 2.5 MB (2454582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231d819c2f98d7ef28da30da9d57ae792d7c965a22b18d43e04cf4e5021cb055`  
		Last Modified: Mon, 02 Apr 2018 18:10:21 GMT  
		Size: 97.8 MB (97800971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a169f2dfa1db7723b39b3da6ed5fc81f043f827aa25944a025cf369519cb9135`  
		Last Modified: Mon, 02 Apr 2018 18:09:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:156f42d7fe5c72101ef6bae328f5e876071f0800d982c0ea91419f3ecf5f0d9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252368042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528e1afe4900fdd5ccb408b222e4a7e316a7709c1625fccd316f7170a7455eb0`
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
# Thu, 15 Mar 2018 02:14:59 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Mar 2018 02:14:59 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Mar 2018 02:15:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:15:01 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 02:28:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 02:28:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 02:28:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 02:28:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 02:28:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 02:28:21 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:25:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:26:36 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:26:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:26:55 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:28:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:29:06 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:29:07 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 10:29:07 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 10:29:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 10:29:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 10:39:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 10:39:21 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 10:39:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 10:39:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 10:39:40 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 10:39:41 GMT
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
	-	`sha256:0e599c5d9ca4339df35061b386b5ff5f8e83c4ee40955c1a8294821e75364f4f`  
		Last Modified: Thu, 15 Mar 2018 03:11:51 GMT  
		Size: 21.2 MB (21246248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836d4b9fa3283dc86af0ece6f2f68db23340795521476f95a2e99ce4bf01664`  
		Last Modified: Thu, 15 Mar 2018 03:11:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d262dc1baecb9c0f22f9c320730519efa577822d01d80b7c9b4e71485383d84`  
		Last Modified: Thu, 15 Mar 2018 11:07:14 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afad2bb6d11553c4be6fd5c99e565d29be9b0632075eb318ff327fdc1849d0b8`  
		Last Modified: Thu, 15 Mar 2018 11:07:18 GMT  
		Size: 14.5 MB (14463254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe5f5d29747dde7240098775124a7332b69be478365d19339fa264535231fc6`  
		Last Modified: Thu, 15 Mar 2018 11:07:12 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e440e1c0426831c33e81a713780554eef683bc1a44cf222c970fbe3ced5b795`  
		Last Modified: Thu, 15 Mar 2018 11:07:10 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba83a02f2d9d9c8251b1915dcdae1787f48a62ebb2a5e61a71190491a22e858`  
		Last Modified: Thu, 15 Mar 2018 11:07:30 GMT  
		Size: 55.8 MB (55794744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a126ee17a2b8d734cd96c49a608f3d79f361241d30da6736856399c3d5e0e9c7`  
		Last Modified: Thu, 15 Mar 2018 11:07:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e79c714ee5d58964ed3a555f05b26881abc6e56c0e4a2099b274c600d3fbcc7`  
		Last Modified: Thu, 15 Mar 2018 11:07:11 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b971bdcb53ded545ae3c9de55547a918db8240b4b426a6c9913a95be9ac25bf`  
		Last Modified: Thu, 15 Mar 2018 11:07:43 GMT  
		Size: 98.6 MB (98639593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cbdbe1eabaada204df23cbd5a969bd5aac5e191162a23b30e0e13162651564`  
		Last Modified: Thu, 15 Mar 2018 11:07:09 GMT  
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
$ docker pull redmine@sha256:b990acdb8d5e30887fe4f70edf33a5b6f8b64e653895833a92861584e224634d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259480224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226a5051757d93a1f59e614571d4f83388f800bad394ccd4a7b6a2c51c52357d`
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
# Mon, 02 Apr 2018 19:40:55 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 19:40:57 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 19:41:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 19:53:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 19:53:35 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 19:53:40 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 19:53:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 19:53:43 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 19:53:45 GMT
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
	-	`sha256:87593c01a6c3b2594dcc9a8b2195ab5e2fb1878167735a91d2b8a641495c730e`  
		Last Modified: Mon, 02 Apr 2018 20:26:08 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643dd2350d06f335c51f493d181042d072ac92fac73d0ef66bdad0a45f0a369`  
		Last Modified: Mon, 02 Apr 2018 20:26:29 GMT  
		Size: 100.0 MB (99973707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a543ea463dc0c10717303836efa78e1b25d6edf13311b219672adacb5d08f2`  
		Last Modified: Mon, 02 Apr 2018 20:26:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:a7c53564291d767e1dab97cb70da36ecf371e35cb431b5258d8ebdf57cc1482a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264428082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e86ff951dd58bda221af4718b047e655025c33cdaf6fd2316f3553151548f18`
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
# Mon, 02 Apr 2018 18:21:27 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 18:21:27 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 18:21:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:24:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:24:27 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:24:27 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:24:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:24:27 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:24:28 GMT
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
	-	`sha256:1c608398c64ec96d6306627f6aa743fbace02e0680d9e306861ad61e801cea78`  
		Last Modified: Mon, 02 Apr 2018 18:31:50 GMT  
		Size: 2.5 MB (2454042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e20ca4b9ec3576ca62f6f36652883341a35f6f13d395f347f27b7e1e8d1571`  
		Last Modified: Mon, 02 Apr 2018 18:32:06 GMT  
		Size: 103.1 MB (103083823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaad243a8fbd7186e4a5f39949c23389c0ebd1f2c073d8c8a27642333f9ad44`  
		Last Modified: Mon, 02 Apr 2018 18:31:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:3eb167c588068b48c5e50375dc2bd49407abab7cfa7fc994c2a8acffa1b0df0d
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
$ docker pull redmine@sha256:3eb167c588068b48c5e50375dc2bd49407abab7cfa7fc994c2a8acffa1b0df0d
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
$ docker pull redmine@sha256:7d1bb81d763039e2714617c93474472cdec6ba1f5ffc0f02c815db50345ea793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.9-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:71ce210d0a338aee494e82723a0afa30baf712471bdda2a1dc9b0a76843a70b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273701245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913923502704a889df63fd617a9b9f83c70c7dbced79d0514ce623dfcd9e0134`
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
# Sat, 31 Mar 2018 07:17:07 GMT
ENV PASSENGER_VERSION=5.2.2
# Sat, 31 Mar 2018 07:17:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Mar 2018 07:17:41 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 31 Mar 2018 07:17:42 GMT
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
	-	`sha256:9f666a30909fe0ae3cd9090fa04ab862dd32bf7038ed30b835994704e56f35aa`  
		Last Modified: Sat, 31 Mar 2018 07:59:07 GMT  
		Size: 18.5 MB (18459562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8b0cd24943751321185b943a58038f98262f8f15f9496641715c236c2bffe`  
		Last Modified: Sat, 31 Mar 2018 07:59:02 GMT  
		Size: 4.4 MB (4371929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:7d1bb81d763039e2714617c93474472cdec6ba1f5ffc0f02c815db50345ea793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:71ce210d0a338aee494e82723a0afa30baf712471bdda2a1dc9b0a76843a70b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273701245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913923502704a889df63fd617a9b9f83c70c7dbced79d0514ce623dfcd9e0134`
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
# Sat, 31 Mar 2018 07:17:07 GMT
ENV PASSENGER_VERSION=5.2.2
# Sat, 31 Mar 2018 07:17:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Mar 2018 07:17:41 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 31 Mar 2018 07:17:42 GMT
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
	-	`sha256:9f666a30909fe0ae3cd9090fa04ab862dd32bf7038ed30b835994704e56f35aa`  
		Last Modified: Sat, 31 Mar 2018 07:59:07 GMT  
		Size: 18.5 MB (18459562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8b0cd24943751321185b943a58038f98262f8f15f9496641715c236c2bffe`  
		Last Modified: Sat, 31 Mar 2018 07:59:02 GMT  
		Size: 4.4 MB (4371929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:3116f9c75d6f43c815979e9f38b2e752502501a5fcbe2cd45624a576eeea90f6
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
$ docker pull redmine@sha256:f788d6be9c159e59681f12fad922620be3771d98c55719a93e4a1332dff41248
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250880210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdd84da2a197b6b9b748db3804306c95ce6d4ed6b70002ae18274c1158f891d4`
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
# Thu, 29 Mar 2018 21:42:20 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 29 Mar 2018 21:42:20 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 29 Mar 2018 21:42:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:44:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:45:00 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:45:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:45:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:45:01 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:45:01 GMT
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
	-	`sha256:00c37b0cc078d2f0decd2f2bd104f14c2ea0fb32b22ad5367dcc01224369bd2a`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 2.4 MB (2392402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1ac84aba5d5bb9b1ebfa70410aa0771c90a33b1c13af2b204cd0b06614a50d`  
		Last Modified: Thu, 29 Mar 2018 23:07:18 GMT  
		Size: 79.4 MB (79365114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecec44bc39f6916d8ef1234b9e45386e2d6e1f928ccf752d829b4052c62b8d00`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:f730259672d7cf3538caf3f739a2acb324c4008551e350463fc614f52c5ee3d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.3 MB (243319003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a4b4b7de146cf67a7ca52a038e0b6013e02b532ed82b565f71affa6ad2fded`
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
# Mon, 02 Apr 2018 18:09:26 GMT
ENV REDMINE_VERSION=3.3.6
# Mon, 02 Apr 2018 18:09:27 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Mon, 02 Apr 2018 18:09:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:14:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:14:04 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:14:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:14:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:14:05 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:14:06 GMT
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
	-	`sha256:7e73a8ed670cc4145383152da1a2316ae168cee4efd719c2b9aeb245a2dfc824`  
		Last Modified: Mon, 02 Apr 2018 18:19:59 GMT  
		Size: 2.4 MB (2392607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5c4ec306b28659475926b94f2a48686609b7c373b2f67182d0a63b69bd7b36`  
		Last Modified: Mon, 02 Apr 2018 18:20:18 GMT  
		Size: 78.6 MB (78628151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada10b6535643cef229ff80fda25cc35363cff476b7a15e23240d4929d3bf9cd`  
		Last Modified: Mon, 02 Apr 2018 18:19:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:39ae899daefd8cfecd5b84deb77b4708b48039c2ec77bf7cbbbbdd4199ee0bd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237519863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418d2b64314259448d85373fa330f37e5aa6bb2dc8b602b47ba1971232f80b36`
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
# Mon, 02 Apr 2018 18:00:38 GMT
ENV REDMINE_VERSION=3.3.6
# Mon, 02 Apr 2018 18:00:39 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Mon, 02 Apr 2018 18:00:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:05:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:05:02 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:05:02 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:05:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:05:02 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:05:03 GMT
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
	-	`sha256:3219b50b6a2e3bf27273e72022f4ece4aee0a2a5a842fe0c3d9315dadef3c1d1`  
		Last Modified: Mon, 02 Apr 2018 18:10:44 GMT  
		Size: 2.4 MB (2392599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa5b0d6bc1657dd6d2633be9fd15aa821df6e95f252269f01d6549de19b1824`  
		Last Modified: Mon, 02 Apr 2018 18:11:00 GMT  
		Size: 78.1 MB (78083503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18abad436d811cf94cbbb2d34f46502edb13c51b787a43ddb009d2dc059cbdb9`  
		Last Modified: Mon, 02 Apr 2018 18:10:42 GMT  
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
$ docker pull redmine@sha256:fcf50d0290f286bfe3cac1f7a32f2de9cd4fe369a33a3d3ddecbf5a4b1180e75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250152793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e4a9af02195f989ba169077178817816543e2fa36e9be89e1a6f87ee203bca`
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
# Mon, 02 Apr 2018 19:59:09 GMT
ENV REDMINE_VERSION=3.3.6
# Mon, 02 Apr 2018 19:59:10 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Mon, 02 Apr 2018 19:59:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 20:13:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 20:13:31 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 20:13:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 20:13:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 20:13:39 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 20:13:40 GMT
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
	-	`sha256:99f0d7891523f176e92e16b26d2263d62be13e1d4d85d142dccd462c3a3b7ec0`  
		Last Modified: Mon, 02 Apr 2018 20:27:08 GMT  
		Size: 2.4 MB (2392599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb8ab3c5d5cc8d7923a41e59bcf640d9402b75202479172ad380d8084c6f1fe`  
		Last Modified: Mon, 02 Apr 2018 20:27:27 GMT  
		Size: 79.6 MB (79566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347703f832356f0f55797ddbf6d6f146e1b46ddf62b1f437c5ddffb3836aedd5`  
		Last Modified: Mon, 02 Apr 2018 20:27:08 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:d991087bffa3c88cd18870e772d4c6bf0a5b3f7f04211984860ae3468a702ebd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256910523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a41037c759c14970ab75f2326f92854deff0338718315c555c9bc2d1601ef1`
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
# Mon, 02 Apr 2018 18:25:45 GMT
ENV REDMINE_VERSION=3.3.6
# Mon, 02 Apr 2018 18:25:45 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Mon, 02 Apr 2018 18:25:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:28:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:28:36 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:28:36 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:28:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:28:37 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:28:37 GMT
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
	-	`sha256:19d9d96f4356596b040a9814510619f2eaf7fd2d50969a39de9b5af3d379b305`  
		Last Modified: Mon, 02 Apr 2018 18:32:34 GMT  
		Size: 2.4 MB (2392400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d53ee4288e183826f24ac39824a9c2db2e9a7c77b8575bf0de454eab23fe284`  
		Last Modified: Mon, 02 Apr 2018 18:32:50 GMT  
		Size: 81.8 MB (81773315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb09b8b6ecd94245396dca18037af12847dec6bd0463d8d9d98e46133f4534e`  
		Last Modified: Mon, 02 Apr 2018 18:32:33 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.6`

```console
$ docker pull redmine@sha256:3116f9c75d6f43c815979e9f38b2e752502501a5fcbe2cd45624a576eeea90f6
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
$ docker pull redmine@sha256:f788d6be9c159e59681f12fad922620be3771d98c55719a93e4a1332dff41248
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.9 MB (250880210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdd84da2a197b6b9b748db3804306c95ce6d4ed6b70002ae18274c1158f891d4`
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
# Thu, 29 Mar 2018 21:42:20 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 29 Mar 2018 21:42:20 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 29 Mar 2018 21:42:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:44:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:45:00 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:45:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:45:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:45:01 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:45:01 GMT
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
	-	`sha256:00c37b0cc078d2f0decd2f2bd104f14c2ea0fb32b22ad5367dcc01224369bd2a`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 2.4 MB (2392402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1ac84aba5d5bb9b1ebfa70410aa0771c90a33b1c13af2b204cd0b06614a50d`  
		Last Modified: Thu, 29 Mar 2018 23:07:18 GMT  
		Size: 79.4 MB (79365114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecec44bc39f6916d8ef1234b9e45386e2d6e1f928ccf752d829b4052c62b8d00`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm variant v5

```console
$ docker pull redmine@sha256:f730259672d7cf3538caf3f739a2acb324c4008551e350463fc614f52c5ee3d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.3 MB (243319003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a4b4b7de146cf67a7ca52a038e0b6013e02b532ed82b565f71affa6ad2fded`
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
# Mon, 02 Apr 2018 18:09:26 GMT
ENV REDMINE_VERSION=3.3.6
# Mon, 02 Apr 2018 18:09:27 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Mon, 02 Apr 2018 18:09:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:14:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:14:04 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:14:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:14:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:14:05 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:14:06 GMT
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
	-	`sha256:7e73a8ed670cc4145383152da1a2316ae168cee4efd719c2b9aeb245a2dfc824`  
		Last Modified: Mon, 02 Apr 2018 18:19:59 GMT  
		Size: 2.4 MB (2392607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5c4ec306b28659475926b94f2a48686609b7c373b2f67182d0a63b69bd7b36`  
		Last Modified: Mon, 02 Apr 2018 18:20:18 GMT  
		Size: 78.6 MB (78628151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada10b6535643cef229ff80fda25cc35363cff476b7a15e23240d4929d3bf9cd`  
		Last Modified: Mon, 02 Apr 2018 18:19:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm variant v7

```console
$ docker pull redmine@sha256:39ae899daefd8cfecd5b84deb77b4708b48039c2ec77bf7cbbbbdd4199ee0bd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.5 MB (237519863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418d2b64314259448d85373fa330f37e5aa6bb2dc8b602b47ba1971232f80b36`
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
# Mon, 02 Apr 2018 18:00:38 GMT
ENV REDMINE_VERSION=3.3.6
# Mon, 02 Apr 2018 18:00:39 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Mon, 02 Apr 2018 18:00:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:05:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:05:02 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:05:02 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:05:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:05:02 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:05:03 GMT
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
	-	`sha256:3219b50b6a2e3bf27273e72022f4ece4aee0a2a5a842fe0c3d9315dadef3c1d1`  
		Last Modified: Mon, 02 Apr 2018 18:10:44 GMT  
		Size: 2.4 MB (2392599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa5b0d6bc1657dd6d2633be9fd15aa821df6e95f252269f01d6549de19b1824`  
		Last Modified: Mon, 02 Apr 2018 18:11:00 GMT  
		Size: 78.1 MB (78083503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18abad436d811cf94cbbb2d34f46502edb13c51b787a43ddb009d2dc059cbdb9`  
		Last Modified: Mon, 02 Apr 2018 18:10:42 GMT  
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
$ docker pull redmine@sha256:fcf50d0290f286bfe3cac1f7a32f2de9cd4fe369a33a3d3ddecbf5a4b1180e75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250152793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e4a9af02195f989ba169077178817816543e2fa36e9be89e1a6f87ee203bca`
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
# Mon, 02 Apr 2018 19:59:09 GMT
ENV REDMINE_VERSION=3.3.6
# Mon, 02 Apr 2018 19:59:10 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Mon, 02 Apr 2018 19:59:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 20:13:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 20:13:31 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 20:13:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 20:13:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 20:13:39 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 20:13:40 GMT
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
	-	`sha256:99f0d7891523f176e92e16b26d2263d62be13e1d4d85d142dccd462c3a3b7ec0`  
		Last Modified: Mon, 02 Apr 2018 20:27:08 GMT  
		Size: 2.4 MB (2392599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb8ab3c5d5cc8d7923a41e59bcf640d9402b75202479172ad380d8084c6f1fe`  
		Last Modified: Mon, 02 Apr 2018 20:27:27 GMT  
		Size: 79.6 MB (79566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347703f832356f0f55797ddbf6d6f146e1b46ddf62b1f437c5ddffb3836aedd5`  
		Last Modified: Mon, 02 Apr 2018 20:27:08 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; s390x

```console
$ docker pull redmine@sha256:d991087bffa3c88cd18870e772d4c6bf0a5b3f7f04211984860ae3468a702ebd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256910523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a41037c759c14970ab75f2326f92854deff0338718315c555c9bc2d1601ef1`
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
# Mon, 02 Apr 2018 18:25:45 GMT
ENV REDMINE_VERSION=3.3.6
# Mon, 02 Apr 2018 18:25:45 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Mon, 02 Apr 2018 18:25:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:28:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:28:36 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:28:36 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:28:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:28:37 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:28:37 GMT
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
	-	`sha256:19d9d96f4356596b040a9814510619f2eaf7fd2d50969a39de9b5af3d379b305`  
		Last Modified: Mon, 02 Apr 2018 18:32:34 GMT  
		Size: 2.4 MB (2392400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d53ee4288e183826f24ac39824a9c2db2e9a7c77b8575bf0de454eab23fe284`  
		Last Modified: Mon, 02 Apr 2018 18:32:50 GMT  
		Size: 81.8 MB (81773315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb09b8b6ecd94245396dca18037af12847dec6bd0463d8d9d98e46133f4534e`  
		Last Modified: Mon, 02 Apr 2018 18:32:33 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.6-passenger`

```console
$ docker pull redmine@sha256:e21a8ea84d2d9125157c4c083521d5dcc998ebfd6f717b079f1f571cffc1ef09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.6-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:bf4ae8f95603cf0ea8d46e93e806871a59d1959a0fdaed0883bcd0b52c3830aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273711847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8ffeb4273d4e97c119c5b8640c76f4f04724f2880554284f03429371d33585`
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
# Thu, 29 Mar 2018 21:42:20 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 29 Mar 2018 21:42:20 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 29 Mar 2018 21:42:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:44:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:45:00 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:45:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:45:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:45:01 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:45:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Mar 2018 07:12:47 GMT
ENV PASSENGER_VERSION=5.2.2
# Sat, 31 Mar 2018 07:13:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Mar 2018 07:13:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 31 Mar 2018 07:13:18 GMT
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
	-	`sha256:00c37b0cc078d2f0decd2f2bd104f14c2ea0fb32b22ad5367dcc01224369bd2a`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 2.4 MB (2392402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1ac84aba5d5bb9b1ebfa70410aa0771c90a33b1c13af2b204cd0b06614a50d`  
		Last Modified: Thu, 29 Mar 2018 23:07:18 GMT  
		Size: 79.4 MB (79365114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecec44bc39f6916d8ef1234b9e45386e2d6e1f928ccf752d829b4052c62b8d00`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2745d9dea96daa9d16ee2792d609722f27a46dbcbd396d1f44bcf90750358021`  
		Last Modified: Sat, 31 Mar 2018 07:55:08 GMT  
		Size: 18.5 MB (18459708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be55cc773f70fbccceab41ed23500ae5b63d6a6205a05b5d7d657ba49bafbf0`  
		Last Modified: Sat, 31 Mar 2018 07:55:03 GMT  
		Size: 4.4 MB (4371929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:e21a8ea84d2d9125157c4c083521d5dcc998ebfd6f717b079f1f571cffc1ef09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:bf4ae8f95603cf0ea8d46e93e806871a59d1959a0fdaed0883bcd0b52c3830aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273711847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8ffeb4273d4e97c119c5b8640c76f4f04724f2880554284f03429371d33585`
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
# Thu, 29 Mar 2018 21:42:20 GMT
ENV REDMINE_VERSION=3.3.6
# Thu, 29 Mar 2018 21:42:20 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Thu, 29 Mar 2018 21:42:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:44:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:45:00 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:45:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:45:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:45:01 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:45:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Mar 2018 07:12:47 GMT
ENV PASSENGER_VERSION=5.2.2
# Sat, 31 Mar 2018 07:13:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Mar 2018 07:13:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 31 Mar 2018 07:13:18 GMT
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
	-	`sha256:00c37b0cc078d2f0decd2f2bd104f14c2ea0fb32b22ad5367dcc01224369bd2a`  
		Last Modified: Thu, 29 Mar 2018 23:06:59 GMT  
		Size: 2.4 MB (2392402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1ac84aba5d5bb9b1ebfa70410aa0771c90a33b1c13af2b204cd0b06614a50d`  
		Last Modified: Thu, 29 Mar 2018 23:07:18 GMT  
		Size: 79.4 MB (79365114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecec44bc39f6916d8ef1234b9e45386e2d6e1f928ccf752d829b4052c62b8d00`  
		Last Modified: Thu, 29 Mar 2018 23:06:57 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2745d9dea96daa9d16ee2792d609722f27a46dbcbd396d1f44bcf90750358021`  
		Last Modified: Sat, 31 Mar 2018 07:55:08 GMT  
		Size: 18.5 MB (18459708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be55cc773f70fbccceab41ed23500ae5b63d6a6205a05b5d7d657ba49bafbf0`  
		Last Modified: Sat, 31 Mar 2018 07:55:03 GMT  
		Size: 4.4 MB (4371929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:391bcf6c29ed5988b58be3d7dcf01d0bf30a3053f067a38861f4acdfbcb5ffc8
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
$ docker pull redmine@sha256:5e3f8240281e0df3114db734dc84692406ffd333df0f7389bff84f0eecdb9968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.2 MB (260242426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b5c21381816e92864a3259fe4ff20a66f535ee5aab6e62c653f49890b44d8d`
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
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 29 Mar 2018 21:25:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:28:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:28:23 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:28:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:28:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:28:24 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:28:25 GMT
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
	-	`sha256:1fd9833329e6b9158dd817ee555ecc536230bbe84d63c9728b8114e784004e95`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.5 MB (2454054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c0a11c79d30317a9736f9f2b346e78b7f86f26f3e019a6388516cb59ee3b9`  
		Last Modified: Thu, 29 Mar 2018 22:32:09 GMT  
		Size: 99.3 MB (99271669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57c06f9aebefffe75ff4206a4510f53c6f3a5b973538864d1922bfab83eb092`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a5891ea329bdd4c5d2b24cd5a26f94337f0e4a11524f19b4d4f385fc2a1bde3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253612366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ca5073469871d75220d273bfe3e5f53cfec7dccac4ebaea17a973f17e5ea29`
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
# Mon, 02 Apr 2018 18:02:15 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 18:02:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 18:02:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:07:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:07:43 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:07:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:07:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:07:44 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:07:44 GMT
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
	-	`sha256:53e9edbb4b63153f00c5aa37359c1691a406aa6d7aebae3c6d1e2b998c9e216a`  
		Last Modified: Mon, 02 Apr 2018 18:19:14 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afb11883c80e6a39433328f972c1467e23cb6451947b3c8324b8884c32e9989`  
		Last Modified: Mon, 02 Apr 2018 18:19:41 GMT  
		Size: 98.6 MB (98616299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20a8aacfc60b3ba5413b38b6d5856f504b78d8c4bb1741e41e3806949b7412f`  
		Last Modified: Mon, 02 Apr 2018 18:19:12 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f6da941f788c5c7cc67941dd94389e7f2ee98fa9e0426f3fa73bc159f5d0cdf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247632418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b584d7bb47a5ea99b921e07085beccd52a7fbb5490c49f52d512006e7a0e687`
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
# Mon, 02 Apr 2018 17:53:41 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 17:53:42 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 17:53:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 17:58:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 17:58:46 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 17:58:47 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 17:58:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 17:58:47 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 17:58:47 GMT
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
	-	`sha256:e2186621bee74b83c5362240b9232185f73bf428ec7ff0c21ff6209702827b41`  
		Last Modified: Mon, 02 Apr 2018 18:09:57 GMT  
		Size: 2.5 MB (2454582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231d819c2f98d7ef28da30da9d57ae792d7c965a22b18d43e04cf4e5021cb055`  
		Last Modified: Mon, 02 Apr 2018 18:10:21 GMT  
		Size: 97.8 MB (97800971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a169f2dfa1db7723b39b3da6ed5fc81f043f827aa25944a025cf369519cb9135`  
		Last Modified: Mon, 02 Apr 2018 18:09:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:156f42d7fe5c72101ef6bae328f5e876071f0800d982c0ea91419f3ecf5f0d9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252368042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528e1afe4900fdd5ccb408b222e4a7e316a7709c1625fccd316f7170a7455eb0`
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
# Thu, 15 Mar 2018 02:14:59 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Mar 2018 02:14:59 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Mar 2018 02:15:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:15:01 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 02:28:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 02:28:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 02:28:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 02:28:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 02:28:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 02:28:21 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:25:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:26:36 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:26:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:26:55 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:28:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:29:06 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:29:07 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 10:29:07 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 10:29:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 10:29:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 10:39:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 10:39:21 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 10:39:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 10:39:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 10:39:40 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 10:39:41 GMT
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
	-	`sha256:0e599c5d9ca4339df35061b386b5ff5f8e83c4ee40955c1a8294821e75364f4f`  
		Last Modified: Thu, 15 Mar 2018 03:11:51 GMT  
		Size: 21.2 MB (21246248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836d4b9fa3283dc86af0ece6f2f68db23340795521476f95a2e99ce4bf01664`  
		Last Modified: Thu, 15 Mar 2018 03:11:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d262dc1baecb9c0f22f9c320730519efa577822d01d80b7c9b4e71485383d84`  
		Last Modified: Thu, 15 Mar 2018 11:07:14 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afad2bb6d11553c4be6fd5c99e565d29be9b0632075eb318ff327fdc1849d0b8`  
		Last Modified: Thu, 15 Mar 2018 11:07:18 GMT  
		Size: 14.5 MB (14463254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe5f5d29747dde7240098775124a7332b69be478365d19339fa264535231fc6`  
		Last Modified: Thu, 15 Mar 2018 11:07:12 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e440e1c0426831c33e81a713780554eef683bc1a44cf222c970fbe3ced5b795`  
		Last Modified: Thu, 15 Mar 2018 11:07:10 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba83a02f2d9d9c8251b1915dcdae1787f48a62ebb2a5e61a71190491a22e858`  
		Last Modified: Thu, 15 Mar 2018 11:07:30 GMT  
		Size: 55.8 MB (55794744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a126ee17a2b8d734cd96c49a608f3d79f361241d30da6736856399c3d5e0e9c7`  
		Last Modified: Thu, 15 Mar 2018 11:07:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e79c714ee5d58964ed3a555f05b26881abc6e56c0e4a2099b274c600d3fbcc7`  
		Last Modified: Thu, 15 Mar 2018 11:07:11 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b971bdcb53ded545ae3c9de55547a918db8240b4b426a6c9913a95be9ac25bf`  
		Last Modified: Thu, 15 Mar 2018 11:07:43 GMT  
		Size: 98.6 MB (98639593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cbdbe1eabaada204df23cbd5a969bd5aac5e191162a23b30e0e13162651564`  
		Last Modified: Thu, 15 Mar 2018 11:07:09 GMT  
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
$ docker pull redmine@sha256:b990acdb8d5e30887fe4f70edf33a5b6f8b64e653895833a92861584e224634d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259480224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226a5051757d93a1f59e614571d4f83388f800bad394ccd4a7b6a2c51c52357d`
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
# Mon, 02 Apr 2018 19:40:55 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 19:40:57 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 19:41:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 19:53:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 19:53:35 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 19:53:40 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 19:53:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 19:53:43 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 19:53:45 GMT
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
	-	`sha256:87593c01a6c3b2594dcc9a8b2195ab5e2fb1878167735a91d2b8a641495c730e`  
		Last Modified: Mon, 02 Apr 2018 20:26:08 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643dd2350d06f335c51f493d181042d072ac92fac73d0ef66bdad0a45f0a369`  
		Last Modified: Mon, 02 Apr 2018 20:26:29 GMT  
		Size: 100.0 MB (99973707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a543ea463dc0c10717303836efa78e1b25d6edf13311b219672adacb5d08f2`  
		Last Modified: Mon, 02 Apr 2018 20:26:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:a7c53564291d767e1dab97cb70da36ecf371e35cb431b5258d8ebdf57cc1482a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264428082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e86ff951dd58bda221af4718b047e655025c33cdaf6fd2316f3553151548f18`
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
# Mon, 02 Apr 2018 18:21:27 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 18:21:27 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 18:21:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:24:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:24:27 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:24:27 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:24:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:24:27 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:24:28 GMT
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
	-	`sha256:1c608398c64ec96d6306627f6aa743fbace02e0680d9e306861ad61e801cea78`  
		Last Modified: Mon, 02 Apr 2018 18:31:50 GMT  
		Size: 2.5 MB (2454042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e20ca4b9ec3576ca62f6f36652883341a35f6f13d395f347f27b7e1e8d1571`  
		Last Modified: Mon, 02 Apr 2018 18:32:06 GMT  
		Size: 103.1 MB (103083823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaad243a8fbd7186e4a5f39949c23389c0ebd1f2c073d8c8a27642333f9ad44`  
		Last Modified: Mon, 02 Apr 2018 18:31:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.4`

```console
$ docker pull redmine@sha256:391bcf6c29ed5988b58be3d7dcf01d0bf30a3053f067a38861f4acdfbcb5ffc8
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
$ docker pull redmine@sha256:5e3f8240281e0df3114db734dc84692406ffd333df0f7389bff84f0eecdb9968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.2 MB (260242426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b5c21381816e92864a3259fe4ff20a66f535ee5aab6e62c653f49890b44d8d`
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
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 29 Mar 2018 21:25:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:28:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:28:23 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:28:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:28:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:28:24 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:28:25 GMT
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
	-	`sha256:1fd9833329e6b9158dd817ee555ecc536230bbe84d63c9728b8114e784004e95`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.5 MB (2454054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c0a11c79d30317a9736f9f2b346e78b7f86f26f3e019a6388516cb59ee3b9`  
		Last Modified: Thu, 29 Mar 2018 22:32:09 GMT  
		Size: 99.3 MB (99271669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57c06f9aebefffe75ff4206a4510f53c6f3a5b973538864d1922bfab83eb092`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a5891ea329bdd4c5d2b24cd5a26f94337f0e4a11524f19b4d4f385fc2a1bde3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253612366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ca5073469871d75220d273bfe3e5f53cfec7dccac4ebaea17a973f17e5ea29`
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
# Mon, 02 Apr 2018 18:02:15 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 18:02:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 18:02:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:07:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:07:43 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:07:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:07:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:07:44 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:07:44 GMT
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
	-	`sha256:53e9edbb4b63153f00c5aa37359c1691a406aa6d7aebae3c6d1e2b998c9e216a`  
		Last Modified: Mon, 02 Apr 2018 18:19:14 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afb11883c80e6a39433328f972c1467e23cb6451947b3c8324b8884c32e9989`  
		Last Modified: Mon, 02 Apr 2018 18:19:41 GMT  
		Size: 98.6 MB (98616299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20a8aacfc60b3ba5413b38b6d5856f504b78d8c4bb1741e41e3806949b7412f`  
		Last Modified: Mon, 02 Apr 2018 18:19:12 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f6da941f788c5c7cc67941dd94389e7f2ee98fa9e0426f3fa73bc159f5d0cdf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247632418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b584d7bb47a5ea99b921e07085beccd52a7fbb5490c49f52d512006e7a0e687`
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
# Mon, 02 Apr 2018 17:53:41 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 17:53:42 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 17:53:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 17:58:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 17:58:46 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 17:58:47 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 17:58:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 17:58:47 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 17:58:47 GMT
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
	-	`sha256:e2186621bee74b83c5362240b9232185f73bf428ec7ff0c21ff6209702827b41`  
		Last Modified: Mon, 02 Apr 2018 18:09:57 GMT  
		Size: 2.5 MB (2454582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231d819c2f98d7ef28da30da9d57ae792d7c965a22b18d43e04cf4e5021cb055`  
		Last Modified: Mon, 02 Apr 2018 18:10:21 GMT  
		Size: 97.8 MB (97800971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a169f2dfa1db7723b39b3da6ed5fc81f043f827aa25944a025cf369519cb9135`  
		Last Modified: Mon, 02 Apr 2018 18:09:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:156f42d7fe5c72101ef6bae328f5e876071f0800d982c0ea91419f3ecf5f0d9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252368042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528e1afe4900fdd5ccb408b222e4a7e316a7709c1625fccd316f7170a7455eb0`
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
# Thu, 15 Mar 2018 02:14:59 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Mar 2018 02:14:59 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Mar 2018 02:15:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:15:01 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 02:28:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 02:28:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 02:28:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 02:28:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 02:28:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 02:28:21 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:25:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:26:36 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:26:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:26:55 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:28:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:29:06 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:29:07 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 10:29:07 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 10:29:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 10:29:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 10:39:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 10:39:21 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 10:39:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 10:39:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 10:39:40 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 10:39:41 GMT
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
	-	`sha256:0e599c5d9ca4339df35061b386b5ff5f8e83c4ee40955c1a8294821e75364f4f`  
		Last Modified: Thu, 15 Mar 2018 03:11:51 GMT  
		Size: 21.2 MB (21246248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836d4b9fa3283dc86af0ece6f2f68db23340795521476f95a2e99ce4bf01664`  
		Last Modified: Thu, 15 Mar 2018 03:11:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d262dc1baecb9c0f22f9c320730519efa577822d01d80b7c9b4e71485383d84`  
		Last Modified: Thu, 15 Mar 2018 11:07:14 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afad2bb6d11553c4be6fd5c99e565d29be9b0632075eb318ff327fdc1849d0b8`  
		Last Modified: Thu, 15 Mar 2018 11:07:18 GMT  
		Size: 14.5 MB (14463254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe5f5d29747dde7240098775124a7332b69be478365d19339fa264535231fc6`  
		Last Modified: Thu, 15 Mar 2018 11:07:12 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e440e1c0426831c33e81a713780554eef683bc1a44cf222c970fbe3ced5b795`  
		Last Modified: Thu, 15 Mar 2018 11:07:10 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba83a02f2d9d9c8251b1915dcdae1787f48a62ebb2a5e61a71190491a22e858`  
		Last Modified: Thu, 15 Mar 2018 11:07:30 GMT  
		Size: 55.8 MB (55794744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a126ee17a2b8d734cd96c49a608f3d79f361241d30da6736856399c3d5e0e9c7`  
		Last Modified: Thu, 15 Mar 2018 11:07:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e79c714ee5d58964ed3a555f05b26881abc6e56c0e4a2099b274c600d3fbcc7`  
		Last Modified: Thu, 15 Mar 2018 11:07:11 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b971bdcb53ded545ae3c9de55547a918db8240b4b426a6c9913a95be9ac25bf`  
		Last Modified: Thu, 15 Mar 2018 11:07:43 GMT  
		Size: 98.6 MB (98639593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cbdbe1eabaada204df23cbd5a969bd5aac5e191162a23b30e0e13162651564`  
		Last Modified: Thu, 15 Mar 2018 11:07:09 GMT  
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
$ docker pull redmine@sha256:b990acdb8d5e30887fe4f70edf33a5b6f8b64e653895833a92861584e224634d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259480224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226a5051757d93a1f59e614571d4f83388f800bad394ccd4a7b6a2c51c52357d`
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
# Mon, 02 Apr 2018 19:40:55 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 19:40:57 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 19:41:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 19:53:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 19:53:35 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 19:53:40 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 19:53:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 19:53:43 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 19:53:45 GMT
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
	-	`sha256:87593c01a6c3b2594dcc9a8b2195ab5e2fb1878167735a91d2b8a641495c730e`  
		Last Modified: Mon, 02 Apr 2018 20:26:08 GMT  
		Size: 2.5 MB (2454585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e643dd2350d06f335c51f493d181042d072ac92fac73d0ef66bdad0a45f0a369`  
		Last Modified: Mon, 02 Apr 2018 20:26:29 GMT  
		Size: 100.0 MB (99973707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a543ea463dc0c10717303836efa78e1b25d6edf13311b219672adacb5d08f2`  
		Last Modified: Mon, 02 Apr 2018 20:26:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; s390x

```console
$ docker pull redmine@sha256:a7c53564291d767e1dab97cb70da36ecf371e35cb431b5258d8ebdf57cc1482a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264428082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e86ff951dd58bda221af4718b047e655025c33cdaf6fd2316f3553151548f18`
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
# Mon, 02 Apr 2018 18:21:27 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 18:21:27 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 18:21:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:24:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:24:27 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:24:27 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:24:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:24:27 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:24:28 GMT
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
	-	`sha256:1c608398c64ec96d6306627f6aa743fbace02e0680d9e306861ad61e801cea78`  
		Last Modified: Mon, 02 Apr 2018 18:31:50 GMT  
		Size: 2.5 MB (2454042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e20ca4b9ec3576ca62f6f36652883341a35f6f13d395f347f27b7e1e8d1571`  
		Last Modified: Mon, 02 Apr 2018 18:32:06 GMT  
		Size: 103.1 MB (103083823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaad243a8fbd7186e4a5f39949c23389c0ebd1f2c073d8c8a27642333f9ad44`  
		Last Modified: Mon, 02 Apr 2018 18:31:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.4-passenger`

```console
$ docker pull redmine@sha256:987de730f45622ac1378eb0a55811cdf4c6a5826704dd89d6e87f1ac61737b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:746568e38629a26a419652ff623a6b1737c12b0df648d59b0fcbd8898dc721a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283074056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b901f429848b9493be7589e05c084cda6628f2119fad58140660b64df03a2f`
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
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 29 Mar 2018 21:25:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:28:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:28:23 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:28:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:28:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:28:24 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:28:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Mar 2018 07:05:45 GMT
ENV PASSENGER_VERSION=5.2.2
# Sat, 31 Mar 2018 07:06:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Mar 2018 07:06:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 31 Mar 2018 07:06:19 GMT
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
	-	`sha256:1fd9833329e6b9158dd817ee555ecc536230bbe84d63c9728b8114e784004e95`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.5 MB (2454054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c0a11c79d30317a9736f9f2b346e78b7f86f26f3e019a6388516cb59ee3b9`  
		Last Modified: Thu, 29 Mar 2018 22:32:09 GMT  
		Size: 99.3 MB (99271669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57c06f9aebefffe75ff4206a4510f53c6f3a5b973538864d1922bfab83eb092`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816ba20aa29c6e63d8bade55f9dae92916579236488af2cfe45e411f2c11f109`  
		Last Modified: Sat, 31 Mar 2018 07:35:35 GMT  
		Size: 18.5 MB (18459701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cb5b4acfb56e509f56516c35a37162a57f036677472179872afc20a53fafe4`  
		Last Modified: Sat, 31 Mar 2018 07:35:29 GMT  
		Size: 4.4 MB (4371929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:987de730f45622ac1378eb0a55811cdf4c6a5826704dd89d6e87f1ac61737b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:746568e38629a26a419652ff623a6b1737c12b0df648d59b0fcbd8898dc721a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283074056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b901f429848b9493be7589e05c084cda6628f2119fad58140660b64df03a2f`
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
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 29 Mar 2018 21:25:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:28:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:28:23 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:28:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:28:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:28:24 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:28:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Mar 2018 07:05:45 GMT
ENV PASSENGER_VERSION=5.2.2
# Sat, 31 Mar 2018 07:06:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Mar 2018 07:06:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 31 Mar 2018 07:06:19 GMT
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
	-	`sha256:1fd9833329e6b9158dd817ee555ecc536230bbe84d63c9728b8114e784004e95`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.5 MB (2454054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c0a11c79d30317a9736f9f2b346e78b7f86f26f3e019a6388516cb59ee3b9`  
		Last Modified: Thu, 29 Mar 2018 22:32:09 GMT  
		Size: 99.3 MB (99271669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57c06f9aebefffe75ff4206a4510f53c6f3a5b973538864d1922bfab83eb092`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816ba20aa29c6e63d8bade55f9dae92916579236488af2cfe45e411f2c11f109`  
		Last Modified: Sat, 31 Mar 2018 07:35:35 GMT  
		Size: 18.5 MB (18459701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cb5b4acfb56e509f56516c35a37162a57f036677472179872afc20a53fafe4`  
		Last Modified: Sat, 31 Mar 2018 07:35:29 GMT  
		Size: 4.4 MB (4371929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:987de730f45622ac1378eb0a55811cdf4c6a5826704dd89d6e87f1ac61737b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:746568e38629a26a419652ff623a6b1737c12b0df648d59b0fcbd8898dc721a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283074056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b901f429848b9493be7589e05c084cda6628f2119fad58140660b64df03a2f`
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
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 29 Mar 2018 21:25:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:28:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:28:23 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:28:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:28:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:28:24 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:28:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Mar 2018 07:05:45 GMT
ENV PASSENGER_VERSION=5.2.2
# Sat, 31 Mar 2018 07:06:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Mar 2018 07:06:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 31 Mar 2018 07:06:19 GMT
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
	-	`sha256:1fd9833329e6b9158dd817ee555ecc536230bbe84d63c9728b8114e784004e95`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.5 MB (2454054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c0a11c79d30317a9736f9f2b346e78b7f86f26f3e019a6388516cb59ee3b9`  
		Last Modified: Thu, 29 Mar 2018 22:32:09 GMT  
		Size: 99.3 MB (99271669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57c06f9aebefffe75ff4206a4510f53c6f3a5b973538864d1922bfab83eb092`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816ba20aa29c6e63d8bade55f9dae92916579236488af2cfe45e411f2c11f109`  
		Last Modified: Sat, 31 Mar 2018 07:35:35 GMT  
		Size: 18.5 MB (18459701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cb5b4acfb56e509f56516c35a37162a57f036677472179872afc20a53fafe4`  
		Last Modified: Sat, 31 Mar 2018 07:35:29 GMT  
		Size: 4.4 MB (4371929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:e6ffd0e1030aa8ed97666a56fd27de5e441c6fa4ce77feaf643bfbf4071b050d
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
$ docker pull redmine@sha256:5e3f8240281e0df3114db734dc84692406ffd333df0f7389bff84f0eecdb9968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.2 MB (260242426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b5c21381816e92864a3259fe4ff20a66f535ee5aab6e62c653f49890b44d8d`
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
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 29 Mar 2018 21:25:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:28:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:28:23 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:28:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:28:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:28:24 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:28:25 GMT
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
	-	`sha256:1fd9833329e6b9158dd817ee555ecc536230bbe84d63c9728b8114e784004e95`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.5 MB (2454054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c0a11c79d30317a9736f9f2b346e78b7f86f26f3e019a6388516cb59ee3b9`  
		Last Modified: Thu, 29 Mar 2018 22:32:09 GMT  
		Size: 99.3 MB (99271669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57c06f9aebefffe75ff4206a4510f53c6f3a5b973538864d1922bfab83eb092`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a5891ea329bdd4c5d2b24cd5a26f94337f0e4a11524f19b4d4f385fc2a1bde3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253612366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ca5073469871d75220d273bfe3e5f53cfec7dccac4ebaea17a973f17e5ea29`
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
# Mon, 02 Apr 2018 18:02:15 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 18:02:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 18:02:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:07:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:07:43 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:07:44 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:07:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:07:44 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:07:44 GMT
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
	-	`sha256:53e9edbb4b63153f00c5aa37359c1691a406aa6d7aebae3c6d1e2b998c9e216a`  
		Last Modified: Mon, 02 Apr 2018 18:19:14 GMT  
		Size: 2.5 MB (2454580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afb11883c80e6a39433328f972c1467e23cb6451947b3c8324b8884c32e9989`  
		Last Modified: Mon, 02 Apr 2018 18:19:41 GMT  
		Size: 98.6 MB (98616299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20a8aacfc60b3ba5413b38b6d5856f504b78d8c4bb1741e41e3806949b7412f`  
		Last Modified: Mon, 02 Apr 2018 18:19:12 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f6da941f788c5c7cc67941dd94389e7f2ee98fa9e0426f3fa73bc159f5d0cdf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247632418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b584d7bb47a5ea99b921e07085beccd52a7fbb5490c49f52d512006e7a0e687`
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
# Mon, 02 Apr 2018 17:53:41 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 17:53:42 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 17:53:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 17:58:45 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 17:58:46 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 17:58:47 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 17:58:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 17:58:47 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 17:58:47 GMT
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
	-	`sha256:e2186621bee74b83c5362240b9232185f73bf428ec7ff0c21ff6209702827b41`  
		Last Modified: Mon, 02 Apr 2018 18:09:57 GMT  
		Size: 2.5 MB (2454582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231d819c2f98d7ef28da30da9d57ae792d7c965a22b18d43e04cf4e5021cb055`  
		Last Modified: Mon, 02 Apr 2018 18:10:21 GMT  
		Size: 97.8 MB (97800971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a169f2dfa1db7723b39b3da6ed5fc81f043f827aa25944a025cf369519cb9135`  
		Last Modified: Mon, 02 Apr 2018 18:09:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:156f42d7fe5c72101ef6bae328f5e876071f0800d982c0ea91419f3ecf5f0d9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252368042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528e1afe4900fdd5ccb408b222e4a7e316a7709c1625fccd316f7170a7455eb0`
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
# Thu, 15 Mar 2018 02:14:59 GMT
ENV RUBY_VERSION=2.4.3
# Thu, 15 Mar 2018 02:14:59 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Thu, 15 Mar 2018 02:15:00 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 15 Mar 2018 02:15:01 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Mar 2018 02:28:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Mar 2018 02:28:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Mar 2018 02:28:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Mar 2018 02:28:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 02:28:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Mar 2018 02:28:21 GMT
CMD ["irb"]
# Thu, 15 Mar 2018 10:25:52 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 15 Mar 2018 10:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:26:36 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 10:26:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Mar 2018 10:26:55 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 15 Mar 2018 10:26:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 15 Mar 2018 10:28:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 10:29:06 GMT
ENV RAILS_ENV=production
# Thu, 15 Mar 2018 10:29:07 GMT
WORKDIR /usr/src/redmine
# Thu, 15 Mar 2018 10:29:07 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 15 Mar 2018 10:29:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 15 Mar 2018 10:29:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 15 Mar 2018 10:39:13 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 10:39:21 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 15 Mar 2018 10:39:22 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 15 Mar 2018 10:39:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Mar 2018 10:39:40 GMT
EXPOSE 3000/tcp
# Thu, 15 Mar 2018 10:39:41 GMT
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
	-	`sha256:0e599c5d9ca4339df35061b386b5ff5f8e83c4ee40955c1a8294821e75364f4f`  
		Last Modified: Thu, 15 Mar 2018 03:11:51 GMT  
		Size: 21.2 MB (21246248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d836d4b9fa3283dc86af0ece6f2f68db23340795521476f95a2e99ce4bf01664`  
		Last Modified: Thu, 15 Mar 2018 03:11:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d262dc1baecb9c0f22f9c320730519efa577822d01d80b7c9b4e71485383d84`  
		Last Modified: Thu, 15 Mar 2018 11:07:14 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afad2bb6d11553c4be6fd5c99e565d29be9b0632075eb318ff327fdc1849d0b8`  
		Last Modified: Thu, 15 Mar 2018 11:07:18 GMT  
		Size: 14.5 MB (14463254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe5f5d29747dde7240098775124a7332b69be478365d19339fa264535231fc6`  
		Last Modified: Thu, 15 Mar 2018 11:07:12 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e440e1c0426831c33e81a713780554eef683bc1a44cf222c970fbe3ced5b795`  
		Last Modified: Thu, 15 Mar 2018 11:07:10 GMT  
		Size: 8.2 KB (8153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba83a02f2d9d9c8251b1915dcdae1787f48a62ebb2a5e61a71190491a22e858`  
		Last Modified: Thu, 15 Mar 2018 11:07:30 GMT  
		Size: 55.8 MB (55794744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a126ee17a2b8d734cd96c49a608f3d79f361241d30da6736856399c3d5e0e9c7`  
		Last Modified: Thu, 15 Mar 2018 11:07:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e79c714ee5d58964ed3a555f05b26881abc6e56c0e4a2099b274c600d3fbcc7`  
		Last Modified: Thu, 15 Mar 2018 11:07:11 GMT  
		Size: 2.5 MB (2454044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b971bdcb53ded545ae3c9de55547a918db8240b4b426a6c9913a95be9ac25bf`  
		Last Modified: Thu, 15 Mar 2018 11:07:43 GMT  
		Size: 98.6 MB (98639593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cbdbe1eabaada204df23cbd5a969bd5aac5e191162a23b30e0e13162651564`  
		Last Modified: Thu, 15 Mar 2018 11:07:09 GMT  
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
$ docker pull redmine@sha256:a7c53564291d767e1dab97cb70da36ecf371e35cb431b5258d8ebdf57cc1482a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264428082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e86ff951dd58bda221af4718b047e655025c33cdaf6fd2316f3553151548f18`
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
# Mon, 02 Apr 2018 18:21:27 GMT
ENV REDMINE_VERSION=3.4.4
# Mon, 02 Apr 2018 18:21:27 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Mon, 02 Apr 2018 18:21:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 02 Apr 2018 18:24:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 02 Apr 2018 18:24:27 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 02 Apr 2018 18:24:27 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Mon, 02 Apr 2018 18:24:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Apr 2018 18:24:27 GMT
EXPOSE 3000/tcp
# Mon, 02 Apr 2018 18:24:28 GMT
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
	-	`sha256:1c608398c64ec96d6306627f6aa743fbace02e0680d9e306861ad61e801cea78`  
		Last Modified: Mon, 02 Apr 2018 18:31:50 GMT  
		Size: 2.5 MB (2454042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e20ca4b9ec3576ca62f6f36652883341a35f6f13d395f347f27b7e1e8d1571`  
		Last Modified: Mon, 02 Apr 2018 18:32:06 GMT  
		Size: 103.1 MB (103083823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaad243a8fbd7186e4a5f39949c23389c0ebd1f2c073d8c8a27642333f9ad44`  
		Last Modified: Mon, 02 Apr 2018 18:31:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:987de730f45622ac1378eb0a55811cdf4c6a5826704dd89d6e87f1ac61737b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:746568e38629a26a419652ff623a6b1737c12b0df648d59b0fcbd8898dc721a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283074056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b901f429848b9493be7589e05c084cda6628f2119fad58140660b64df03a2f`
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
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_VERSION=3.4.4
# Thu, 29 Mar 2018 21:25:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Thu, 29 Mar 2018 21:25:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 29 Mar 2018 21:28:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 29 Mar 2018 21:28:23 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 29 Mar 2018 21:28:24 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Thu, 29 Mar 2018 21:28:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Mar 2018 21:28:24 GMT
EXPOSE 3000/tcp
# Thu, 29 Mar 2018 21:28:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Mar 2018 07:05:45 GMT
ENV PASSENGER_VERSION=5.2.2
# Sat, 31 Mar 2018 07:06:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Mar 2018 07:06:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 31 Mar 2018 07:06:19 GMT
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
	-	`sha256:1fd9833329e6b9158dd817ee555ecc536230bbe84d63c9728b8114e784004e95`  
		Last Modified: Thu, 29 Mar 2018 22:31:47 GMT  
		Size: 2.5 MB (2454054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c0a11c79d30317a9736f9f2b346e78b7f86f26f3e019a6388516cb59ee3b9`  
		Last Modified: Thu, 29 Mar 2018 22:32:09 GMT  
		Size: 99.3 MB (99271669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57c06f9aebefffe75ff4206a4510f53c6f3a5b973538864d1922bfab83eb092`  
		Last Modified: Thu, 29 Mar 2018 22:31:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816ba20aa29c6e63d8bade55f9dae92916579236488af2cfe45e411f2c11f109`  
		Last Modified: Sat, 31 Mar 2018 07:35:35 GMT  
		Size: 18.5 MB (18459701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cb5b4acfb56e509f56516c35a37162a57f036677472179872afc20a53fafe4`  
		Last Modified: Sat, 31 Mar 2018 07:35:29 GMT  
		Size: 4.4 MB (4371929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
