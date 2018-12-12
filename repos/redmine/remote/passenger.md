## `redmine:passenger`

```console
$ docker pull redmine@sha256:f9de75f95cdb8b5544f6bf8a623429550e28038271724709d0626fc19d6e6b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9b6d0d387947447ee7b30c9eb7e6b6f20c016ee8cea6ba975076d795a0750144
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315549373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d304b4d414c7cf300a970fe300e0d809cacda156bbd552b802259e1caeac52e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 16 Nov 2018 18:34:35 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Fri, 16 Nov 2018 18:34:36 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Wed, 12 Dec 2018 19:54:41 GMT
ENV BUNDLER_VERSION=1.17.2
# Wed, 12 Dec 2018 19:57:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 12 Dec 2018 19:57:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 12 Dec 2018 19:57:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:57:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 12 Dec 2018 19:57:57 GMT
CMD ["irb"]
# Wed, 12 Dec 2018 21:38:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 12 Dec 2018 21:39:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 21:39:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:39:53 GMT
ENV RAILS_ENV=production
# Wed, 12 Dec 2018 21:39:53 GMT
WORKDIR /usr/src/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
ENV HOME=/home/redmine
# Wed, 12 Dec 2018 21:39:54 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 12 Dec 2018 21:39:54 GMT
ENV REDMINE_VERSION=4.0.0
# Wed, 12 Dec 2018 21:39:55 GMT
ENV REDMINE_DOWNLOAD_MD5=816992eb005cbaa636ad7f8962cb6e0d
# Wed, 12 Dec 2018 21:39:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 12 Dec 2018 21:43:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:43:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 12 Dec 2018 21:43:46 GMT
COPY file:f46860d7b82095e9a3d06325ae45f8e7139bfe2905a8fbfa3c8e563f12d0462a in / 
# Wed, 12 Dec 2018 21:43:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 21:43:46 GMT
EXPOSE 3000/tcp
# Wed, 12 Dec 2018 21:43:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 12 Dec 2018 21:44:10 GMT
ENV PASSENGER_VERSION=6.0.0
# Wed, 12 Dec 2018 21:44:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 12 Dec 2018 21:44:25 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 12 Dec 2018 21:44:25 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 12 Dec 2018 21:44:25 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b4d6a6a3607db723f1f459cbd6cdcd722a557af938282bbaf47cf7d1edac4d`  
		Last Modified: Wed, 12 Dec 2018 21:06:35 GMT  
		Size: 24.0 MB (24015372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefa4443a084302c1d26fe93760f91ce29bd36261d7417bb661013229da2942d`  
		Last Modified: Wed, 12 Dec 2018 21:06:31 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068e8ec9a290650b2fc6030a136f79f1acf79c6e296f65f7b7008501fce2c69`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b2d7907cb6626611223ff89e5941dc1747c44d7acd09f50855df1ff9529050`  
		Last Modified: Wed, 12 Dec 2018 21:55:22 GMT  
		Size: 88.0 MB (88040726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcdd5a23b169e60c8e74828eaa934809ab33979d1203789ede432fd350ab805`  
		Last Modified: Wed, 12 Dec 2018 21:55:03 GMT  
		Size: 1.3 MB (1304330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd1ffc132bda669da5df43562e0c57f3f4ef033247b7e0540f3df633895b9b0`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81300c73135f8b4b219623f225bc19b8d8e29cb15da05477cc9930209e9c41e7`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfebeb4be7f5f0632d1f5e091f356830d542be4181eeaf4504a29e5d1380bdc`  
		Last Modified: Wed, 12 Dec 2018 21:55:04 GMT  
		Size: 2.5 MB (2525128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3773e78a482bb6e9d5ee88b4a3bb181384d75cace6fbd9476417f29ebcb10f1a`  
		Last Modified: Wed, 12 Dec 2018 21:55:25 GMT  
		Size: 117.7 MB (117666802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6eee574679f9784b86a89309b2f20603d3e813098f27c502e80a7d4a4d30c8`  
		Last Modified: Wed, 12 Dec 2018 21:55:02 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e787a1f400ad1194072ad12bad64e04522d408cc885b4b89686c84da70e80b16`  
		Last Modified: Wed, 12 Dec 2018 21:56:43 GMT  
		Size: 19.4 MB (19356861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b806f88ce284e1b0d06bf688330bbcdb2e5e5807ac1af4a1e0d33bdb66cb79`  
		Last Modified: Wed, 12 Dec 2018 21:56:39 GMT  
		Size: 4.5 MB (4479120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
