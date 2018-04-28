## `redmine:latest`

```console
$ docker pull redmine@sha256:84449447448ffca13547b6b4bb3d7a4df74e5ce84be0a1c5474f9e131eebc792
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
