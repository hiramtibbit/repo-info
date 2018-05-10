## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:fb6585a2ca66d4c529c539201af7c9ad29225c08f297150a577ffe30b62b6985
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:96ab89a92b37b48549b4e9a312b7e7bea7e44989585cd3a28ca1802f7fec9fc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283662972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b72e5a8f8094b39e7487af64ff5b763bdc22098347edd3ed7b4a12ed0de4229`
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
# Thu, 10 May 2018 20:42:18 GMT
ENV PASSENGER_VERSION=5.3.0
# Thu, 10 May 2018 20:42:50 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 10 May 2018 20:42:51 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 10 May 2018 20:42:51 GMT
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
	-	`sha256:8b92a12c875ecfdecda78f34d4ab00a13dcb5dc84654d25ab9f948d2a1d8ef6a`  
		Last Modified: Thu, 10 May 2018 20:44:26 GMT  
		Size: 18.7 MB (18743249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015b77406e19ceb3dcff2574665e4cb01c9bebad93615d3aa0ebed9da4c9d575`  
		Last Modified: Thu, 10 May 2018 20:44:24 GMT  
		Size: 4.5 MB (4458459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
