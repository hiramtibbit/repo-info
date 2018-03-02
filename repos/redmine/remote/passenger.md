## `redmine:passenger`

```console
$ docker pull redmine@sha256:8e63577763fe219c51a7864047f87649b4501bb88bf7b330c0e7dd5adbc1e162
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:daa3503816638a1700b5b1a6c4ff9f1b0af44ba9fa1d36d9127d9d58e35a2f43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279265859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ef5d71a6d6abde9c251dc77836e5f20b245f2e87f10035615b9510d63f09d9`
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
# Fri, 02 Mar 2018 21:57:16 GMT
ENV PASSENGER_VERSION=5.2.1
# Fri, 02 Mar 2018 21:57:50 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 02 Mar 2018 21:57:51 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 02 Mar 2018 21:57:51 GMT
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
	-	`sha256:050fa1c498a9d3b77fe50ad020207839bfec9d394dbdcd1e29a19f506bdda3c0`  
		Last Modified: Fri, 02 Mar 2018 21:59:54 GMT  
		Size: 14.5 MB (14492033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33240ba401f849c34b6fa458e212e8d62082a5d659cae3b0ca9c377fa0dc6a2`  
		Last Modified: Fri, 02 Mar 2018 21:59:53 GMT  
		Size: 4.4 MB (4354739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
