## `redmine:4-passenger`

```console
$ docker pull redmine@sha256:c3ff329d5f042047b735ace4b246ec70f8529fd4f31814d137c28a54d981b6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:8a562609bb3b116cf47c5fcee2171c8b5a6fc65485cad3fd49e6fd8212141af9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.7 MB (255692393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c6b632332b9fa36188e35a916f1547ac170630d9f4c05d439dc9e98456d427`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:32:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:32:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 23 Jan 2019 04:32:25 GMT
ENV RUBY_MAJOR=2.6
# Wed, 23 Jan 2019 04:32:25 GMT
ENV RUBY_VERSION=2.6.0
# Wed, 23 Jan 2019 04:32:25 GMT
ENV RUBY_DOWNLOAD_SHA256=acb00f04374899ba8ee74bbbcb9b35c5c6b1fd229f1876554ee76f0f1710ff5f
# Wed, 23 Jan 2019 04:35:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 23 Jan 2019 04:35:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 23 Jan 2019 04:35:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 23 Jan 2019 04:35:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 04:35:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 23 Jan 2019 04:35:43 GMT
CMD ["irb"]
# Sat, 26 Jan 2019 01:29:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 26 Jan 2019 01:30:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 26 Jan 2019 01:30:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 26 Jan 2019 01:30:27 GMT
ENV RAILS_ENV=production
# Sat, 26 Jan 2019 01:30:27 GMT
WORKDIR /usr/src/redmine
# Sat, 26 Jan 2019 01:30:28 GMT
ENV HOME=/home/redmine
# Sat, 26 Jan 2019 01:30:28 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 26 Jan 2019 01:30:29 GMT
ENV REDMINE_VERSION=4.0.1
# Sat, 26 Jan 2019 01:30:29 GMT
ENV REDMINE_DOWNLOAD_MD5=a1dc18d981901e32bbeabca67984ca9b
# Sat, 26 Jan 2019 01:30:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 26 Jan 2019 01:34:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 26 Jan 2019 01:34:05 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 26 Jan 2019 01:34:05 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 26 Jan 2019 01:34:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 26 Jan 2019 01:34:05 GMT
EXPOSE 3000
# Sat, 26 Jan 2019 01:34:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 26 Jan 2019 01:34:09 GMT
ENV PASSENGER_VERSION=6.0.1
# Sat, 26 Jan 2019 01:34:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 26 Jan 2019 01:34:25 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Sat, 26 Jan 2019 01:34:26 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Sat, 26 Jan 2019 01:34:26 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c252f3cf658db53e036a0c569e860b9646610f5ee62ff4f033f1fe2a78d49428`  
		Last Modified: Wed, 23 Jan 2019 05:25:12 GMT  
		Size: 10.5 MB (10470671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc35df3181778f4be6a378ec95593a2edb9e90c045d5e9707aa972e81fb005d`  
		Last Modified: Wed, 23 Jan 2019 05:25:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc650ed7f11c5be6459297cbe91a32821452018c80c7fd028af0e2199552822`  
		Last Modified: Wed, 23 Jan 2019 05:25:13 GMT  
		Size: 20.2 MB (20181697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df09eb38d604b67511b3e36d9b45f9d0ef6db40e1af1a5d30104427bf99d7d1`  
		Last Modified: Wed, 23 Jan 2019 05:25:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a421292e196e2a351ea76638b03b3a20ee3cd2ce3044cd51323574e7c9ad9f`  
		Last Modified: Sat, 26 Jan 2019 01:34:50 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdc9efe19dd603a1a2d49bd0c77c68c870e85e10763d7abb64fed4ec25cc2a5`  
		Last Modified: Sat, 26 Jan 2019 01:35:05 GMT  
		Size: 72.2 MB (72176439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d78d6cbcae360b865d3537e9a98e30d636a7ce1110d39d72def3f527234dd7d`  
		Last Modified: Sat, 26 Jan 2019 01:34:50 GMT  
		Size: 1.3 MB (1301951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838bf72facc1bdd20bdbf56bf17de8de202219b11b6eaceeb935222e1d3d0f77`  
		Last Modified: Sat, 26 Jan 2019 01:34:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641e5ec61e30704f385747bbb77ba25fda040cb86b60f9aedfdee837d4625c28`  
		Last Modified: Sat, 26 Jan 2019 01:34:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e57a5b3febb0a04a2c3bd2fb92273d9ead9783ffa14e0bcc81de42cf1d07ae`  
		Last Modified: Sat, 26 Jan 2019 01:34:49 GMT  
		Size: 2.5 MB (2525952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc5f5fdea016da04e07db4de4f677337ca11e2bbcbc78b2761cfd425419db7`  
		Last Modified: Sat, 26 Jan 2019 01:35:06 GMT  
		Size: 102.0 MB (101983015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44d047521ff7050fec6d905b4901d076dde957fbcc4f17c7e7b7d439a3cd7e9`  
		Last Modified: Sat, 26 Jan 2019 01:34:48 GMT  
		Size: 2.0 KB (1952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78465af238e1297d34ba8e1984177bac99a748076296adbfcd59fb5d101bdfe`  
		Last Modified: Sat, 26 Jan 2019 01:35:17 GMT  
		Size: 19.7 MB (19652157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9e02be0daf8e794a9379953e594c4e0637b84feb34e1cbf88549ed945eef19`  
		Last Modified: Sat, 26 Jan 2019 01:35:15 GMT  
		Size: 4.9 MB (4895482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
