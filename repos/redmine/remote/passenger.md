## `redmine:passenger`

```console
$ docker pull redmine@sha256:aeea19f28f60f215a027938aa6c540458c96bb90f1b528a5b088d96bde49be4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:17e8f89bb32ff311633d1dec71e4b2e6c88a6cfeea589df4406c02f92f11620a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 MB (278697103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1d05453dd3d5db70a0f215633f9cccec4e31a8a16402ce63cfab0d62ae3ac7`
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
# Fri, 16 Feb 2018 21:40:43 GMT
ENV PASSENGER_VERSION=5.2.0
# Fri, 16 Feb 2018 21:41:00 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Feb 2018 21:41:12 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 16 Feb 2018 21:41:24 GMT
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
	-	`sha256:7e2c372a469323661a43d7aca8a75700ab3d3bee1ca2030cb98e43a58711694c`  
		Last Modified: Fri, 16 Feb 2018 22:17:55 GMT  
		Size: 14.5 MB (14484422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053bb09963bed7bab7b6f6ef2ea3eb1d6884f73be5a811a1ad0f3d4041973d8b`  
		Last Modified: Fri, 16 Feb 2018 22:17:49 GMT  
		Size: 4.4 MB (4354991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
