## `redmine:passenger`

```console
$ docker pull redmine@sha256:3831ac8ff00c434900b0223f0bf85edb63b6d1ff77b1c4d3bfd11dc73e9ac790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:52c72c5e854422fbe753ea516e5d0e71c70fb7f8d93f68f74a10d7a555cb54a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255874116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278d8a695574a5b9862e5c8abdbe0032fd0f60d3f20f6cb40eba3dab77574364`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:32:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:32:17 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 11 Jun 2019 00:43:46 GMT
ENV RUBY_MAJOR=2.6
# Tue, 11 Jun 2019 00:43:46 GMT
ENV RUBY_VERSION=2.6.3
# Tue, 11 Jun 2019 00:43:47 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Tue, 11 Jun 2019 00:50:17 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Tue, 11 Jun 2019 00:50:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 11 Jun 2019 00:50:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 11 Jun 2019 00:50:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 00:50:19 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 11 Jun 2019 00:50:19 GMT
CMD ["irb"]
# Tue, 11 Jun 2019 10:09:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 11 Jun 2019 10:10:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:10:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 10:10:59 GMT
ENV RAILS_ENV=production
# Tue, 11 Jun 2019 10:10:59 GMT
WORKDIR /usr/src/redmine
# Tue, 11 Jun 2019 10:10:59 GMT
ENV HOME=/home/redmine
# Tue, 11 Jun 2019 10:11:01 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Tue, 11 Jun 2019 10:11:01 GMT
ENV REDMINE_VERSION=4.0.4
# Tue, 11 Jun 2019 10:11:01 GMT
ENV REDMINE_DOWNLOAD_MD5=35a4f60b35fed2b10d14cb12fc8aef50
# Tue, 11 Jun 2019 10:11:07 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Tue, 11 Jun 2019 11:28:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 11:28:02 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 11 Jun 2019 11:28:03 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Tue, 11 Jun 2019 11:28:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 11:28:03 GMT
EXPOSE 3000
# Tue, 11 Jun 2019 11:28:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 11 Jun 2019 11:28:17 GMT
ENV PASSENGER_VERSION=6.0.2
# Tue, 11 Jun 2019 11:28:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 11 Jun 2019 11:28:49 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Tue, 11 Jun 2019 11:28:49 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Tue, 11 Jun 2019 11:28:50 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb832b8d529e96adde26a2dc9c3c2deb6425119f3e9124009bcb98b560e872bc`  
		Last Modified: Tue, 11 Jun 2019 01:33:02 GMT  
		Size: 11.2 MB (11172499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f928adca00a3d41f481dad967ee05980cece690903bb943ac240e4bfc979e97d`  
		Last Modified: Tue, 11 Jun 2019 01:32:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83899fd2d559ab41a3226cac66bc89e272f39e387d8f8a763a170a247198429`  
		Last Modified: Tue, 11 Jun 2019 01:33:40 GMT  
		Size: 19.9 MB (19904138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b20e0f6f6d8664d61d174f62603673905c7a20825ac7aed398a3e92e19d778`  
		Last Modified: Tue, 11 Jun 2019 01:33:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55990e2b2f6a8641938fc10c516963236b35f15cbbb5b6949535c82d95541eb5`  
		Last Modified: Tue, 11 Jun 2019 11:36:29 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbdb9f5200f192c403f4d20a0eb5434ad3f33b17ceab204462844759b4ed175`  
		Last Modified: Tue, 11 Jun 2019 11:36:51 GMT  
		Size: 71.9 MB (71898271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e6da50fc2d9c062a574cddb0737a449653752591b72b46121370facc3590c0`  
		Last Modified: Tue, 11 Jun 2019 11:36:29 GMT  
		Size: 1.3 MB (1303204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8120e34f4278ec7f8bb7335dcc5bbbbe7d33b3d0305ee9c4e3584560325fd1`  
		Last Modified: Tue, 11 Jun 2019 11:36:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6797ace4edc836857b6905a099a4a2ecac7662c6b3059a38296d2d9f1cca2ee`  
		Last Modified: Tue, 11 Jun 2019 11:36:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deadf94c3a2a516c98bd56788015b5c86ec71c5e839c62cbe105686610b89b3`  
		Last Modified: Tue, 11 Jun 2019 11:36:30 GMT  
		Size: 2.5 MB (2533026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5dd960d597c1be8c926d6f2cc5e0852e4c440e30babaf5ab6247a1b6aa9f7c5`  
		Last Modified: Tue, 11 Jun 2019 11:36:53 GMT  
		Size: 102.0 MB (102015793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3ad66f01af8d78e6abfeb08b2d1832e1b359abbf674764f475044ba64b3209`  
		Last Modified: Tue, 11 Jun 2019 11:36:28 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1f6b9b679e4ec765232857ce5576eb2ac407b6818e1d15d7a640da24afea3f`  
		Last Modified: Tue, 11 Jun 2019 11:37:07 GMT  
		Size: 19.7 MB (19657611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6028a5c983e1cf09285e00d3175c0f0069dc6d14c6869a5f8636fe810e2dd037`  
		Last Modified: Tue, 11 Jun 2019 11:37:02 GMT  
		Size: 4.9 MB (4895956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
