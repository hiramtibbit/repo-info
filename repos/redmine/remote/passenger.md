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
