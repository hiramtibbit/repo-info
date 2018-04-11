## `redmine:latest`

```console
$ docker pull redmine@sha256:739935e7556cd303117d61194c0242f9f6e3cf76fb7f3c0ae1b91c1029bea027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
