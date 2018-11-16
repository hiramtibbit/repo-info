## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:c182ed740c7143e3447548ef97a4c3eb106e65c142821b7993eacebffd4fb759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:5c3e110bc0e5b9e28949c0f567e8a50b67980e9c08304f9718305e72fd20be37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.8 MB (321838448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cca97d8ae65ed12fd253bd8392c338d9a8cb71af7dfe56c48c6adf77b87049a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:54:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 Oct 2018 23:54:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 00:01:48 GMT
ENV RUBY_MAJOR=2.4
# Thu, 18 Oct 2018 23:44:28 GMT
ENV RUBY_VERSION=2.4.5
# Thu, 18 Oct 2018 23:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Sat, 03 Nov 2018 01:14:05 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 01:14:05 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 01:17:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 01:17:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 01:17:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 01:17:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 01:17:40 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 01:17:40 GMT
CMD ["irb"]
# Sat, 03 Nov 2018 02:28:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 03 Nov 2018 02:28:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 09:24:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 16 Nov 2018 09:24:21 GMT
ENV RAILS_ENV=production
# Fri, 16 Nov 2018 09:24:21 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Nov 2018 09:24:21 GMT
ENV REDMINE_VERSION=3.4.6
# Fri, 16 Nov 2018 09:24:22 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Fri, 16 Nov 2018 09:24:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Fri, 16 Nov 2018 09:28:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod ugo=rwX Gemfile.lock; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 16 Nov 2018 09:28:45 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Nov 2018 09:28:57 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Fri, 16 Nov 2018 09:28:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 09:28:58 GMT
EXPOSE 3000/tcp
# Fri, 16 Nov 2018 09:28:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Nov 2018 09:29:40 GMT
ENV PASSENGER_VERSION=5.3.7
# Fri, 16 Nov 2018 09:29:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 16 Nov 2018 09:30:01 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Fri, 16 Nov 2018 09:30:12 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Fri, 16 Nov 2018 09:30:13 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076d35d79a550249d7c21230509ad5d57553a5aa294159c7e1b45dccbed0116`  
		Last Modified: Tue, 16 Oct 2018 00:23:29 GMT  
		Size: 12.8 MB (12811976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5734a3d784cb1370d3213af8d166d0d42581468a7d23ca9a8705a878b9fa03be`  
		Last Modified: Tue, 16 Oct 2018 00:23:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d8607335809f7b0cfe707626929268bac5907b43ddde9038a45cbc6e56f69a`  
		Last Modified: Sat, 03 Nov 2018 02:04:39 GMT  
		Size: 21.8 MB (21792062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d4ea78c3bb795f1a1fe95dc3a2222d1c6554b9ab4230067b5249028a11e260`  
		Last Modified: Sat, 03 Nov 2018 02:04:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b54ed317784325921f98429c96eed4018c34cd9adb8b910f13d6303d2fa640`  
		Last Modified: Sat, 03 Nov 2018 02:37:52 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a341522eecf72a166103a28635972b2e190692b635b1df5b3b823aeebb5d9046`  
		Last Modified: Sat, 03 Nov 2018 02:38:05 GMT  
		Size: 88.0 MB (88037172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc62fb403f82a52a0f7e7faaa7b1b3bd5995a73dcbbe055971c9b88b78452b6`  
		Last Modified: Fri, 16 Nov 2018 09:36:42 GMT  
		Size: 904.7 KB (904725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1d30b777b3f1234e928d7bc005cdb0a1b7444d05442060db91fefafcc89b14`  
		Last Modified: Fri, 16 Nov 2018 09:36:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014bc390c9fb6abb680943d420643ec8108e72dd0fa22b52fb627fcb31fd6460`  
		Last Modified: Fri, 16 Nov 2018 09:36:43 GMT  
		Size: 2.5 MB (2457044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf6f81f1cad2c8a86d542350e6168d6ddefc6c0c03afbd7a0f82d2409b91d74`  
		Last Modified: Fri, 16 Nov 2018 09:37:01 GMT  
		Size: 126.8 MB (126768156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfd2c161f41dda6d39b239825cc4208837732444dbcacf66eda08ec5717b604`  
		Last Modified: Fri, 16 Nov 2018 09:36:42 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5008603b0cf33301477d2b6a04a3afae7255136bd7d4cc3059a82aded6f0f314`  
		Last Modified: Fri, 16 Nov 2018 09:38:40 GMT  
		Size: 19.3 MB (19302633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a2b7cd31e7e667ac8f00518907f393a0971aafe1527eed1154f4523be5658d`  
		Last Modified: Fri, 16 Nov 2018 09:38:37 GMT  
		Size: 4.5 MB (4450547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
