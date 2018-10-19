## `redmine:passenger`

```console
$ docker pull redmine@sha256:3fbfa7ba5544e0ab75f540b581a06dbed98081a1a803b42dce2bb7bd76f64e8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:f4781011a012377476743104b43797c28adbe4c02ebfdbf61bc52ca2deaf1a41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.0 MB (319962663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915634ed67c9c1fce650666a7b874442966e879d5475023957012f5ae8439bad`
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
# Thu, 18 Oct 2018 23:44:29 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 18 Oct 2018 23:44:29 GMT
ENV BUNDLER_VERSION=1.16.6
# Thu, 18 Oct 2018 23:48:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 18 Oct 2018 23:48:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Oct 2018 23:48:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Oct 2018 23:48:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Oct 2018 23:48:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Oct 2018 23:48:28 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 01:17:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 01:17:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:18:10 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 01:18:10 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 01:18:10 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 01:18:10 GMT
ENV REDMINE_VERSION=3.4.6
# Fri, 19 Oct 2018 01:18:11 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Fri, 19 Oct 2018 01:18:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 01:22:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 01:22:16 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 01:22:25 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 01:22:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:22:26 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 01:22:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 19 Oct 2018 01:22:38 GMT
ENV PASSENGER_VERSION=5.3.5
# Fri, 19 Oct 2018 01:22:49 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 19 Oct 2018 01:22:51 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 19 Oct 2018 01:22:51 GMT
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
	-	`sha256:4b2423fd5121ee8e752ffdb1e1ed423242c984fcbde4ee4c8a2f23d62ae5a8bf`  
		Last Modified: Fri, 19 Oct 2018 00:37:17 GMT  
		Size: 21.8 MB (21765841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcdfb264d2380f5e3391125d4e594bf971ece48ba0b6910bde2d2691e319ec5`  
		Last Modified: Fri, 19 Oct 2018 00:37:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a684dc87a5a64a2709bb0ec80fab8e3ee0cddff8653fb2bee5354ae96b6bcc0`  
		Last Modified: Fri, 19 Oct 2018 01:27:46 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05da3e1621499623ba6d23fe5cb0c35785b9ab2d834b35e4786afff9a6c58c77`  
		Last Modified: Fri, 19 Oct 2018 01:28:04 GMT  
		Size: 88.0 MB (88037669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1674c3cbda8cd7205b72b73fb60635cffdbe77240b670116e5eda5c5c4aa6607`  
		Last Modified: Fri, 19 Oct 2018 01:27:45 GMT  
		Size: 904.6 KB (904630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b5e31b2f367c3c71337cd08b6e6380169e7bdaf5882c0a6c307f97606c6ebe`  
		Last Modified: Fri, 19 Oct 2018 01:27:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:326e44e0fb6873b4456d2adf6e3dcc73c299a04bf1e0f418a8a8b9c0843cf463`  
		Last Modified: Fri, 19 Oct 2018 01:27:45 GMT  
		Size: 2.5 MB (2456905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fa951d301bda89835bdaf6c73aaef81246d7970a269ee1e08e31375c4fe12b`  
		Last Modified: Fri, 19 Oct 2018 01:28:06 GMT  
		Size: 125.1 MB (125112209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59633461ef911bd75920516702ca9da00afae4f6138a6052fc636e52f5f5b0b8`  
		Last Modified: Fri, 19 Oct 2018 01:27:44 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90467c7bac9ba47824d5796b8bce5aab9c3990b4987c1c3d16d5650f7dc6a50e`  
		Last Modified: Fri, 19 Oct 2018 01:28:52 GMT  
		Size: 19.1 MB (19111968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279248f204301424fffbcebd571c08f2dcef9bc7b1b67c6b23ef772d173fc86`  
		Last Modified: Fri, 19 Oct 2018 01:28:50 GMT  
		Size: 4.4 MB (4447464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
