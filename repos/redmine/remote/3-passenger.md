## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:3e6ba8816171377df89e9019fe11475edfdef0c286b310df0ca0ac3751657c38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:e8c3d579c23f7c393b6b0c66ce5be9a1337450174400ee3d8c442a094a41a665
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257706346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3d9ccfdd245ab6c6175e0f1c8297faa4e8c753ed65df406d52ffa1b1738aed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:40:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:40:27 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Feb 2019 03:47:36 GMT
ENV RUBY_MAJOR=2.4
# Wed, 06 Feb 2019 03:47:36 GMT
ENV RUBY_VERSION=2.4.5
# Wed, 06 Feb 2019 03:47:37 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Wed, 06 Feb 2019 03:47:37 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Wed, 06 Feb 2019 03:51:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 06 Feb 2019 03:51:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Feb 2019 03:51:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Feb 2019 03:51:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 03:51:56 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 06 Feb 2019 03:51:56 GMT
CMD ["irb"]
# Wed, 06 Feb 2019 11:39:16 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 06 Feb 2019 11:39:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:39:52 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 06 Feb 2019 11:39:52 GMT
ENV RAILS_ENV=production
# Wed, 06 Feb 2019 11:39:53 GMT
WORKDIR /usr/src/redmine
# Wed, 06 Feb 2019 11:39:53 GMT
ENV HOME=/home/redmine
# Wed, 06 Feb 2019 11:39:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Mon, 25 Feb 2019 21:43:08 GMT
ENV REDMINE_VERSION=3.4.9
# Mon, 25 Feb 2019 21:43:08 GMT
ENV REDMINE_DOWNLOAD_MD5=d99bfaafe50e39cb3d979053c696dbd1
# Mon, 25 Feb 2019 21:43:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Mon, 25 Feb 2019 21:47:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 25 Feb 2019 21:47:51 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 25 Feb 2019 21:47:52 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Mon, 25 Feb 2019 21:47:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 25 Feb 2019 21:47:52 GMT
EXPOSE 3000
# Mon, 25 Feb 2019 21:47:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 25 Feb 2019 21:48:09 GMT
ENV PASSENGER_VERSION=6.0.1
# Mon, 25 Feb 2019 21:48:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Mon, 25 Feb 2019 21:48:39 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Mon, 25 Feb 2019 21:48:39 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Mon, 25 Feb 2019 21:48:39 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738f9a541d4b353b1db6b48a0b30fcc769b551d85d2832e74176309f01907a94`  
		Last Modified: Wed, 06 Feb 2019 04:12:12 GMT  
		Size: 10.5 MB (10470623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb810789a178b6e26d50b978b021f25053d54a2b811ab94ebd5e5e284dc6382`  
		Last Modified: Wed, 06 Feb 2019 04:12:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ad152aeded77a65c090382180d10896e9bf98092fba5b9956f01bc1e0244ed`  
		Last Modified: Wed, 06 Feb 2019 04:12:34 GMT  
		Size: 21.0 MB (20989866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b67e0a339587ebbe432a34d37a2fa2d40c89055898551e6c7ce77a8f532f51`  
		Last Modified: Wed, 06 Feb 2019 04:12:32 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addaad76d8cf4544939963f620185ae1d7431019c9f4ba2b8cd0c07b019611fb`  
		Last Modified: Wed, 06 Feb 2019 11:51:58 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2e8b97d819f16779f93861421afe6c9859ea0d2a2e593b7f617ee3a7292060`  
		Last Modified: Wed, 06 Feb 2019 11:52:19 GMT  
		Size: 72.2 MB (72176639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be061cfb907bc4c6e67f61d1efb34852900f77f380b3dade11f1020a7349578f`  
		Last Modified: Wed, 06 Feb 2019 11:51:59 GMT  
		Size: 1.3 MB (1301979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e857589a02c418e9c663e7814da5a9ca9cf61ea181ef88b89ed31e58547ab58`  
		Last Modified: Wed, 06 Feb 2019 11:51:57 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de22b68766350fb9ce2ffe29f72520594fdc2c0cecee5640c245020a279c42d`  
		Last Modified: Wed, 06 Feb 2019 11:51:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77798ff7929d68f9c297fc995a747cd498b7b639295212f4e3e2e75eccf849d7`  
		Last Modified: Mon, 25 Feb 2019 21:50:16 GMT  
		Size: 2.5 MB (2460854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f337eb943824b3c0eec65dc874ea42d0d60ee6be8eb53bb34e428dbaf22b1a`  
		Last Modified: Mon, 25 Feb 2019 21:50:40 GMT  
		Size: 103.2 MB (103247271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256796d61839f1b9df9714aa3d6424ab926034cd656d3d47b877d13c7409e786`  
		Last Modified: Mon, 25 Feb 2019 21:50:14 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513b2bb9162ace33e0d896200612d1f208e16cf6c8f91c25dc380358fe2d72a9`  
		Last Modified: Mon, 25 Feb 2019 21:50:51 GMT  
		Size: 19.7 MB (19659024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3b839143acf7dff55652f1f7839eda3cad9448b0732e31dfac92f9e4ea16a6`  
		Last Modified: Mon, 25 Feb 2019 21:50:47 GMT  
		Size: 4.9 MB (4895482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
