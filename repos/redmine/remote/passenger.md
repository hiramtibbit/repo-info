## `redmine:passenger`

```console
$ docker pull redmine@sha256:e17faf0c54dc14c40a231c88a624cf1b7ceb3f1c83af66a195db587e35c9a458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:662aa90fb0e4012b8c661207f8f4f404959a76b144014ec4bd28f196c06b072a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313704243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0a2c52909147ea26bd78987ed0e410f114727f1071b45c951528af8c5cba48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 06:02:40 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 06:02:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 29 Dec 2018 06:10:31 GMT
ENV RUBY_MAJOR=2.5
# Sat, 29 Dec 2018 06:10:31 GMT
ENV RUBY_VERSION=2.5.3
# Sat, 29 Dec 2018 06:10:32 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 29 Dec 2018 06:10:32 GMT
ENV RUBYGEMS_VERSION=3.0.1
# Sat, 29 Dec 2018 06:10:33 GMT
ENV BUNDLER_VERSION=1.17.3
# Sat, 29 Dec 2018 06:13:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 29 Dec 2018 06:13:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 06:13:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 06:13:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 06:13:45 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 29 Dec 2018 06:13:46 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 13:07:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 29 Dec 2018 13:08:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:08:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 13:08:38 GMT
ENV RAILS_ENV=production
# Sat, 29 Dec 2018 13:08:38 GMT
WORKDIR /usr/src/redmine
# Sat, 29 Dec 2018 13:08:38 GMT
ENV HOME=/home/redmine
# Sat, 29 Dec 2018 13:08:39 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Sat, 29 Dec 2018 13:08:39 GMT
ENV REDMINE_VERSION=4.0.0
# Sat, 29 Dec 2018 13:08:40 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Sat, 29 Dec 2018 13:08:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Sat, 29 Dec 2018 13:14:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 13:14:48 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 29 Dec 2018 13:14:48 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Sat, 29 Dec 2018 13:14:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 13:14:49 GMT
EXPOSE 3000
# Sat, 29 Dec 2018 13:14:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 29 Dec 2018 13:15:04 GMT
ENV PASSENGER_VERSION=6.0.0
# Sat, 29 Dec 2018 13:15:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 13:15:34 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Sat, 29 Dec 2018 13:15:34 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Sat, 29 Dec 2018 13:15:35 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cb6aef93976d1f8fe468cbb028b89c84db3d9d2662f02cc4758f331a55a6e3`  
		Last Modified: Sat, 29 Dec 2018 07:04:30 GMT  
		Size: 12.9 MB (12888355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb938d4a2b62549286fcc398c5598170cc72c47f8ca7aa229acc5e68db928f5f`  
		Last Modified: Sat, 29 Dec 2018 07:04:28 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e82e8336a26406fac83779fbd66d64cc2df71312b03f78606663a7bd028d05`  
		Last Modified: Sat, 29 Dec 2018 07:04:54 GMT  
		Size: 22.2 MB (22155747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fbf679e9415da7c335b8c52428ef6d4d7fd3790a2d4419d1fbfb01cd8f0fa8`  
		Last Modified: Sat, 29 Dec 2018 07:04:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5724e1e369ec913d6795f91364e0f3f0548d6fc16e6213f4b14b70224918fd`  
		Last Modified: Sat, 29 Dec 2018 13:31:43 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c514a689069dbb3271fc0231654a279e0c3b3469ebfdc621f1bdceef6b345dc`  
		Last Modified: Sat, 29 Dec 2018 13:32:13 GMT  
		Size: 88.1 MB (88050656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9a9807601e2756a874bdb21a8cc9b69b2f902d618a8d82820d9621bb59078f`  
		Last Modified: Sat, 29 Dec 2018 13:31:44 GMT  
		Size: 1.3 MB (1304301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476f060ceb0d5d509a421ea12424d041fbfbbc057f669611aeaf6ed46e07d6dc`  
		Last Modified: Sat, 29 Dec 2018 13:31:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e33659e8e295b79269479cda957b4f0d5e7fe0fb68cf3398065cfe8603635`  
		Last Modified: Sat, 29 Dec 2018 13:31:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d222c7bc1570cdce3c102564d95cd1bfe8ae685c4495688fe06504b40324d6`  
		Last Modified: Sat, 29 Dec 2018 13:31:46 GMT  
		Size: 2.5 MB (2524920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755cd793dfed6b3e93269f4a4ab3a0039bdcf91178d839fb4960ba4aeb20f940`  
		Last Modified: Sat, 29 Dec 2018 13:32:18 GMT  
		Size: 117.7 MB (117721021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a145764ed569464b53e146a17951423da119d3109f3e117aab76dc63284850`  
		Last Modified: Sat, 29 Dec 2018 13:31:42 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae0e2a7866ee1ccbf9e9da471bba843af8c05af10bf56ec06c5c557cc6fd5c`  
		Last Modified: Sat, 29 Dec 2018 13:32:36 GMT  
		Size: 19.3 MB (19252013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1621938b735bc74d391ed7228dd44b8aa77b6504b0580786d00b07621f9b0252`  
		Last Modified: Sat, 29 Dec 2018 13:32:31 GMT  
		Size: 4.5 MB (4479121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
