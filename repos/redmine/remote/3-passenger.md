## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:44d0a3b240262ce1c9c0704c23e9016139874ea7941eb1fae21f85835b8fcf67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:330f760ea86c11c3e96f2cb4adb3efeed3aa20ffb1ad634229e1987fa67392ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257822186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f64e35ceb96f5f866d31fdf5090472a81e2adcb158210e2de66c7766d86ad8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:32:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:32:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 10:52:31 GMT
ENV RUBY_MAJOR=2.4
# Wed, 03 Apr 2019 22:28:22 GMT
ENV RUBY_VERSION=2.4.6
# Wed, 03 Apr 2019 22:28:22 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Wed, 03 Apr 2019 22:28:22 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Wed, 03 Apr 2019 22:32:11 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 03 Apr 2019 22:32:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 03 Apr 2019 22:32:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 03 Apr 2019 22:32:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 03 Apr 2019 22:32:13 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 03 Apr 2019 22:32:13 GMT
CMD ["irb"]
# Wed, 03 Apr 2019 23:08:20 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 03 Apr 2019 23:08:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 23:09:01 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 03 Apr 2019 23:09:01 GMT
ENV RAILS_ENV=production
# Wed, 03 Apr 2019 23:09:01 GMT
WORKDIR /usr/src/redmine
# Wed, 03 Apr 2019 23:09:02 GMT
ENV HOME=/home/redmine
# Wed, 03 Apr 2019 23:09:02 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 03 Apr 2019 23:09:02 GMT
ENV REDMINE_VERSION=3.4.10
# Wed, 03 Apr 2019 23:09:03 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Wed, 03 Apr 2019 23:09:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 03 Apr 2019 23:12:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 03 Apr 2019 23:12:08 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 03 Apr 2019 23:12:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 03 Apr 2019 23:12:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 23:12:09 GMT
EXPOSE 3000
# Wed, 03 Apr 2019 23:12:09 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 03 Apr 2019 23:12:19 GMT
ENV PASSENGER_VERSION=6.0.2
# Wed, 03 Apr 2019 23:12:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 03 Apr 2019 23:12:34 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 03 Apr 2019 23:12:34 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 03 Apr 2019 23:12:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b0f1e21cda3d97cc441fdf11e7f99ec7b60e2014369b721ee5c87c4f7dc5d`  
		Last Modified: Wed, 27 Mar 2019 11:45:11 GMT  
		Size: 11.2 MB (11172380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c865bf2b94447e89b17356ad091d6a1419cc7b9c2bb80128638ed321b90545ba`  
		Last Modified: Wed, 27 Mar 2019 11:45:08 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04cd23af6df44da3c874f6d27490ad4549a6a57e14b851b184032064e130e44`  
		Last Modified: Wed, 03 Apr 2019 22:52:21 GMT  
		Size: 20.7 MB (20740154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32455a6f357525737ef9b98718e287b3373a7b7aa1a049af613b7863adee2ee`  
		Last Modified: Wed, 03 Apr 2019 22:52:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269f2d9b71a6e0749968ec6833407f198b47a3a6824ab11c5e1658024d180829`  
		Last Modified: Wed, 03 Apr 2019 23:12:48 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147e713c5a20606fe03208978db7f8545b5dd94b474369faa65f3ed25ef76a58`  
		Last Modified: Wed, 03 Apr 2019 23:13:02 GMT  
		Size: 71.9 MB (71893418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987da5be7295f7999377cad66a5cf2a1dff1f3e99c72464ecf83bbf0c73ef6a8`  
		Last Modified: Wed, 03 Apr 2019 23:12:48 GMT  
		Size: 1.3 MB (1303105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f585c53c53046c4ececf86be1490a8eeacd55c6313b887d5f75aa1e08a7f8e`  
		Last Modified: Wed, 03 Apr 2019 23:12:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61de8972a5cbeeb34dc77fd30e1f226f30ac9e904ec92f2789cd782bc24068ff`  
		Last Modified: Wed, 03 Apr 2019 23:12:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ec31ad7fc6f322cdc73f110ab1c94d87650ac32f951451f5a744f9884c60a9`  
		Last Modified: Wed, 03 Apr 2019 23:12:47 GMT  
		Size: 2.5 MB (2461294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3939075d30ae8f876dc96495a16928f48377293edffdb493ad57c28a1fbe39fb`  
		Last Modified: Wed, 03 Apr 2019 23:13:05 GMT  
		Size: 103.2 MB (103203920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53879d2d6d2b863e5e3ce0e90de7f4eff96b4bbc52e087743267dc73a7e3b65e`  
		Last Modified: Wed, 03 Apr 2019 23:12:47 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15bff3ba5372ed357c321f3267d702ceaed4773a4336a075bbe824f61068442`  
		Last Modified: Wed, 03 Apr 2019 23:13:35 GMT  
		Size: 19.7 MB (19651593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd444b2f0aa4b734076dcb6b675c58b06e30388e9be179ce94d4077e529a8f3`  
		Last Modified: Wed, 03 Apr 2019 23:13:34 GMT  
		Size: 4.9 MB (4895953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
