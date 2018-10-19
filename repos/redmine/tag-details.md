<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.8`](#redmine338)
-	[`redmine:3.3.8-passenger`](#redmine338-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.6`](#redmine346)
-	[`redmine:3.4.6-passenger`](#redmine346-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:e560c82429c1e86aea5645613cde71d330a848443297030c189607174d370324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3` - linux; amd64

```console
$ docker pull redmine@sha256:a7abeb7d39fb27c4cd950e48ceeb11c4ff8f0df2d9da239d676ea4d62115168f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296403231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74c97c553ac3ad3081f211fff21c4fd4268abf1c5d7604f2f1d05c2ba2dbf38`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:eb57913bf0dfaf168b03d420293142f9f6f5bb281e36e7ada8e8361c34880db4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284859553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37bd7a7d2b417e36631e5b084113cbdef10d68fe8bd3fd9d141dcf2f1d3475e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 12:17:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 19 Oct 2018 09:29:20 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 19 Oct 2018 09:29:21 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 19 Oct 2018 09:29:21 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:29:21 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:35:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:35:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:35:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:35:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:35:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:35:25 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 10:29:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 10:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:30:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:30:41 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 10:30:41 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 10:30:42 GMT
ENV REDMINE_VERSION=3.4.6
# Fri, 19 Oct 2018 10:30:42 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Fri, 19 Oct 2018 10:30:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 10:36:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:36:37 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 10:36:37 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 10:36:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:36:38 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 10:36:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd956c3d59d9c149b09ee0d97a8e7b865de6f7a097088208284aa8744d2765a`  
		Last Modified: Tue, 16 Oct 2018 12:35:04 GMT  
		Size: 11.4 MB (11376546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41750db3498e0c5c42960a9a7b557f725903b2fc9bc90d11bcb52322ad7f0b`  
		Last Modified: Tue, 16 Oct 2018 12:35:00 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a0538e9adb8ed76ded325f5bed83ecf38bcd6cc2adf3a69e7219f25b3a1880`  
		Last Modified: Fri, 19 Oct 2018 10:10:49 GMT  
		Size: 21.3 MB (21316606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87ee82a55b5ca0ff885c49c6784c7f323e8e1f18a64c5182bc9f46cff8984fd`  
		Last Modified: Fri, 19 Oct 2018 10:10:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53bcdeaeb431865a41de3a6fec6f01aabd396f8f3453c3d0c8ed9aff899ad18`  
		Last Modified: Fri, 19 Oct 2018 10:43:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36ff963bbf2209eb8b8225d007236ce2178ca192822e07215077e1a9ff7df9f`  
		Last Modified: Fri, 19 Oct 2018 10:44:34 GMT  
		Size: 85.0 MB (84956928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b99f49cd690c90a476186ef55108e36c3a7ad27370603a467409cb85a6cb8ce`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 894.3 KB (894289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2968fb26f0ca7fa8a43a4cb76d86f5f4aaac0608b82dd94d96d1919df87aa8`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3deea1abcd43523b8ef17eb90743f5b9375ae790f50bfdf819b3e4a8e3a1f1`  
		Last Modified: Fri, 19 Oct 2018 10:43:56 GMT  
		Size: 2.5 MB (2457564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8392fff3e4bbca20c23f867271644fa4dc457a6215d9619eec51dfbd801e70`  
		Last Modified: Fri, 19 Oct 2018 10:44:24 GMT  
		Size: 119.8 MB (119820429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9d769285cdf1208520700dcfc2b4290cb4999588b5c491bffb66f5b3a818c`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:5075c02cf78265f04c4480c74823161851f9e83ca5ebfc0079212f59d3e1f844
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277573093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d73b3135586bcdef637740fbec6b8c5426b0d9f154773f6271353f4c5c635ac5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:37:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 13:52:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 13:52:30 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 13:52:30 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 13:52:31 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 13:52:31 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 13:58:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 13:58:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 13:58:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 13:58:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:58:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 13:58:43 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:19:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:20:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:20:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:20:55 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:20:56 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 16:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 16:21:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:26:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:26:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:26:38 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:26:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:26:43 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:26:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7f2f49a858f9911a8f5ce08344d570b05ef2e0da45af19eb828e10f8a6c8e3`  
		Last Modified: Tue, 16 Oct 2018 14:10:05 GMT  
		Size: 10.9 MB (10897122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921bb25ec33100efed2b0223c431392bbc50d201951e2e85c25b62d55e65e92d`  
		Last Modified: Tue, 16 Oct 2018 14:10:01 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5be5a704e8bb77219200643f27fe6238d3a2d264b3ef0b7536962db392e0c9`  
		Last Modified: Tue, 16 Oct 2018 14:13:11 GMT  
		Size: 21.1 MB (21124392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae78403c671dcbc28919b41434f1856cda70c2b9746030020b47cb54575aa5f`  
		Last Modified: Tue, 16 Oct 2018 14:13:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085937c0ef6c2d1f99cf4b829ce8a3507a4892b7094e4058097987b3129a0613`  
		Last Modified: Tue, 16 Oct 2018 16:33:51 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59f56a588bead060072c1c5ce90a4c5d144158e735f7e9cd178dd187562fbab`  
		Last Modified: Tue, 16 Oct 2018 16:34:12 GMT  
		Size: 81.8 MB (81782097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4bdf40da7c8079b79158a9eb4e713e94fb9252af5676b85892855c86f78ae1`  
		Last Modified: Tue, 16 Oct 2018 16:33:50 GMT  
		Size: 877.5 KB (877536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64c5c8e770913eb935bb0a49ac9fc2fb0180c75d4423356d66b950780556641`  
		Last Modified: Tue, 16 Oct 2018 16:33:49 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4bbb7b7d1d4e86f84bb96e044007730c518da8bbda80483b804f71981617aa`  
		Last Modified: Tue, 16 Oct 2018 16:33:51 GMT  
		Size: 2.5 MB (2457553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c779c3d23ced352df5fd3871db011d2f64e85df7576ec39a793dacb5a84d607d`  
		Last Modified: Tue, 16 Oct 2018 16:34:19 GMT  
		Size: 118.4 MB (118367235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4575a48f2addb4af1a85c51916e082fc8ac375d92376668ab6ce246e799bb3a2`  
		Last Modified: Tue, 16 Oct 2018 16:33:49 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:bd50aab2668189d2f0922729fc4c44ca9648c053fbe15d70c4fb9cc1a60b7375
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282880287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d54364325ccfa21bd4ad552852f470a648e882436c8f1138b4d7a13231758e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 20:03:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:03:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 20:31:46 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 20:31:47 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 20:31:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 20:31:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 20:31:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 20:41:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 20:41:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 20:41:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 20:41:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 20:41:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 20:41:52 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 07:57:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 08:03:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 08:03:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:03:49 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 08:03:50 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 08:03:51 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 17 Oct 2018 08:03:52 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 17 Oct 2018 08:03:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 08:19:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:19:46 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 08:19:48 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 08:19:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 08:20:01 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 08:20:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09b97f46d02c4bcd42ca4df89ced3449218f7a9725a18c05fa54a80eb18635`  
		Last Modified: Tue, 16 Oct 2018 21:00:33 GMT  
		Size: 11.6 MB (11622057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39294da9e60f33895e6650bff8a8fec3703b67804f469022b77d23ec489489bd`  
		Last Modified: Tue, 16 Oct 2018 21:00:28 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcca0a2c108ffb6fed020ddc3597287fe0322c8ca64db8adcfa7284ee10f315`  
		Last Modified: Tue, 16 Oct 2018 21:04:58 GMT  
		Size: 21.5 MB (21523140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4821eba4c82c9e8087e27afdf2f79cdc1520d2061a31176129ff2c7d50ec4093`  
		Last Modified: Tue, 16 Oct 2018 21:04:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1fb1db5716fb0ab86d4f7b686f6c3853512ff618576a9e5814997d7a28aa5a`  
		Last Modified: Wed, 17 Oct 2018 08:39:16 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09929e903a1def9a3f65b22a7fbd949c0915834bdff31203c9655971b750dda1`  
		Last Modified: Wed, 17 Oct 2018 08:39:45 GMT  
		Size: 83.9 MB (83916361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4017d078bc87a3ce9d9fbb238f5a39acaadaa551b1c43ff38692db678865801`  
		Last Modified: Wed, 17 Oct 2018 08:39:13 GMT  
		Size: 873.1 KB (873071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b8de59f35a78fc50d2fc0476fe1f398cef9806d1e836ccceca52e01289e6b1`  
		Last Modified: Wed, 17 Oct 2018 08:39:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa04cb9d54dca3ba2483d45154dd83910be1f783a5aa0ed45c441a33c986f847`  
		Last Modified: Wed, 17 Oct 2018 08:39:15 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164b5126e5beaea81933b27a6baa3fa2c79265df58180dd0b906675a07cf1a8d`  
		Last Modified: Wed, 17 Oct 2018 08:39:49 GMT  
		Size: 119.4 MB (119361076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dceb867d56f4ecc4045242317c0101c5812827d4bdcfd162eaad9038bedeaaa2`  
		Last Modified: Wed, 17 Oct 2018 08:39:14 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:89c2cdeda32297eb501c12a81128312937e61f1dd5eae213a35f8a482b0c6a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300504544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4659007811d34aa9c3c2baaf17727522438a32cb35a1ac2708a31056f4fdda71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:49:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 00:49:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 17 Oct 2018 01:02:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 17 Oct 2018 01:02:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Wed, 17 Oct 2018 01:06:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 17 Oct 2018 01:06:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 Oct 2018 01:06:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 Oct 2018 01:06:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 01:06:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 17 Oct 2018 01:06:39 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 10:42:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 10:42:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 10:43:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:43:06 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 10:43:06 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 10:43:07 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 17 Oct 2018 10:43:07 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 17 Oct 2018 10:43:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 10:46:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:46:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 10:46:39 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 10:46:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 10:46:39 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 10:46:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee1d0a3d1c078400b20f177f92970637b68bc65d763b3b8d70ea6cc3c60d2`  
		Last Modified: Wed, 17 Oct 2018 01:32:38 GMT  
		Size: 16.3 MB (16255904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049b93cd4160b66ddaefccd54558e94099923a480ae17487d34033a95f624e6d`  
		Last Modified: Wed, 17 Oct 2018 01:32:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ab4a139e51b1f0c5421775edc277f4f50bc1c2a580d13abde56f02ea31d87d`  
		Last Modified: Wed, 17 Oct 2018 01:36:39 GMT  
		Size: 21.4 MB (21350917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93eb3e0901597c8fe405ceacd8171eefbd93604a429605bd42afd0555c6bbb5a`  
		Last Modified: Wed, 17 Oct 2018 01:36:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8769ff9adce4419c938b40b7b5946dbb1f4b128db5f6ae9d552b0fe3b92bcd`  
		Last Modified: Wed, 17 Oct 2018 10:51:02 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08ff5047dc54a8272286565e3729436e57be88da5392cd62c099d85d959a109`  
		Last Modified: Wed, 17 Oct 2018 10:51:28 GMT  
		Size: 90.0 MB (89973426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea153966ff65e8bd0efca0041afa7bd9f0c72cfe9ed95e8653cad2ad3bc8ad73`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 884.5 KB (884458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ed68e2217d68139b4f747cac0fe29951acacb1ba070082da3ad20c7227db6e`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73decd132e710c92f64600453506c70da46e1df278c1d66a44347d10a1fb795a`  
		Last Modified: Wed, 17 Oct 2018 10:51:02 GMT  
		Size: 2.5 MB (2456906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0e89582313ffafee91bfd11d36b6f1bbb9b8e7af887616f9fc8568a6f4d238`  
		Last Modified: Wed, 17 Oct 2018 10:51:29 GMT  
		Size: 123.5 MB (123539654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596d0ebd022cd9f98acf3171604361364253991b98a2978105f7b775162e41c`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:d53724affc901f0aa3705281fb69d0ed2685e94679eed8b5548af8d6a6425e02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (292041531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cecf4ddad1b77dc70e5d032499c280778c6b1508ba4fa59135857b47a83ab6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:52:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:52:51 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:13:16 GMT
ENV RUBY_MAJOR=2.4
# Fri, 19 Oct 2018 09:31:16 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 19 Oct 2018 09:31:17 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 19 Oct 2018 09:31:18 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:31:18 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:37:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:37:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:37:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:37:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:37:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:37:58 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 11:00:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 11:02:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:02:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:02:39 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 11:02:40 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 11:02:40 GMT
ENV REDMINE_VERSION=3.4.6
# Fri, 19 Oct 2018 11:02:42 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Fri, 19 Oct 2018 11:03:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 11:12:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:12:21 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 11:12:24 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 11:12:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 11:12:25 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 11:12:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fd23d59872bf0d17bfb79e6fb27e088088d601dce8b9b7851b29d9121c6089`  
		Last Modified: Tue, 16 Oct 2018 14:33:05 GMT  
		Size: 12.2 MB (12208452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1e404b80d55a426a17d9bcd046d368d0ffa535d13493744d1f4382a3ca8297`  
		Last Modified: Tue, 16 Oct 2018 14:32:58 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c89266d52ee7e077bc2bed208c8938b51075b66768cf173931214f968f7b49`  
		Last Modified: Fri, 19 Oct 2018 10:09:53 GMT  
		Size: 22.0 MB (21998834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f41428ad5b6c5509fb01be689390dea754940ce7cf8d76335bade29f5278d2`  
		Last Modified: Fri, 19 Oct 2018 10:09:44 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59a77ded9b205d22041d7a7836ba74d937c2eecea253060e7f4485b1c8347c1`  
		Last Modified: Fri, 19 Oct 2018 11:24:39 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21891b21e2bc4684dfbe38e77f2a42d3b2914fd9ebedba497823886f67e8d472`  
		Last Modified: Fri, 19 Oct 2018 11:25:25 GMT  
		Size: 87.2 MB (87232686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e26571d6a146c637dbf93e3857f6f7d2c250d63206c8786c2ef64740209133a`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 873.3 KB (873295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21e5e01798e29f8ec63ea4026953c81bd460015dcbcc9450dbc95caffe2055b`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f066ab078ea1b9724d8a39cd26a221da8a457895304c3bee532e5101a739bc8c`  
		Last Modified: Fri, 19 Oct 2018 11:24:41 GMT  
		Size: 2.5 MB (2457576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83deb35566518a9ee378f94146b8dfc4e25cca49245c6dd9eb2aefc864a8ef4c`  
		Last Modified: Fri, 19 Oct 2018 11:26:16 GMT  
		Size: 121.7 MB (121671044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca6896127b6ab9a807729319ef4bc12ffeca101f1859a3922db9c018dab0175`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:d1c2ef57f81ec9b899650d31f60bb3f3d52c6880b9c3c1bddad44538aff169b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294823187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaff16774b3ed133a45cfaae2f5bc300a518d06ab8f580e7e91dee38eb8cc010`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:56:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:57:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:12:17 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 14:12:19 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 14:16:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 14:16:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 14:16:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 14:16:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 14:16:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 14:16:24 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 19:20:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 19:20:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 19:21:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:21:08 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 19:21:09 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 19:21:09 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 19:21:09 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 19:21:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 19:24:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:24:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 19:24:16 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 19:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:24:16 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 19:24:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89879bc0b9e4c063d3bda68e95bfe1164fc6615687e2070e1e5cf96c2f73eba`  
		Last Modified: Tue, 16 Oct 2018 14:24:42 GMT  
		Size: 13.2 MB (13214294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c1e854764936ac4e189744be1e758211d8eafd3160c5d022e4c72934011a0a`  
		Last Modified: Tue, 16 Oct 2018 14:24:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92fc120cdd7c484e10e0c94e60587f2b68d2628cb19b46c87bd1f40fa4a9e9`  
		Last Modified: Tue, 16 Oct 2018 14:26:12 GMT  
		Size: 22.1 MB (22127522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2920dbfd260995fedf4dd8c12053e72f37435ce9f0cbbcc4d6224d9c75cb6dbe`  
		Last Modified: Tue, 16 Oct 2018 14:26:09 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3faa0144db07d0cc0f65699beb3b9c679fdd8696e4af372538019fd874c0d0`  
		Last Modified: Tue, 16 Oct 2018 19:28:01 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a851363d3713b213815919d3123de6fd13c4c8614a6185223dc15bc259e0c9`  
		Last Modified: Tue, 16 Oct 2018 19:28:18 GMT  
		Size: 87.9 MB (87865865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9ac3679fefa880dd3cff5d97133f1ed3264e4267464f7bcbba09e0dc4d5d2`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 890.8 KB (890835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a5efc243711b56fb4c1791f2015de24dbd47a3df29341975e8ba5c59a7cdfb`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9873dd3c0bb391074706627bd2d971e855b7a8be2a673ffd5df4d8d71001a796`  
		Last Modified: Tue, 16 Oct 2018 19:28:01 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be26dcdace71c67f5da222b0a8a5345fcbae2d4d64850d164e9463a0b8c8e6a`  
		Last Modified: Tue, 16 Oct 2018 19:28:19 GMT  
		Size: 123.1 MB (123063848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6104c18ed60f64c41fc16fb89e1b448dfc6673e525dbbf573173559f4d1aba1f`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:d51469629fa26919e9a21256a6d80c732bc8b0796dfa429879f32e1317713137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.3` - linux; amd64

```console
$ docker pull redmine@sha256:3dc6b2b09f39123e6628c8f470f2ea3c9098773f1f4b85f863c4d254cf482a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.1 MB (310083680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcee3d085dd94d71542b2ebe59f3cf2078f74304e6d81a500f837629b5dc134`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:12:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:12:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 00:12:30 GMT
ENV RUBY_MAJOR=2.3
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 00:10:28 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 00:14:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 00:14:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 00:14:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 00:14:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 00:14:20 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 00:14:21 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 01:23:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 01:23:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:23:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 01:23:36 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 01:23:36 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 01:23:36 GMT
ENV REDMINE_VERSION=3.3.8
# Fri, 19 Oct 2018 01:23:37 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Fri, 19 Oct 2018 01:23:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 01:26:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 01:26:53 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 01:26:53 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 01:26:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:26:54 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 01:26:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48316c13dd79bc44d1a8c279bc791dccdac6515a5ebb5347478d6f5ab288d111`  
		Last Modified: Tue, 16 Oct 2018 00:27:55 GMT  
		Size: 14.5 MB (14455212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0066730cb1584d7dc204ed24441064ab8fe9553f6aaa40debaeef08dea7143`  
		Last Modified: Tue, 16 Oct 2018 00:27:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66521df1963ad9a5920f3eccc7c115ddb748d6811dded6c71faeb7d1177c6b9`  
		Last Modified: Fri, 19 Oct 2018 00:42:49 GMT  
		Size: 34.6 MB (34564016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34f94faa99d8b72dceabf8eb14b5b917e8f35395f223bf2817e0c35ca3933aa`  
		Last Modified: Fri, 19 Oct 2018 00:42:39 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19da6b2e3d0e21ddc7573d774023b332a44f2057b4d1c9d3eec0be5ab453756`  
		Last Modified: Fri, 19 Oct 2018 01:29:40 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feebd13c20836647a709e5afa31d2b87d01367c85668d407b7542d3319ed1430`  
		Last Modified: Fri, 19 Oct 2018 01:29:59 GMT  
		Size: 86.5 MB (86450612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae784c77573a98dce87d71db01148849c8c73ddf2d6e0b1262788ba0336588b`  
		Last Modified: Fri, 19 Oct 2018 01:29:40 GMT  
		Size: 904.7 KB (904721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba2f44f080d598746e987aed8c4031505d49d5b1da81a5cae3a2df9c4751742`  
		Last Modified: Fri, 19 Oct 2018 01:29:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc2695d3499806ab712f146073498b262045353365163491c6205269195e9cf`  
		Last Modified: Fri, 19 Oct 2018 01:29:41 GMT  
		Size: 2.4 MB (2394061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f927b7a13533b59ae68c57ec9668e8efe39a7d83aec91ed6b661906411b90850`  
		Last Modified: Fri, 19 Oct 2018 01:30:01 GMT  
		Size: 126.0 MB (126001056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d00ef3c7ffa278a7f67227aa671b7ae810fab96496164a555f31f7f724ed9ac`  
		Last Modified: Fri, 19 Oct 2018 01:29:39 GMT  
		Size: 1.8 KB (1822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:51645d54d0b4622b23ac0bf4c681135173e9ad912c4bb393469415aeb3a8aa3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.5 MB (297516295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4addae02d67c97c1164415856034c94240846d0ef6a56e260a856d2c228bc27`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:28:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:28:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 12:28:47 GMT
ENV RUBY_MAJOR=2.3
# Fri, 19 Oct 2018 09:52:51 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 19 Oct 2018 09:52:51 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 19 Oct 2018 09:52:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:52:52 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:57:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:57:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:57:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:57:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:57:32 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:57:33 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 10:36:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 10:37:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:37:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:37:47 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 10:37:47 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 10:37:47 GMT
ENV REDMINE_VERSION=3.3.8
# Fri, 19 Oct 2018 10:37:48 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Fri, 19 Oct 2018 10:37:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 10:43:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:43:42 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 10:43:42 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 10:43:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:43:43 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 10:43:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e62782e47c43cc7e5b28f3c8cc3c877a2bb26c16bb5d9001c699b141937baed`  
		Last Modified: Tue, 16 Oct 2018 12:38:34 GMT  
		Size: 12.4 MB (12437867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d3d61b3ac8da76a4f519979421a8662cf79cbf3b181cea7658b4f9f76bc5b0`  
		Last Modified: Tue, 16 Oct 2018 12:38:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e50c9861aed9a108bd30b7c92c82d969e46ab88f8e37916076ee0bef6006b3`  
		Last Modified: Fri, 19 Oct 2018 10:12:52 GMT  
		Size: 33.3 MB (33266725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60b693f279cecc6aa11b1145bfadfc5fd3a16a8b82b91a18ca2fe6773eecbec`  
		Last Modified: Fri, 19 Oct 2018 10:12:41 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d17aab0d2842d2fbb733d727958cbed927a2d6d82582076768c29f248929f47`  
		Last Modified: Fri, 19 Oct 2018 10:45:05 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5824bc61139a628082bb2f4d4eb130754eef3bef3d0aed04eff0be802d50d7`  
		Last Modified: Fri, 19 Oct 2018 10:45:30 GMT  
		Size: 83.8 MB (83781863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e928cb6619504791b9e12651423b8c04bd0e157279f245cbfdf1967950aacacb`  
		Last Modified: Fri, 19 Oct 2018 10:45:04 GMT  
		Size: 894.5 KB (894472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a2706d617ebf1c69b98e1052ede79baf9024f7a09db13b187c3b7466bcdbd`  
		Last Modified: Fri, 19 Oct 2018 10:45:04 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c44ee86262bdb6975a5fe20e27cd6b2991300f6a5aac55d20c76786391e23e6`  
		Last Modified: Fri, 19 Oct 2018 10:45:05 GMT  
		Size: 2.4 MB (2394452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a887adfd4deca162cbe7d9c630f97de9b27a388b034d68952629d0813912fd`  
		Last Modified: Fri, 19 Oct 2018 10:45:34 GMT  
		Size: 120.7 MB (120703730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d83d5daa5d9904579c27f738561929725ac2cebbad11c89383f8df56e194e0`  
		Last Modified: Fri, 19 Oct 2018 10:45:03 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:76c3d886c134e73ad592c249c7317c635e62c287068209321464d4b3d422c68d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290079278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fda03bc46fae15c4ea2bdba3f2ae453b97985f1cc19c0e305ad2d7d84ad5e6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 14:04:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:04:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:04:07 GMT
ENV RUBY_MAJOR=2.3
# Tue, 16 Oct 2018 14:04:08 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 14:04:08 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 14:04:09 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 14:04:09 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 14:08:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 14:08:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 14:08:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 14:08:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 14:08:46 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 14:08:47 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:27:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:27:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:27:52 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:27:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:27:53 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 16:27:53 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 16:27:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:33:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:33:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:33:33 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:33:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:33:34 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:33:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c190097722c5092599409f31569ed5200792e0f620ea277eb9471ca717e39b8d`  
		Last Modified: Tue, 16 Oct 2018 14:14:21 GMT  
		Size: 11.9 MB (11886924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d56636fb39f7cafe1ae24247a4bbeb2a00e98767f63d5e98e305e2b62a59fcf`  
		Last Modified: Tue, 16 Oct 2018 14:14:15 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70de3bddd605ddfa9c7d52d79165548f20dcf73e137f723df1bf8d1cf8ae900c`  
		Last Modified: Tue, 16 Oct 2018 14:14:32 GMT  
		Size: 32.9 MB (32940327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0259d3d9f2c691116d71fdea890ac952c0aa05973b494e502059f56cc9584c75`  
		Last Modified: Tue, 16 Oct 2018 14:14:15 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d82d4a18a6191af2e72d7dc34491e010cc91b3e5e4c9022417aefb978c6a94b`  
		Last Modified: Tue, 16 Oct 2018 16:34:47 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e77d80f2c522c66901ccaed2ac20b826faccd0fbdee7c95bb691e5b0eb378bd`  
		Last Modified: Tue, 16 Oct 2018 16:35:09 GMT  
		Size: 80.7 MB (80659927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64dc534395263abe794573671781649e59929aa711723967c1e67bdb9ad4024`  
		Last Modified: Tue, 16 Oct 2018 16:34:45 GMT  
		Size: 877.5 KB (877534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e3c80547bf9259d2755b7d07c924ead8d5aea582f5fc2c64f50a435400bdc2`  
		Last Modified: Tue, 16 Oct 2018 16:34:45 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b3c29c589b820401561d04761b2bd460e55016cddd08137398a8b21a246f`  
		Last Modified: Tue, 16 Oct 2018 16:34:47 GMT  
		Size: 2.4 MB (2394450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02f52ea8330bd247db796c6910dbcc8c775a01bd5ffab601baed7c36642771b`  
		Last Modified: Tue, 16 Oct 2018 16:35:17 GMT  
		Size: 119.3 MB (119252956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4e6717f259384309ad9c37a2e8697ed0c8e8dfce01fdbba4eeb1eca835d91`  
		Last Modified: Tue, 16 Oct 2018 16:34:45 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:e6e50deb188985684c829ad3734b407fb62b525dc83c68439412d486f6eeffeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296451376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cee4c47270c4eeccdf61a29a1cb270c4bb3c476d7d9919940eba6642de637a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 20:49:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:49:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 20:49:24 GMT
ENV RUBY_MAJOR=2.3
# Tue, 16 Oct 2018 20:49:25 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 20:49:26 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 20:49:27 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 20:49:27 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 20:58:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 20:58:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 20:58:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 20:58:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 20:58:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 20:58:25 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 08:20:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 08:23:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 08:24:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:24:55 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 08:24:58 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 08:25:00 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 17 Oct 2018 08:25:03 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 17 Oct 2018 08:25:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 08:38:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:38:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 08:38:51 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 08:38:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 08:38:54 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 08:38:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0524abdb484b8326adf1ec923a815992609d5f6eec3b87485ab3ae0cd246a167`  
		Last Modified: Tue, 16 Oct 2018 21:06:47 GMT  
		Size: 12.7 MB (12708684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233ebb69d6f6d8db92e343a5106b4095d25e4739a9811732dcacfcab3fda486`  
		Last Modified: Tue, 16 Oct 2018 21:06:41 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910ace2c3213dfd7cfb6caede679a258cefa6ca14bb2ed6769ce8c61be486baf`  
		Last Modified: Tue, 16 Oct 2018 21:06:58 GMT  
		Size: 34.4 MB (34403905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4aa1318ce64cff0f05074c95efac4fe55c7dbf35e7ee5a47dfc9c2aea2abb63`  
		Last Modified: Tue, 16 Oct 2018 21:06:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6c36fcb576bc875306c3285cafc8099d76728efea05b2edf89fa6d93064dfb`  
		Last Modified: Wed, 17 Oct 2018 08:40:46 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd560c162e008992bb71a82ef513a84fa3d7bc2372035b05b34c3bb86314d79`  
		Last Modified: Wed, 17 Oct 2018 08:41:15 GMT  
		Size: 82.7 MB (82737615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffa279fb098c28e93176a0436bc81c29355c7130f4572ded1a2670c665f5dd3`  
		Last Modified: Wed, 17 Oct 2018 08:40:44 GMT  
		Size: 873.1 KB (873117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727a41ee41c5b6d0e01c4620b45e412b55fd62bdc80e2d5a48c33fc4a35a961`  
		Last Modified: Wed, 17 Oct 2018 08:40:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9749438cc1556b81954dc2e528ec450118b60a351dfecdbe49ffc838e2c6dd`  
		Last Modified: Wed, 17 Oct 2018 08:40:46 GMT  
		Size: 2.4 MB (2394064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec76050facfc93ed4975f55ed0cd6302e9cb67abf2c91a880ca765b41715571`  
		Last Modified: Wed, 17 Oct 2018 08:41:23 GMT  
		Size: 120.2 MB (120206314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dde67be62daf25b536c5ca3d5ab5d661effabb636ee787932e915b4a09e96eb`  
		Last Modified: Wed, 17 Oct 2018 08:40:44 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:074938c7ead246f7279fe34bcf59801cc4789acb829fe1a5226a7530b7131177
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312905345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef105c13f8536fb05281773db63f00d12af5d5eaa23a38332b7393db7e504c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 01:19:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 01:19:49 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 17 Oct 2018 01:19:49 GMT
ENV RUBY_MAJOR=2.3
# Wed, 17 Oct 2018 01:19:50 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 17 Oct 2018 01:19:50 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 17 Oct 2018 01:19:50 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 17 Oct 2018 01:19:50 GMT
ENV BUNDLER_VERSION=1.16.6
# Wed, 17 Oct 2018 01:23:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 17 Oct 2018 01:23:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 Oct 2018 01:23:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 Oct 2018 01:23:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 01:23:11 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 17 Oct 2018 01:23:11 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 10:46:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 10:47:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 10:47:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:47:29 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 10:47:29 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 10:47:29 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 17 Oct 2018 10:47:29 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 17 Oct 2018 10:47:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 10:50:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:50:46 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 10:50:46 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 10:50:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 10:50:46 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 10:50:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aab700c414532b94ab1ff642dbe5fc77f6a15a6e7346b8511e276bbb381ff3e`  
		Last Modified: Wed, 17 Oct 2018 01:39:19 GMT  
		Size: 17.5 MB (17546494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8b50a76867fa84f8f021333d1f8b401a0f31e719de0feaab2638dae34f9d0e`  
		Last Modified: Wed, 17 Oct 2018 01:39:13 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5596ffb617d5c76ddb3857bfe483aefab6e77a2b14b12c61b68057220c60c2e`  
		Last Modified: Wed, 17 Oct 2018 01:39:23 GMT  
		Size: 33.1 MB (33079088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bbe20c5c13ceba280fcf4cc4050441f3181139238be815a4d56167457addad`  
		Last Modified: Wed, 17 Oct 2018 01:39:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b8e02c8367963620bda416e61effe2c781e797222a11675b82f677f88097b9`  
		Last Modified: Wed, 17 Oct 2018 10:52:14 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1febe434a555f1bc6cb4cbaa5c3e7f2e3139c9ceb3ecdbe611280f7ac7e490e6`  
		Last Modified: Wed, 17 Oct 2018 10:52:38 GMT  
		Size: 88.5 MB (88543036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf15b9049044ff39bbcaffbd6764ae389cdaae1ccb3ab6dbfe4449d670a3ed1b`  
		Last Modified: Wed, 17 Oct 2018 10:52:13 GMT  
		Size: 884.6 KB (884648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc381c9fd756b1e156775f7b08a9429ee6595a1442f3120a358849419aa0636d`  
		Last Modified: Wed, 17 Oct 2018 10:52:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1da2c3f14cfaadbc5c81083cb89a9de4e5a513ccea3ed5fc04b58c690f0b60c`  
		Last Modified: Wed, 17 Oct 2018 10:52:13 GMT  
		Size: 2.4 MB (2394068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f408255493e5f18556efdc25ff0f51509d2c24426ae193190441e7d8e645078`  
		Last Modified: Wed, 17 Oct 2018 10:52:41 GMT  
		Size: 124.4 MB (124414736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48e5c3d9f0ba5eb29b15ef9614ff36e29fb1b9fe7e2d280a5faef05b29466d7`  
		Last Modified: Wed, 17 Oct 2018 10:52:12 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:c977b8106ca73d689d82e80bdd2383c16100fae964119e2041378b246b005b31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306144262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5ccd74c3c695f9c30e07cbc89c04b1654b45039f0c17cb390165dbecf1b5ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 14:25:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:25:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:25:54 GMT
ENV RUBY_MAJOR=2.3
# Fri, 19 Oct 2018 09:51:01 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 19 Oct 2018 09:51:02 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 19 Oct 2018 09:51:02 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:51:03 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:57:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:57:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:57:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:57:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:57:53 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:57:55 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 11:12:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 11:14:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:15:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:15:09 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 11:15:14 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 11:15:18 GMT
ENV REDMINE_VERSION=3.3.8
# Fri, 19 Oct 2018 11:15:19 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Fri, 19 Oct 2018 11:15:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 11:24:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:24:14 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 11:24:15 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 11:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 11:24:18 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 11:24:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca5fac5282e925ea6c77b8576a450457a2b3585bfeb84aa04f8e34371e0daf`  
		Last Modified: Tue, 16 Oct 2018 14:38:44 GMT  
		Size: 13.6 MB (13561609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d915127355dc810ddff2a64607b39857b2ce094088d84494c0bdba2d443c564`  
		Last Modified: Tue, 16 Oct 2018 14:38:39 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5166a33eb159be503140d65ddfafffbc3969a28fcca217a939370e1d796fb16e`  
		Last Modified: Fri, 19 Oct 2018 10:13:16 GMT  
		Size: 35.3 MB (35259021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76eae06815d2a5ac52c2991736fc7d1cad3d1bb9f03465d401438756e9348a4`  
		Last Modified: Fri, 19 Oct 2018 10:13:04 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fcce3adcf7d7e7a25cb1dbe6470779ae7d88b80601c2ef5bda56559cc82dc8`  
		Last Modified: Fri, 19 Oct 2018 11:27:15 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f34115e9e5cc103905c2b77b4e27b0b5cd12646501b49dd31452c0f1a28c5d`  
		Last Modified: Fri, 19 Oct 2018 11:27:54 GMT  
		Size: 85.9 MB (85936374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e1decbdb5aae99b12d24c98c6a1dc01aa8e9e3d6bee3652847c87ff563f245`  
		Last Modified: Fri, 19 Oct 2018 11:27:11 GMT  
		Size: 873.6 KB (873650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3648c55a0d997a247ecac7a2a359ca3d2a79c8540b30e3f16c671d44fa10dace`  
		Last Modified: Fri, 19 Oct 2018 11:27:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a092c48ae6a5ff34271f78b7b6efcb201b45750018ec6d94efe841999c7b584c`  
		Last Modified: Fri, 19 Oct 2018 11:27:07 GMT  
		Size: 2.4 MB (2394447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ab028d9901e6a90a0de6c637c5ee042787cbcb44aadea57903dd1d9f08c44b`  
		Last Modified: Fri, 19 Oct 2018 11:27:44 GMT  
		Size: 122.5 MB (122519512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e49cd62475ec4a61bddc88b4b66228710144233c4f5717c56189cc62fa38576`  
		Last Modified: Fri, 19 Oct 2018 11:27:06 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:f1457982969efafc1a913c35dee2e94c8b038119c73b09792f3b3c7bef1e614d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.1 MB (312092190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fea9010cd647e036d80ff6c7696343ac08f160fcbbfa7dcd9cf0ea0c91e56fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 14:20:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:20:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:20:08 GMT
ENV RUBY_MAJOR=2.3
# Tue, 16 Oct 2018 14:20:08 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 14:20:08 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 14:20:09 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 14:20:09 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 14:23:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 14:23:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 14:23:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 14:23:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 14:23:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 14:23:49 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 19:24:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 19:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 19:24:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:24:54 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 19:24:54 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 19:24:54 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 19:24:54 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 19:24:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 19:27:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:27:49 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 19:27:51 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 19:27:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:27:51 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 19:27:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f0c6ab82aac7c6e72d977c2f8ed191614c8bac9a0cc274b366578f2a56a7d`  
		Last Modified: Tue, 16 Oct 2018 14:26:52 GMT  
		Size: 14.7 MB (14656650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8248e577763dda78fddeee0cbe12205f88bdd5e471f0c41105863264ce1ca16`  
		Last Modified: Tue, 16 Oct 2018 14:26:48 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32644c1d3d2f177c433bb571fff39fcf90a0a729ce0bea637b0fb3a135058911`  
		Last Modified: Tue, 16 Oct 2018 14:26:59 GMT  
		Size: 38.5 MB (38532256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9ee18110ce195fd167b0accb5db4b8d0711b24cfae97b2bd8b1ca7eca7ba7b`  
		Last Modified: Tue, 16 Oct 2018 14:26:48 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e1a2cb65cfed266699b21c9ee29340d22f303be579bdd04118b3b09b71634d`  
		Last Modified: Tue, 16 Oct 2018 19:28:53 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ae1b69f64990a07a9fcc0c62608254525aea52e730018912ca23133a9da89c`  
		Last Modified: Tue, 16 Oct 2018 19:29:09 GMT  
		Size: 86.5 MB (86499615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8856a75a0625aaa0e86a6b2f9c8903ac947bf99a42c1ebbe6c0fda0a7ee72d67`  
		Last Modified: Tue, 16 Oct 2018 19:28:52 GMT  
		Size: 890.8 KB (890839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f420eabdbcec33d42c809f35b8538749b0c76183afd27b8b368f5c1b4d61ac`  
		Last Modified: Tue, 16 Oct 2018 19:28:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305e839fcc56058cbe3d96e67b53e4d5c03671643965516859f57fb30468602d`  
		Last Modified: Tue, 16 Oct 2018 19:28:53 GMT  
		Size: 2.4 MB (2394062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18555d1b6b3145f890a9b837624599abcf10f15ec41e2e3a515329c12f77e687`  
		Last Modified: Tue, 16 Oct 2018 19:29:11 GMT  
		Size: 123.9 MB (123914853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fe03dc46996d3a8dba586794efa9dec47823f0617d7b5e9b3cbe610f7541a8`  
		Last Modified: Tue, 16 Oct 2018 19:28:51 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.8`

```console
$ docker pull redmine@sha256:d51469629fa26919e9a21256a6d80c732bc8b0796dfa429879f32e1317713137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.3.8` - linux; amd64

```console
$ docker pull redmine@sha256:3dc6b2b09f39123e6628c8f470f2ea3c9098773f1f4b85f863c4d254cf482a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.1 MB (310083680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcee3d085dd94d71542b2ebe59f3cf2078f74304e6d81a500f837629b5dc134`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:12:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:12:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 00:12:30 GMT
ENV RUBY_MAJOR=2.3
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 00:10:28 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 00:14:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 00:14:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 00:14:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 00:14:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 00:14:20 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 00:14:21 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 01:23:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 01:23:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:23:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 01:23:36 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 01:23:36 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 01:23:36 GMT
ENV REDMINE_VERSION=3.3.8
# Fri, 19 Oct 2018 01:23:37 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Fri, 19 Oct 2018 01:23:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 01:26:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 01:26:53 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 01:26:53 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 01:26:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:26:54 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 01:26:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48316c13dd79bc44d1a8c279bc791dccdac6515a5ebb5347478d6f5ab288d111`  
		Last Modified: Tue, 16 Oct 2018 00:27:55 GMT  
		Size: 14.5 MB (14455212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0066730cb1584d7dc204ed24441064ab8fe9553f6aaa40debaeef08dea7143`  
		Last Modified: Tue, 16 Oct 2018 00:27:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66521df1963ad9a5920f3eccc7c115ddb748d6811dded6c71faeb7d1177c6b9`  
		Last Modified: Fri, 19 Oct 2018 00:42:49 GMT  
		Size: 34.6 MB (34564016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34f94faa99d8b72dceabf8eb14b5b917e8f35395f223bf2817e0c35ca3933aa`  
		Last Modified: Fri, 19 Oct 2018 00:42:39 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19da6b2e3d0e21ddc7573d774023b332a44f2057b4d1c9d3eec0be5ab453756`  
		Last Modified: Fri, 19 Oct 2018 01:29:40 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feebd13c20836647a709e5afa31d2b87d01367c85668d407b7542d3319ed1430`  
		Last Modified: Fri, 19 Oct 2018 01:29:59 GMT  
		Size: 86.5 MB (86450612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae784c77573a98dce87d71db01148849c8c73ddf2d6e0b1262788ba0336588b`  
		Last Modified: Fri, 19 Oct 2018 01:29:40 GMT  
		Size: 904.7 KB (904721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba2f44f080d598746e987aed8c4031505d49d5b1da81a5cae3a2df9c4751742`  
		Last Modified: Fri, 19 Oct 2018 01:29:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc2695d3499806ab712f146073498b262045353365163491c6205269195e9cf`  
		Last Modified: Fri, 19 Oct 2018 01:29:41 GMT  
		Size: 2.4 MB (2394061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f927b7a13533b59ae68c57ec9668e8efe39a7d83aec91ed6b661906411b90850`  
		Last Modified: Fri, 19 Oct 2018 01:30:01 GMT  
		Size: 126.0 MB (126001056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d00ef3c7ffa278a7f67227aa671b7ae810fab96496164a555f31f7f724ed9ac`  
		Last Modified: Fri, 19 Oct 2018 01:29:39 GMT  
		Size: 1.8 KB (1822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:51645d54d0b4622b23ac0bf4c681135173e9ad912c4bb393469415aeb3a8aa3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.5 MB (297516295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4addae02d67c97c1164415856034c94240846d0ef6a56e260a856d2c228bc27`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:28:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:28:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 12:28:47 GMT
ENV RUBY_MAJOR=2.3
# Fri, 19 Oct 2018 09:52:51 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 19 Oct 2018 09:52:51 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 19 Oct 2018 09:52:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:52:52 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:57:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:57:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:57:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:57:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:57:32 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:57:33 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 10:36:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 10:37:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:37:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:37:47 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 10:37:47 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 10:37:47 GMT
ENV REDMINE_VERSION=3.3.8
# Fri, 19 Oct 2018 10:37:48 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Fri, 19 Oct 2018 10:37:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 10:43:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:43:42 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 10:43:42 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 10:43:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:43:43 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 10:43:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e62782e47c43cc7e5b28f3c8cc3c877a2bb26c16bb5d9001c699b141937baed`  
		Last Modified: Tue, 16 Oct 2018 12:38:34 GMT  
		Size: 12.4 MB (12437867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d3d61b3ac8da76a4f519979421a8662cf79cbf3b181cea7658b4f9f76bc5b0`  
		Last Modified: Tue, 16 Oct 2018 12:38:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e50c9861aed9a108bd30b7c92c82d969e46ab88f8e37916076ee0bef6006b3`  
		Last Modified: Fri, 19 Oct 2018 10:12:52 GMT  
		Size: 33.3 MB (33266725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60b693f279cecc6aa11b1145bfadfc5fd3a16a8b82b91a18ca2fe6773eecbec`  
		Last Modified: Fri, 19 Oct 2018 10:12:41 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d17aab0d2842d2fbb733d727958cbed927a2d6d82582076768c29f248929f47`  
		Last Modified: Fri, 19 Oct 2018 10:45:05 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5824bc61139a628082bb2f4d4eb130754eef3bef3d0aed04eff0be802d50d7`  
		Last Modified: Fri, 19 Oct 2018 10:45:30 GMT  
		Size: 83.8 MB (83781863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e928cb6619504791b9e12651423b8c04bd0e157279f245cbfdf1967950aacacb`  
		Last Modified: Fri, 19 Oct 2018 10:45:04 GMT  
		Size: 894.5 KB (894472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a2706d617ebf1c69b98e1052ede79baf9024f7a09db13b187c3b7466bcdbd`  
		Last Modified: Fri, 19 Oct 2018 10:45:04 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c44ee86262bdb6975a5fe20e27cd6b2991300f6a5aac55d20c76786391e23e6`  
		Last Modified: Fri, 19 Oct 2018 10:45:05 GMT  
		Size: 2.4 MB (2394452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a887adfd4deca162cbe7d9c630f97de9b27a388b034d68952629d0813912fd`  
		Last Modified: Fri, 19 Oct 2018 10:45:34 GMT  
		Size: 120.7 MB (120703730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d83d5daa5d9904579c27f738561929725ac2cebbad11c89383f8df56e194e0`  
		Last Modified: Fri, 19 Oct 2018 10:45:03 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm variant v7

```console
$ docker pull redmine@sha256:76c3d886c134e73ad592c249c7317c635e62c287068209321464d4b3d422c68d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290079278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fda03bc46fae15c4ea2bdba3f2ae453b97985f1cc19c0e305ad2d7d84ad5e6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 14:04:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:04:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:04:07 GMT
ENV RUBY_MAJOR=2.3
# Tue, 16 Oct 2018 14:04:08 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 14:04:08 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 14:04:09 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 14:04:09 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 14:08:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 14:08:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 14:08:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 14:08:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 14:08:46 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 14:08:47 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:26:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:27:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:27:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:27:52 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:27:52 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:27:53 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 16:27:53 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 16:27:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:33:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:33:33 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:33:33 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:33:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:33:34 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:33:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c190097722c5092599409f31569ed5200792e0f620ea277eb9471ca717e39b8d`  
		Last Modified: Tue, 16 Oct 2018 14:14:21 GMT  
		Size: 11.9 MB (11886924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d56636fb39f7cafe1ae24247a4bbeb2a00e98767f63d5e98e305e2b62a59fcf`  
		Last Modified: Tue, 16 Oct 2018 14:14:15 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70de3bddd605ddfa9c7d52d79165548f20dcf73e137f723df1bf8d1cf8ae900c`  
		Last Modified: Tue, 16 Oct 2018 14:14:32 GMT  
		Size: 32.9 MB (32940327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0259d3d9f2c691116d71fdea890ac952c0aa05973b494e502059f56cc9584c75`  
		Last Modified: Tue, 16 Oct 2018 14:14:15 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d82d4a18a6191af2e72d7dc34491e010cc91b3e5e4c9022417aefb978c6a94b`  
		Last Modified: Tue, 16 Oct 2018 16:34:47 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e77d80f2c522c66901ccaed2ac20b826faccd0fbdee7c95bb691e5b0eb378bd`  
		Last Modified: Tue, 16 Oct 2018 16:35:09 GMT  
		Size: 80.7 MB (80659927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64dc534395263abe794573671781649e59929aa711723967c1e67bdb9ad4024`  
		Last Modified: Tue, 16 Oct 2018 16:34:45 GMT  
		Size: 877.5 KB (877534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e3c80547bf9259d2755b7d07c924ead8d5aea582f5fc2c64f50a435400bdc2`  
		Last Modified: Tue, 16 Oct 2018 16:34:45 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b3c29c589b820401561d04761b2bd460e55016cddd08137398a8b21a246f`  
		Last Modified: Tue, 16 Oct 2018 16:34:47 GMT  
		Size: 2.4 MB (2394450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02f52ea8330bd247db796c6910dbcc8c775a01bd5ffab601baed7c36642771b`  
		Last Modified: Tue, 16 Oct 2018 16:35:17 GMT  
		Size: 119.3 MB (119252956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c4e6717f259384309ad9c37a2e8697ed0c8e8dfce01fdbba4eeb1eca835d91`  
		Last Modified: Tue, 16 Oct 2018 16:34:45 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:e6e50deb188985684c829ad3734b407fb62b525dc83c68439412d486f6eeffeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296451376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cee4c47270c4eeccdf61a29a1cb270c4bb3c476d7d9919940eba6642de637a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 20:49:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:49:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 20:49:24 GMT
ENV RUBY_MAJOR=2.3
# Tue, 16 Oct 2018 20:49:25 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 20:49:26 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 20:49:27 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 20:49:27 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 20:58:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 20:58:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 20:58:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 20:58:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 20:58:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 20:58:25 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 08:20:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 08:23:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 08:24:51 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:24:55 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 08:24:58 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 08:25:00 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 17 Oct 2018 08:25:03 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 17 Oct 2018 08:25:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 08:38:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:38:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 08:38:51 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 08:38:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 08:38:54 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 08:38:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0524abdb484b8326adf1ec923a815992609d5f6eec3b87485ab3ae0cd246a167`  
		Last Modified: Tue, 16 Oct 2018 21:06:47 GMT  
		Size: 12.7 MB (12708684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233ebb69d6f6d8db92e343a5106b4095d25e4739a9811732dcacfcab3fda486`  
		Last Modified: Tue, 16 Oct 2018 21:06:41 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910ace2c3213dfd7cfb6caede679a258cefa6ca14bb2ed6769ce8c61be486baf`  
		Last Modified: Tue, 16 Oct 2018 21:06:58 GMT  
		Size: 34.4 MB (34403905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4aa1318ce64cff0f05074c95efac4fe55c7dbf35e7ee5a47dfc9c2aea2abb63`  
		Last Modified: Tue, 16 Oct 2018 21:06:41 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6c36fcb576bc875306c3285cafc8099d76728efea05b2edf89fa6d93064dfb`  
		Last Modified: Wed, 17 Oct 2018 08:40:46 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd560c162e008992bb71a82ef513a84fa3d7bc2372035b05b34c3bb86314d79`  
		Last Modified: Wed, 17 Oct 2018 08:41:15 GMT  
		Size: 82.7 MB (82737615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffa279fb098c28e93176a0436bc81c29355c7130f4572ded1a2670c665f5dd3`  
		Last Modified: Wed, 17 Oct 2018 08:40:44 GMT  
		Size: 873.1 KB (873117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727a41ee41c5b6d0e01c4620b45e412b55fd62bdc80e2d5a48c33fc4a35a961`  
		Last Modified: Wed, 17 Oct 2018 08:40:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9749438cc1556b81954dc2e528ec450118b60a351dfecdbe49ffc838e2c6dd`  
		Last Modified: Wed, 17 Oct 2018 08:40:46 GMT  
		Size: 2.4 MB (2394064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec76050facfc93ed4975f55ed0cd6302e9cb67abf2c91a880ca765b41715571`  
		Last Modified: Wed, 17 Oct 2018 08:41:23 GMT  
		Size: 120.2 MB (120206314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dde67be62daf25b536c5ca3d5ab5d661effabb636ee787932e915b4a09e96eb`  
		Last Modified: Wed, 17 Oct 2018 08:40:44 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; 386

```console
$ docker pull redmine@sha256:074938c7ead246f7279fe34bcf59801cc4789acb829fe1a5226a7530b7131177
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312905345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef105c13f8536fb05281773db63f00d12af5d5eaa23a38332b7393db7e504c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 01:19:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 01:19:49 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 17 Oct 2018 01:19:49 GMT
ENV RUBY_MAJOR=2.3
# Wed, 17 Oct 2018 01:19:50 GMT
ENV RUBY_VERSION=2.3.7
# Wed, 17 Oct 2018 01:19:50 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Wed, 17 Oct 2018 01:19:50 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 17 Oct 2018 01:19:50 GMT
ENV BUNDLER_VERSION=1.16.6
# Wed, 17 Oct 2018 01:23:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 17 Oct 2018 01:23:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 Oct 2018 01:23:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 Oct 2018 01:23:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 01:23:11 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 17 Oct 2018 01:23:11 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 10:46:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 10:47:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 10:47:28 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:47:29 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 10:47:29 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 10:47:29 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 17 Oct 2018 10:47:29 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 17 Oct 2018 10:47:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 10:50:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:50:46 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 10:50:46 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 10:50:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 10:50:46 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 10:50:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aab700c414532b94ab1ff642dbe5fc77f6a15a6e7346b8511e276bbb381ff3e`  
		Last Modified: Wed, 17 Oct 2018 01:39:19 GMT  
		Size: 17.5 MB (17546494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8b50a76867fa84f8f021333d1f8b401a0f31e719de0feaab2638dae34f9d0e`  
		Last Modified: Wed, 17 Oct 2018 01:39:13 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5596ffb617d5c76ddb3857bfe483aefab6e77a2b14b12c61b68057220c60c2e`  
		Last Modified: Wed, 17 Oct 2018 01:39:23 GMT  
		Size: 33.1 MB (33079088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31bbe20c5c13ceba280fcf4cc4050441f3181139238be815a4d56167457addad`  
		Last Modified: Wed, 17 Oct 2018 01:39:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b8e02c8367963620bda416e61effe2c781e797222a11675b82f677f88097b9`  
		Last Modified: Wed, 17 Oct 2018 10:52:14 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1febe434a555f1bc6cb4cbaa5c3e7f2e3139c9ceb3ecdbe611280f7ac7e490e6`  
		Last Modified: Wed, 17 Oct 2018 10:52:38 GMT  
		Size: 88.5 MB (88543036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf15b9049044ff39bbcaffbd6764ae389cdaae1ccb3ab6dbfe4449d670a3ed1b`  
		Last Modified: Wed, 17 Oct 2018 10:52:13 GMT  
		Size: 884.6 KB (884648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc381c9fd756b1e156775f7b08a9429ee6595a1442f3120a358849419aa0636d`  
		Last Modified: Wed, 17 Oct 2018 10:52:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1da2c3f14cfaadbc5c81083cb89a9de4e5a513ccea3ed5fc04b58c690f0b60c`  
		Last Modified: Wed, 17 Oct 2018 10:52:13 GMT  
		Size: 2.4 MB (2394068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f408255493e5f18556efdc25ff0f51509d2c24426ae193190441e7d8e645078`  
		Last Modified: Wed, 17 Oct 2018 10:52:41 GMT  
		Size: 124.4 MB (124414736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48e5c3d9f0ba5eb29b15ef9614ff36e29fb1b9fe7e2d280a5faef05b29466d7`  
		Last Modified: Wed, 17 Oct 2018 10:52:12 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; ppc64le

```console
$ docker pull redmine@sha256:c977b8106ca73d689d82e80bdd2383c16100fae964119e2041378b246b005b31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306144262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5ccd74c3c695f9c30e07cbc89c04b1654b45039f0c17cb390165dbecf1b5ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 14:25:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:25:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:25:54 GMT
ENV RUBY_MAJOR=2.3
# Fri, 19 Oct 2018 09:51:01 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 19 Oct 2018 09:51:02 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 19 Oct 2018 09:51:02 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:51:03 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:57:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:57:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:57:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:57:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:57:53 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:57:55 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 11:12:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 11:14:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:15:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:15:09 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 11:15:14 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 11:15:18 GMT
ENV REDMINE_VERSION=3.3.8
# Fri, 19 Oct 2018 11:15:19 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Fri, 19 Oct 2018 11:15:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 11:24:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:24:14 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 11:24:15 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 11:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 11:24:18 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 11:24:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca5fac5282e925ea6c77b8576a450457a2b3585bfeb84aa04f8e34371e0daf`  
		Last Modified: Tue, 16 Oct 2018 14:38:44 GMT  
		Size: 13.6 MB (13561609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d915127355dc810ddff2a64607b39857b2ce094088d84494c0bdba2d443c564`  
		Last Modified: Tue, 16 Oct 2018 14:38:39 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5166a33eb159be503140d65ddfafffbc3969a28fcca217a939370e1d796fb16e`  
		Last Modified: Fri, 19 Oct 2018 10:13:16 GMT  
		Size: 35.3 MB (35259021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76eae06815d2a5ac52c2991736fc7d1cad3d1bb9f03465d401438756e9348a4`  
		Last Modified: Fri, 19 Oct 2018 10:13:04 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fcce3adcf7d7e7a25cb1dbe6470779ae7d88b80601c2ef5bda56559cc82dc8`  
		Last Modified: Fri, 19 Oct 2018 11:27:15 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f34115e9e5cc103905c2b77b4e27b0b5cd12646501b49dd31452c0f1a28c5d`  
		Last Modified: Fri, 19 Oct 2018 11:27:54 GMT  
		Size: 85.9 MB (85936374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e1decbdb5aae99b12d24c98c6a1dc01aa8e9e3d6bee3652847c87ff563f245`  
		Last Modified: Fri, 19 Oct 2018 11:27:11 GMT  
		Size: 873.6 KB (873650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3648c55a0d997a247ecac7a2a359ca3d2a79c8540b30e3f16c671d44fa10dace`  
		Last Modified: Fri, 19 Oct 2018 11:27:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a092c48ae6a5ff34271f78b7b6efcb201b45750018ec6d94efe841999c7b584c`  
		Last Modified: Fri, 19 Oct 2018 11:27:07 GMT  
		Size: 2.4 MB (2394447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ab028d9901e6a90a0de6c637c5ee042787cbcb44aadea57903dd1d9f08c44b`  
		Last Modified: Fri, 19 Oct 2018 11:27:44 GMT  
		Size: 122.5 MB (122519512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e49cd62475ec4a61bddc88b4b66228710144233c4f5717c56189cc62fa38576`  
		Last Modified: Fri, 19 Oct 2018 11:27:06 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; s390x

```console
$ docker pull redmine@sha256:f1457982969efafc1a913c35dee2e94c8b038119c73b09792f3b3c7bef1e614d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.1 MB (312092190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fea9010cd647e036d80ff6c7696343ac08f160fcbbfa7dcd9cf0ea0c91e56fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 14:20:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:20:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:20:08 GMT
ENV RUBY_MAJOR=2.3
# Tue, 16 Oct 2018 14:20:08 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 16 Oct 2018 14:20:08 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 16 Oct 2018 14:20:09 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 14:20:09 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 14:23:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 14:23:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 14:23:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 14:23:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 14:23:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 14:23:49 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 19:24:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 19:24:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 19:24:53 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:24:54 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 19:24:54 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 19:24:54 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 16 Oct 2018 19:24:54 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 16 Oct 2018 19:24:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 19:27:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:27:49 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 19:27:51 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 19:27:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:27:51 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 19:27:51 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8f0c6ab82aac7c6e72d977c2f8ed191614c8bac9a0cc274b366578f2a56a7d`  
		Last Modified: Tue, 16 Oct 2018 14:26:52 GMT  
		Size: 14.7 MB (14656650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8248e577763dda78fddeee0cbe12205f88bdd5e471f0c41105863264ce1ca16`  
		Last Modified: Tue, 16 Oct 2018 14:26:48 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32644c1d3d2f177c433bb571fff39fcf90a0a729ce0bea637b0fb3a135058911`  
		Last Modified: Tue, 16 Oct 2018 14:26:59 GMT  
		Size: 38.5 MB (38532256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9ee18110ce195fd167b0accb5db4b8d0711b24cfae97b2bd8b1ca7eca7ba7b`  
		Last Modified: Tue, 16 Oct 2018 14:26:48 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e1a2cb65cfed266699b21c9ee29340d22f303be579bdd04118b3b09b71634d`  
		Last Modified: Tue, 16 Oct 2018 19:28:53 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ae1b69f64990a07a9fcc0c62608254525aea52e730018912ca23133a9da89c`  
		Last Modified: Tue, 16 Oct 2018 19:29:09 GMT  
		Size: 86.5 MB (86499615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8856a75a0625aaa0e86a6b2f9c8903ac947bf99a42c1ebbe6c0fda0a7ee72d67`  
		Last Modified: Tue, 16 Oct 2018 19:28:52 GMT  
		Size: 890.8 KB (890839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f420eabdbcec33d42c809f35b8538749b0c76183afd27b8b368f5c1b4d61ac`  
		Last Modified: Tue, 16 Oct 2018 19:28:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305e839fcc56058cbe3d96e67b53e4d5c03671643965516859f57fb30468602d`  
		Last Modified: Tue, 16 Oct 2018 19:28:53 GMT  
		Size: 2.4 MB (2394062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18555d1b6b3145f890a9b837624599abcf10f15ec41e2e3a515329c12f77e687`  
		Last Modified: Tue, 16 Oct 2018 19:29:11 GMT  
		Size: 123.9 MB (123914853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fe03dc46996d3a8dba586794efa9dec47823f0617d7b5e9b3cbe610f7541a8`  
		Last Modified: Tue, 16 Oct 2018 19:28:51 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.8-passenger`

```console
$ docker pull redmine@sha256:5b303646ee53d7721f39c3417779588ec6700a63daf1ac52220d626a63755e7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:7207b04678d9ad4d7be6f7e36b4c4f728f91795b1ff96abb0fe3b43b7856745d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.6 MB (333643136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8e0161cec5a519925297262af8c3e038a253a2a643ce5b70b3730f2d3f2560`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:12:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:12:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 00:12:30 GMT
ENV RUBY_MAJOR=2.3
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 00:10:28 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 00:14:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 00:14:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 00:14:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 00:14:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 00:14:20 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 00:14:21 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 01:23:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 01:23:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:23:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 01:23:36 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 01:23:36 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 01:23:36 GMT
ENV REDMINE_VERSION=3.3.8
# Fri, 19 Oct 2018 01:23:37 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Fri, 19 Oct 2018 01:23:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 01:26:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 01:26:53 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 01:26:53 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 01:26:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:26:54 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 01:26:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 19 Oct 2018 01:27:05 GMT
ENV PASSENGER_VERSION=5.3.5
# Fri, 19 Oct 2018 01:27:27 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 19 Oct 2018 01:27:28 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 19 Oct 2018 01:27:28 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48316c13dd79bc44d1a8c279bc791dccdac6515a5ebb5347478d6f5ab288d111`  
		Last Modified: Tue, 16 Oct 2018 00:27:55 GMT  
		Size: 14.5 MB (14455212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0066730cb1584d7dc204ed24441064ab8fe9553f6aaa40debaeef08dea7143`  
		Last Modified: Tue, 16 Oct 2018 00:27:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66521df1963ad9a5920f3eccc7c115ddb748d6811dded6c71faeb7d1177c6b9`  
		Last Modified: Fri, 19 Oct 2018 00:42:49 GMT  
		Size: 34.6 MB (34564016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34f94faa99d8b72dceabf8eb14b5b917e8f35395f223bf2817e0c35ca3933aa`  
		Last Modified: Fri, 19 Oct 2018 00:42:39 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19da6b2e3d0e21ddc7573d774023b332a44f2057b4d1c9d3eec0be5ab453756`  
		Last Modified: Fri, 19 Oct 2018 01:29:40 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feebd13c20836647a709e5afa31d2b87d01367c85668d407b7542d3319ed1430`  
		Last Modified: Fri, 19 Oct 2018 01:29:59 GMT  
		Size: 86.5 MB (86450612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae784c77573a98dce87d71db01148849c8c73ddf2d6e0b1262788ba0336588b`  
		Last Modified: Fri, 19 Oct 2018 01:29:40 GMT  
		Size: 904.7 KB (904721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba2f44f080d598746e987aed8c4031505d49d5b1da81a5cae3a2df9c4751742`  
		Last Modified: Fri, 19 Oct 2018 01:29:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc2695d3499806ab712f146073498b262045353365163491c6205269195e9cf`  
		Last Modified: Fri, 19 Oct 2018 01:29:41 GMT  
		Size: 2.4 MB (2394061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f927b7a13533b59ae68c57ec9668e8efe39a7d83aec91ed6b661906411b90850`  
		Last Modified: Fri, 19 Oct 2018 01:30:01 GMT  
		Size: 126.0 MB (126001056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d00ef3c7ffa278a7f67227aa671b7ae810fab96496164a555f31f7f724ed9ac`  
		Last Modified: Fri, 19 Oct 2018 01:29:39 GMT  
		Size: 1.8 KB (1822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4cf7519a07c05eba193c555217c168814d72a67e846bdd4f1b04f44ce37a65`  
		Last Modified: Fri, 19 Oct 2018 01:30:29 GMT  
		Size: 19.1 MB (19111995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62157abbd6d1f74dfc56aeafc1b9c634f991d6223f1816d11dfb74da0371126f`  
		Last Modified: Fri, 19 Oct 2018 01:30:27 GMT  
		Size: 4.4 MB (4447461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:5b303646ee53d7721f39c3417779588ec6700a63daf1ac52220d626a63755e7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:7207b04678d9ad4d7be6f7e36b4c4f728f91795b1ff96abb0fe3b43b7856745d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.6 MB (333643136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8e0161cec5a519925297262af8c3e038a253a2a643ce5b70b3730f2d3f2560`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:12:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:12:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 00:12:30 GMT
ENV RUBY_MAJOR=2.3
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBY_VERSION=2.3.8
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBY_DOWNLOAD_SHA256=910f635d84fd0d81ac9bdee0731279e6026cb4cd1315bbbb5dfb22e09c5c1dfe
# Fri, 19 Oct 2018 00:10:27 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 00:10:28 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 00:14:05 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 00:14:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 00:14:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 00:14:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 00:14:20 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 00:14:21 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 01:23:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 01:23:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:23:36 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 01:23:36 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 01:23:36 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 01:23:36 GMT
ENV REDMINE_VERSION=3.3.8
# Fri, 19 Oct 2018 01:23:37 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Fri, 19 Oct 2018 01:23:40 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 01:26:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 01:26:53 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 01:26:53 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 01:26:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 01:26:54 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 01:26:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 19 Oct 2018 01:27:05 GMT
ENV PASSENGER_VERSION=5.3.5
# Fri, 19 Oct 2018 01:27:27 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 19 Oct 2018 01:27:28 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 19 Oct 2018 01:27:28 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48316c13dd79bc44d1a8c279bc791dccdac6515a5ebb5347478d6f5ab288d111`  
		Last Modified: Tue, 16 Oct 2018 00:27:55 GMT  
		Size: 14.5 MB (14455212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0066730cb1584d7dc204ed24441064ab8fe9553f6aaa40debaeef08dea7143`  
		Last Modified: Tue, 16 Oct 2018 00:27:51 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66521df1963ad9a5920f3eccc7c115ddb748d6811dded6c71faeb7d1177c6b9`  
		Last Modified: Fri, 19 Oct 2018 00:42:49 GMT  
		Size: 34.6 MB (34564016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34f94faa99d8b72dceabf8eb14b5b917e8f35395f223bf2817e0c35ca3933aa`  
		Last Modified: Fri, 19 Oct 2018 00:42:39 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19da6b2e3d0e21ddc7573d774023b332a44f2057b4d1c9d3eec0be5ab453756`  
		Last Modified: Fri, 19 Oct 2018 01:29:40 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feebd13c20836647a709e5afa31d2b87d01367c85668d407b7542d3319ed1430`  
		Last Modified: Fri, 19 Oct 2018 01:29:59 GMT  
		Size: 86.5 MB (86450612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae784c77573a98dce87d71db01148849c8c73ddf2d6e0b1262788ba0336588b`  
		Last Modified: Fri, 19 Oct 2018 01:29:40 GMT  
		Size: 904.7 KB (904721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba2f44f080d598746e987aed8c4031505d49d5b1da81a5cae3a2df9c4751742`  
		Last Modified: Fri, 19 Oct 2018 01:29:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc2695d3499806ab712f146073498b262045353365163491c6205269195e9cf`  
		Last Modified: Fri, 19 Oct 2018 01:29:41 GMT  
		Size: 2.4 MB (2394061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f927b7a13533b59ae68c57ec9668e8efe39a7d83aec91ed6b661906411b90850`  
		Last Modified: Fri, 19 Oct 2018 01:30:01 GMT  
		Size: 126.0 MB (126001056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d00ef3c7ffa278a7f67227aa671b7ae810fab96496164a555f31f7f724ed9ac`  
		Last Modified: Fri, 19 Oct 2018 01:29:39 GMT  
		Size: 1.8 KB (1822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4cf7519a07c05eba193c555217c168814d72a67e846bdd4f1b04f44ce37a65`  
		Last Modified: Fri, 19 Oct 2018 01:30:29 GMT  
		Size: 19.1 MB (19111995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62157abbd6d1f74dfc56aeafc1b9c634f991d6223f1816d11dfb74da0371126f`  
		Last Modified: Fri, 19 Oct 2018 01:30:27 GMT  
		Size: 4.4 MB (4447461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:e560c82429c1e86aea5645613cde71d330a848443297030c189607174d370324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.4` - linux; amd64

```console
$ docker pull redmine@sha256:a7abeb7d39fb27c4cd950e48ceeb11c4ff8f0df2d9da239d676ea4d62115168f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296403231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74c97c553ac3ad3081f211fff21c4fd4268abf1c5d7604f2f1d05c2ba2dbf38`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:eb57913bf0dfaf168b03d420293142f9f6f5bb281e36e7ada8e8361c34880db4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284859553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37bd7a7d2b417e36631e5b084113cbdef10d68fe8bd3fd9d141dcf2f1d3475e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 12:17:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 19 Oct 2018 09:29:20 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 19 Oct 2018 09:29:21 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 19 Oct 2018 09:29:21 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:29:21 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:35:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:35:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:35:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:35:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:35:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:35:25 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 10:29:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 10:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:30:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:30:41 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 10:30:41 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 10:30:42 GMT
ENV REDMINE_VERSION=3.4.6
# Fri, 19 Oct 2018 10:30:42 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Fri, 19 Oct 2018 10:30:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 10:36:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:36:37 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 10:36:37 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 10:36:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:36:38 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 10:36:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd956c3d59d9c149b09ee0d97a8e7b865de6f7a097088208284aa8744d2765a`  
		Last Modified: Tue, 16 Oct 2018 12:35:04 GMT  
		Size: 11.4 MB (11376546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41750db3498e0c5c42960a9a7b557f725903b2fc9bc90d11bcb52322ad7f0b`  
		Last Modified: Tue, 16 Oct 2018 12:35:00 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a0538e9adb8ed76ded325f5bed83ecf38bcd6cc2adf3a69e7219f25b3a1880`  
		Last Modified: Fri, 19 Oct 2018 10:10:49 GMT  
		Size: 21.3 MB (21316606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87ee82a55b5ca0ff885c49c6784c7f323e8e1f18a64c5182bc9f46cff8984fd`  
		Last Modified: Fri, 19 Oct 2018 10:10:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53bcdeaeb431865a41de3a6fec6f01aabd396f8f3453c3d0c8ed9aff899ad18`  
		Last Modified: Fri, 19 Oct 2018 10:43:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36ff963bbf2209eb8b8225d007236ce2178ca192822e07215077e1a9ff7df9f`  
		Last Modified: Fri, 19 Oct 2018 10:44:34 GMT  
		Size: 85.0 MB (84956928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b99f49cd690c90a476186ef55108e36c3a7ad27370603a467409cb85a6cb8ce`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 894.3 KB (894289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2968fb26f0ca7fa8a43a4cb76d86f5f4aaac0608b82dd94d96d1919df87aa8`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3deea1abcd43523b8ef17eb90743f5b9375ae790f50bfdf819b3e4a8e3a1f1`  
		Last Modified: Fri, 19 Oct 2018 10:43:56 GMT  
		Size: 2.5 MB (2457564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8392fff3e4bbca20c23f867271644fa4dc457a6215d9619eec51dfbd801e70`  
		Last Modified: Fri, 19 Oct 2018 10:44:24 GMT  
		Size: 119.8 MB (119820429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9d769285cdf1208520700dcfc2b4290cb4999588b5c491bffb66f5b3a818c`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:5075c02cf78265f04c4480c74823161851f9e83ca5ebfc0079212f59d3e1f844
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277573093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d73b3135586bcdef637740fbec6b8c5426b0d9f154773f6271353f4c5c635ac5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:37:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 13:52:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 13:52:30 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 13:52:30 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 13:52:31 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 13:52:31 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 13:58:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 13:58:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 13:58:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 13:58:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:58:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 13:58:43 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:19:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:20:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:20:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:20:55 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:20:56 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 16:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 16:21:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:26:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:26:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:26:38 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:26:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:26:43 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:26:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7f2f49a858f9911a8f5ce08344d570b05ef2e0da45af19eb828e10f8a6c8e3`  
		Last Modified: Tue, 16 Oct 2018 14:10:05 GMT  
		Size: 10.9 MB (10897122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921bb25ec33100efed2b0223c431392bbc50d201951e2e85c25b62d55e65e92d`  
		Last Modified: Tue, 16 Oct 2018 14:10:01 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5be5a704e8bb77219200643f27fe6238d3a2d264b3ef0b7536962db392e0c9`  
		Last Modified: Tue, 16 Oct 2018 14:13:11 GMT  
		Size: 21.1 MB (21124392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae78403c671dcbc28919b41434f1856cda70c2b9746030020b47cb54575aa5f`  
		Last Modified: Tue, 16 Oct 2018 14:13:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085937c0ef6c2d1f99cf4b829ce8a3507a4892b7094e4058097987b3129a0613`  
		Last Modified: Tue, 16 Oct 2018 16:33:51 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59f56a588bead060072c1c5ce90a4c5d144158e735f7e9cd178dd187562fbab`  
		Last Modified: Tue, 16 Oct 2018 16:34:12 GMT  
		Size: 81.8 MB (81782097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4bdf40da7c8079b79158a9eb4e713e94fb9252af5676b85892855c86f78ae1`  
		Last Modified: Tue, 16 Oct 2018 16:33:50 GMT  
		Size: 877.5 KB (877536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64c5c8e770913eb935bb0a49ac9fc2fb0180c75d4423356d66b950780556641`  
		Last Modified: Tue, 16 Oct 2018 16:33:49 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4bbb7b7d1d4e86f84bb96e044007730c518da8bbda80483b804f71981617aa`  
		Last Modified: Tue, 16 Oct 2018 16:33:51 GMT  
		Size: 2.5 MB (2457553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c779c3d23ced352df5fd3871db011d2f64e85df7576ec39a793dacb5a84d607d`  
		Last Modified: Tue, 16 Oct 2018 16:34:19 GMT  
		Size: 118.4 MB (118367235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4575a48f2addb4af1a85c51916e082fc8ac375d92376668ab6ce246e799bb3a2`  
		Last Modified: Tue, 16 Oct 2018 16:33:49 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:bd50aab2668189d2f0922729fc4c44ca9648c053fbe15d70c4fb9cc1a60b7375
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282880287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d54364325ccfa21bd4ad552852f470a648e882436c8f1138b4d7a13231758e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 20:03:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:03:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 20:31:46 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 20:31:47 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 20:31:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 20:31:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 20:31:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 20:41:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 20:41:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 20:41:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 20:41:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 20:41:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 20:41:52 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 07:57:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 08:03:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 08:03:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:03:49 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 08:03:50 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 08:03:51 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 17 Oct 2018 08:03:52 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 17 Oct 2018 08:03:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 08:19:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:19:46 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 08:19:48 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 08:19:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 08:20:01 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 08:20:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09b97f46d02c4bcd42ca4df89ced3449218f7a9725a18c05fa54a80eb18635`  
		Last Modified: Tue, 16 Oct 2018 21:00:33 GMT  
		Size: 11.6 MB (11622057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39294da9e60f33895e6650bff8a8fec3703b67804f469022b77d23ec489489bd`  
		Last Modified: Tue, 16 Oct 2018 21:00:28 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcca0a2c108ffb6fed020ddc3597287fe0322c8ca64db8adcfa7284ee10f315`  
		Last Modified: Tue, 16 Oct 2018 21:04:58 GMT  
		Size: 21.5 MB (21523140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4821eba4c82c9e8087e27afdf2f79cdc1520d2061a31176129ff2c7d50ec4093`  
		Last Modified: Tue, 16 Oct 2018 21:04:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1fb1db5716fb0ab86d4f7b686f6c3853512ff618576a9e5814997d7a28aa5a`  
		Last Modified: Wed, 17 Oct 2018 08:39:16 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09929e903a1def9a3f65b22a7fbd949c0915834bdff31203c9655971b750dda1`  
		Last Modified: Wed, 17 Oct 2018 08:39:45 GMT  
		Size: 83.9 MB (83916361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4017d078bc87a3ce9d9fbb238f5a39acaadaa551b1c43ff38692db678865801`  
		Last Modified: Wed, 17 Oct 2018 08:39:13 GMT  
		Size: 873.1 KB (873071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b8de59f35a78fc50d2fc0476fe1f398cef9806d1e836ccceca52e01289e6b1`  
		Last Modified: Wed, 17 Oct 2018 08:39:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa04cb9d54dca3ba2483d45154dd83910be1f783a5aa0ed45c441a33c986f847`  
		Last Modified: Wed, 17 Oct 2018 08:39:15 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164b5126e5beaea81933b27a6baa3fa2c79265df58180dd0b906675a07cf1a8d`  
		Last Modified: Wed, 17 Oct 2018 08:39:49 GMT  
		Size: 119.4 MB (119361076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dceb867d56f4ecc4045242317c0101c5812827d4bdcfd162eaad9038bedeaaa2`  
		Last Modified: Wed, 17 Oct 2018 08:39:14 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:89c2cdeda32297eb501c12a81128312937e61f1dd5eae213a35f8a482b0c6a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300504544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4659007811d34aa9c3c2baaf17727522438a32cb35a1ac2708a31056f4fdda71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:49:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 00:49:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 17 Oct 2018 01:02:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 17 Oct 2018 01:02:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Wed, 17 Oct 2018 01:06:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 17 Oct 2018 01:06:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 Oct 2018 01:06:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 Oct 2018 01:06:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 01:06:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 17 Oct 2018 01:06:39 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 10:42:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 10:42:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 10:43:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:43:06 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 10:43:06 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 10:43:07 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 17 Oct 2018 10:43:07 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 17 Oct 2018 10:43:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 10:46:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:46:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 10:46:39 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 10:46:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 10:46:39 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 10:46:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee1d0a3d1c078400b20f177f92970637b68bc65d763b3b8d70ea6cc3c60d2`  
		Last Modified: Wed, 17 Oct 2018 01:32:38 GMT  
		Size: 16.3 MB (16255904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049b93cd4160b66ddaefccd54558e94099923a480ae17487d34033a95f624e6d`  
		Last Modified: Wed, 17 Oct 2018 01:32:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ab4a139e51b1f0c5421775edc277f4f50bc1c2a580d13abde56f02ea31d87d`  
		Last Modified: Wed, 17 Oct 2018 01:36:39 GMT  
		Size: 21.4 MB (21350917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93eb3e0901597c8fe405ceacd8171eefbd93604a429605bd42afd0555c6bbb5a`  
		Last Modified: Wed, 17 Oct 2018 01:36:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8769ff9adce4419c938b40b7b5946dbb1f4b128db5f6ae9d552b0fe3b92bcd`  
		Last Modified: Wed, 17 Oct 2018 10:51:02 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08ff5047dc54a8272286565e3729436e57be88da5392cd62c099d85d959a109`  
		Last Modified: Wed, 17 Oct 2018 10:51:28 GMT  
		Size: 90.0 MB (89973426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea153966ff65e8bd0efca0041afa7bd9f0c72cfe9ed95e8653cad2ad3bc8ad73`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 884.5 KB (884458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ed68e2217d68139b4f747cac0fe29951acacb1ba070082da3ad20c7227db6e`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73decd132e710c92f64600453506c70da46e1df278c1d66a44347d10a1fb795a`  
		Last Modified: Wed, 17 Oct 2018 10:51:02 GMT  
		Size: 2.5 MB (2456906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0e89582313ffafee91bfd11d36b6f1bbb9b8e7af887616f9fc8568a6f4d238`  
		Last Modified: Wed, 17 Oct 2018 10:51:29 GMT  
		Size: 123.5 MB (123539654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596d0ebd022cd9f98acf3171604361364253991b98a2978105f7b775162e41c`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:d53724affc901f0aa3705281fb69d0ed2685e94679eed8b5548af8d6a6425e02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (292041531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cecf4ddad1b77dc70e5d032499c280778c6b1508ba4fa59135857b47a83ab6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:52:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:52:51 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:13:16 GMT
ENV RUBY_MAJOR=2.4
# Fri, 19 Oct 2018 09:31:16 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 19 Oct 2018 09:31:17 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 19 Oct 2018 09:31:18 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:31:18 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:37:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:37:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:37:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:37:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:37:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:37:58 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 11:00:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 11:02:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:02:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:02:39 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 11:02:40 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 11:02:40 GMT
ENV REDMINE_VERSION=3.4.6
# Fri, 19 Oct 2018 11:02:42 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Fri, 19 Oct 2018 11:03:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 11:12:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:12:21 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 11:12:24 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 11:12:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 11:12:25 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 11:12:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fd23d59872bf0d17bfb79e6fb27e088088d601dce8b9b7851b29d9121c6089`  
		Last Modified: Tue, 16 Oct 2018 14:33:05 GMT  
		Size: 12.2 MB (12208452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1e404b80d55a426a17d9bcd046d368d0ffa535d13493744d1f4382a3ca8297`  
		Last Modified: Tue, 16 Oct 2018 14:32:58 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c89266d52ee7e077bc2bed208c8938b51075b66768cf173931214f968f7b49`  
		Last Modified: Fri, 19 Oct 2018 10:09:53 GMT  
		Size: 22.0 MB (21998834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f41428ad5b6c5509fb01be689390dea754940ce7cf8d76335bade29f5278d2`  
		Last Modified: Fri, 19 Oct 2018 10:09:44 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59a77ded9b205d22041d7a7836ba74d937c2eecea253060e7f4485b1c8347c1`  
		Last Modified: Fri, 19 Oct 2018 11:24:39 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21891b21e2bc4684dfbe38e77f2a42d3b2914fd9ebedba497823886f67e8d472`  
		Last Modified: Fri, 19 Oct 2018 11:25:25 GMT  
		Size: 87.2 MB (87232686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e26571d6a146c637dbf93e3857f6f7d2c250d63206c8786c2ef64740209133a`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 873.3 KB (873295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21e5e01798e29f8ec63ea4026953c81bd460015dcbcc9450dbc95caffe2055b`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f066ab078ea1b9724d8a39cd26a221da8a457895304c3bee532e5101a739bc8c`  
		Last Modified: Fri, 19 Oct 2018 11:24:41 GMT  
		Size: 2.5 MB (2457576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83deb35566518a9ee378f94146b8dfc4e25cca49245c6dd9eb2aefc864a8ef4c`  
		Last Modified: Fri, 19 Oct 2018 11:26:16 GMT  
		Size: 121.7 MB (121671044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca6896127b6ab9a807729319ef4bc12ffeca101f1859a3922db9c018dab0175`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:d1c2ef57f81ec9b899650d31f60bb3f3d52c6880b9c3c1bddad44538aff169b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294823187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaff16774b3ed133a45cfaae2f5bc300a518d06ab8f580e7e91dee38eb8cc010`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:56:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:57:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:12:17 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 14:12:19 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 14:16:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 14:16:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 14:16:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 14:16:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 14:16:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 14:16:24 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 19:20:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 19:20:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 19:21:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:21:08 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 19:21:09 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 19:21:09 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 19:21:09 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 19:21:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 19:24:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:24:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 19:24:16 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 19:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:24:16 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 19:24:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89879bc0b9e4c063d3bda68e95bfe1164fc6615687e2070e1e5cf96c2f73eba`  
		Last Modified: Tue, 16 Oct 2018 14:24:42 GMT  
		Size: 13.2 MB (13214294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c1e854764936ac4e189744be1e758211d8eafd3160c5d022e4c72934011a0a`  
		Last Modified: Tue, 16 Oct 2018 14:24:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92fc120cdd7c484e10e0c94e60587f2b68d2628cb19b46c87bd1f40fa4a9e9`  
		Last Modified: Tue, 16 Oct 2018 14:26:12 GMT  
		Size: 22.1 MB (22127522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2920dbfd260995fedf4dd8c12053e72f37435ce9f0cbbcc4d6224d9c75cb6dbe`  
		Last Modified: Tue, 16 Oct 2018 14:26:09 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3faa0144db07d0cc0f65699beb3b9c679fdd8696e4af372538019fd874c0d0`  
		Last Modified: Tue, 16 Oct 2018 19:28:01 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a851363d3713b213815919d3123de6fd13c4c8614a6185223dc15bc259e0c9`  
		Last Modified: Tue, 16 Oct 2018 19:28:18 GMT  
		Size: 87.9 MB (87865865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9ac3679fefa880dd3cff5d97133f1ed3264e4267464f7bcbba09e0dc4d5d2`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 890.8 KB (890835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a5efc243711b56fb4c1791f2015de24dbd47a3df29341975e8ba5c59a7cdfb`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9873dd3c0bb391074706627bd2d971e855b7a8be2a673ffd5df4d8d71001a796`  
		Last Modified: Tue, 16 Oct 2018 19:28:01 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be26dcdace71c67f5da222b0a8a5345fcbae2d4d64850d164e9463a0b8c8e6a`  
		Last Modified: Tue, 16 Oct 2018 19:28:19 GMT  
		Size: 123.1 MB (123063848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6104c18ed60f64c41fc16fb89e1b448dfc6673e525dbbf573173559f4d1aba1f`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.6`

```console
$ docker pull redmine@sha256:e560c82429c1e86aea5645613cde71d330a848443297030c189607174d370324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.4.6` - linux; amd64

```console
$ docker pull redmine@sha256:a7abeb7d39fb27c4cd950e48ceeb11c4ff8f0df2d9da239d676ea4d62115168f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296403231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74c97c553ac3ad3081f211fff21c4fd4268abf1c5d7604f2f1d05c2ba2dbf38`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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

### `redmine:3.4.6` - linux; arm variant v5

```console
$ docker pull redmine@sha256:eb57913bf0dfaf168b03d420293142f9f6f5bb281e36e7ada8e8361c34880db4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284859553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37bd7a7d2b417e36631e5b084113cbdef10d68fe8bd3fd9d141dcf2f1d3475e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 12:17:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 19 Oct 2018 09:29:20 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 19 Oct 2018 09:29:21 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 19 Oct 2018 09:29:21 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:29:21 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:35:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:35:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:35:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:35:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:35:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:35:25 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 10:29:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 10:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:30:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:30:41 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 10:30:41 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 10:30:42 GMT
ENV REDMINE_VERSION=3.4.6
# Fri, 19 Oct 2018 10:30:42 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Fri, 19 Oct 2018 10:30:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 10:36:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:36:37 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 10:36:37 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 10:36:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:36:38 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 10:36:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd956c3d59d9c149b09ee0d97a8e7b865de6f7a097088208284aa8744d2765a`  
		Last Modified: Tue, 16 Oct 2018 12:35:04 GMT  
		Size: 11.4 MB (11376546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41750db3498e0c5c42960a9a7b557f725903b2fc9bc90d11bcb52322ad7f0b`  
		Last Modified: Tue, 16 Oct 2018 12:35:00 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a0538e9adb8ed76ded325f5bed83ecf38bcd6cc2adf3a69e7219f25b3a1880`  
		Last Modified: Fri, 19 Oct 2018 10:10:49 GMT  
		Size: 21.3 MB (21316606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87ee82a55b5ca0ff885c49c6784c7f323e8e1f18a64c5182bc9f46cff8984fd`  
		Last Modified: Fri, 19 Oct 2018 10:10:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53bcdeaeb431865a41de3a6fec6f01aabd396f8f3453c3d0c8ed9aff899ad18`  
		Last Modified: Fri, 19 Oct 2018 10:43:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36ff963bbf2209eb8b8225d007236ce2178ca192822e07215077e1a9ff7df9f`  
		Last Modified: Fri, 19 Oct 2018 10:44:34 GMT  
		Size: 85.0 MB (84956928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b99f49cd690c90a476186ef55108e36c3a7ad27370603a467409cb85a6cb8ce`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 894.3 KB (894289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2968fb26f0ca7fa8a43a4cb76d86f5f4aaac0608b82dd94d96d1919df87aa8`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3deea1abcd43523b8ef17eb90743f5b9375ae790f50bfdf819b3e4a8e3a1f1`  
		Last Modified: Fri, 19 Oct 2018 10:43:56 GMT  
		Size: 2.5 MB (2457564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8392fff3e4bbca20c23f867271644fa4dc457a6215d9619eec51dfbd801e70`  
		Last Modified: Fri, 19 Oct 2018 10:44:24 GMT  
		Size: 119.8 MB (119820429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9d769285cdf1208520700dcfc2b4290cb4999588b5c491bffb66f5b3a818c`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm variant v7

```console
$ docker pull redmine@sha256:5075c02cf78265f04c4480c74823161851f9e83ca5ebfc0079212f59d3e1f844
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277573093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d73b3135586bcdef637740fbec6b8c5426b0d9f154773f6271353f4c5c635ac5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:37:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 13:52:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 13:52:30 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 13:52:30 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 13:52:31 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 13:52:31 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 13:58:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 13:58:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 13:58:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 13:58:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:58:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 13:58:43 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:19:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:20:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:20:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:20:55 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:20:56 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 16:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 16:21:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:26:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:26:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:26:38 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:26:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:26:43 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:26:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7f2f49a858f9911a8f5ce08344d570b05ef2e0da45af19eb828e10f8a6c8e3`  
		Last Modified: Tue, 16 Oct 2018 14:10:05 GMT  
		Size: 10.9 MB (10897122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921bb25ec33100efed2b0223c431392bbc50d201951e2e85c25b62d55e65e92d`  
		Last Modified: Tue, 16 Oct 2018 14:10:01 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5be5a704e8bb77219200643f27fe6238d3a2d264b3ef0b7536962db392e0c9`  
		Last Modified: Tue, 16 Oct 2018 14:13:11 GMT  
		Size: 21.1 MB (21124392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae78403c671dcbc28919b41434f1856cda70c2b9746030020b47cb54575aa5f`  
		Last Modified: Tue, 16 Oct 2018 14:13:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085937c0ef6c2d1f99cf4b829ce8a3507a4892b7094e4058097987b3129a0613`  
		Last Modified: Tue, 16 Oct 2018 16:33:51 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59f56a588bead060072c1c5ce90a4c5d144158e735f7e9cd178dd187562fbab`  
		Last Modified: Tue, 16 Oct 2018 16:34:12 GMT  
		Size: 81.8 MB (81782097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4bdf40da7c8079b79158a9eb4e713e94fb9252af5676b85892855c86f78ae1`  
		Last Modified: Tue, 16 Oct 2018 16:33:50 GMT  
		Size: 877.5 KB (877536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64c5c8e770913eb935bb0a49ac9fc2fb0180c75d4423356d66b950780556641`  
		Last Modified: Tue, 16 Oct 2018 16:33:49 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4bbb7b7d1d4e86f84bb96e044007730c518da8bbda80483b804f71981617aa`  
		Last Modified: Tue, 16 Oct 2018 16:33:51 GMT  
		Size: 2.5 MB (2457553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c779c3d23ced352df5fd3871db011d2f64e85df7576ec39a793dacb5a84d607d`  
		Last Modified: Tue, 16 Oct 2018 16:34:19 GMT  
		Size: 118.4 MB (118367235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4575a48f2addb4af1a85c51916e082fc8ac375d92376668ab6ce246e799bb3a2`  
		Last Modified: Tue, 16 Oct 2018 16:33:49 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:bd50aab2668189d2f0922729fc4c44ca9648c053fbe15d70c4fb9cc1a60b7375
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282880287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d54364325ccfa21bd4ad552852f470a648e882436c8f1138b4d7a13231758e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 20:03:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:03:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 20:31:46 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 20:31:47 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 20:31:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 20:31:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 20:31:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 20:41:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 20:41:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 20:41:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 20:41:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 20:41:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 20:41:52 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 07:57:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 08:03:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 08:03:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:03:49 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 08:03:50 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 08:03:51 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 17 Oct 2018 08:03:52 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 17 Oct 2018 08:03:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 08:19:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:19:46 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 08:19:48 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 08:19:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 08:20:01 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 08:20:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09b97f46d02c4bcd42ca4df89ced3449218f7a9725a18c05fa54a80eb18635`  
		Last Modified: Tue, 16 Oct 2018 21:00:33 GMT  
		Size: 11.6 MB (11622057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39294da9e60f33895e6650bff8a8fec3703b67804f469022b77d23ec489489bd`  
		Last Modified: Tue, 16 Oct 2018 21:00:28 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcca0a2c108ffb6fed020ddc3597287fe0322c8ca64db8adcfa7284ee10f315`  
		Last Modified: Tue, 16 Oct 2018 21:04:58 GMT  
		Size: 21.5 MB (21523140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4821eba4c82c9e8087e27afdf2f79cdc1520d2061a31176129ff2c7d50ec4093`  
		Last Modified: Tue, 16 Oct 2018 21:04:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1fb1db5716fb0ab86d4f7b686f6c3853512ff618576a9e5814997d7a28aa5a`  
		Last Modified: Wed, 17 Oct 2018 08:39:16 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09929e903a1def9a3f65b22a7fbd949c0915834bdff31203c9655971b750dda1`  
		Last Modified: Wed, 17 Oct 2018 08:39:45 GMT  
		Size: 83.9 MB (83916361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4017d078bc87a3ce9d9fbb238f5a39acaadaa551b1c43ff38692db678865801`  
		Last Modified: Wed, 17 Oct 2018 08:39:13 GMT  
		Size: 873.1 KB (873071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b8de59f35a78fc50d2fc0476fe1f398cef9806d1e836ccceca52e01289e6b1`  
		Last Modified: Wed, 17 Oct 2018 08:39:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa04cb9d54dca3ba2483d45154dd83910be1f783a5aa0ed45c441a33c986f847`  
		Last Modified: Wed, 17 Oct 2018 08:39:15 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164b5126e5beaea81933b27a6baa3fa2c79265df58180dd0b906675a07cf1a8d`  
		Last Modified: Wed, 17 Oct 2018 08:39:49 GMT  
		Size: 119.4 MB (119361076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dceb867d56f4ecc4045242317c0101c5812827d4bdcfd162eaad9038bedeaaa2`  
		Last Modified: Wed, 17 Oct 2018 08:39:14 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; 386

```console
$ docker pull redmine@sha256:89c2cdeda32297eb501c12a81128312937e61f1dd5eae213a35f8a482b0c6a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300504544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4659007811d34aa9c3c2baaf17727522438a32cb35a1ac2708a31056f4fdda71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:49:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 00:49:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 17 Oct 2018 01:02:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 17 Oct 2018 01:02:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Wed, 17 Oct 2018 01:06:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 17 Oct 2018 01:06:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 Oct 2018 01:06:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 Oct 2018 01:06:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 01:06:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 17 Oct 2018 01:06:39 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 10:42:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 10:42:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 10:43:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:43:06 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 10:43:06 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 10:43:07 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 17 Oct 2018 10:43:07 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 17 Oct 2018 10:43:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 10:46:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:46:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 10:46:39 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 10:46:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 10:46:39 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 10:46:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee1d0a3d1c078400b20f177f92970637b68bc65d763b3b8d70ea6cc3c60d2`  
		Last Modified: Wed, 17 Oct 2018 01:32:38 GMT  
		Size: 16.3 MB (16255904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049b93cd4160b66ddaefccd54558e94099923a480ae17487d34033a95f624e6d`  
		Last Modified: Wed, 17 Oct 2018 01:32:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ab4a139e51b1f0c5421775edc277f4f50bc1c2a580d13abde56f02ea31d87d`  
		Last Modified: Wed, 17 Oct 2018 01:36:39 GMT  
		Size: 21.4 MB (21350917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93eb3e0901597c8fe405ceacd8171eefbd93604a429605bd42afd0555c6bbb5a`  
		Last Modified: Wed, 17 Oct 2018 01:36:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8769ff9adce4419c938b40b7b5946dbb1f4b128db5f6ae9d552b0fe3b92bcd`  
		Last Modified: Wed, 17 Oct 2018 10:51:02 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08ff5047dc54a8272286565e3729436e57be88da5392cd62c099d85d959a109`  
		Last Modified: Wed, 17 Oct 2018 10:51:28 GMT  
		Size: 90.0 MB (89973426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea153966ff65e8bd0efca0041afa7bd9f0c72cfe9ed95e8653cad2ad3bc8ad73`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 884.5 KB (884458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ed68e2217d68139b4f747cac0fe29951acacb1ba070082da3ad20c7227db6e`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73decd132e710c92f64600453506c70da46e1df278c1d66a44347d10a1fb795a`  
		Last Modified: Wed, 17 Oct 2018 10:51:02 GMT  
		Size: 2.5 MB (2456906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0e89582313ffafee91bfd11d36b6f1bbb9b8e7af887616f9fc8568a6f4d238`  
		Last Modified: Wed, 17 Oct 2018 10:51:29 GMT  
		Size: 123.5 MB (123539654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596d0ebd022cd9f98acf3171604361364253991b98a2978105f7b775162e41c`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; ppc64le

```console
$ docker pull redmine@sha256:d53724affc901f0aa3705281fb69d0ed2685e94679eed8b5548af8d6a6425e02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (292041531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cecf4ddad1b77dc70e5d032499c280778c6b1508ba4fa59135857b47a83ab6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:52:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:52:51 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:13:16 GMT
ENV RUBY_MAJOR=2.4
# Fri, 19 Oct 2018 09:31:16 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 19 Oct 2018 09:31:17 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 19 Oct 2018 09:31:18 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:31:18 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:37:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:37:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:37:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:37:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:37:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:37:58 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 11:00:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 11:02:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:02:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:02:39 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 11:02:40 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 11:02:40 GMT
ENV REDMINE_VERSION=3.4.6
# Fri, 19 Oct 2018 11:02:42 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Fri, 19 Oct 2018 11:03:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 11:12:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:12:21 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 11:12:24 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 11:12:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 11:12:25 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 11:12:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fd23d59872bf0d17bfb79e6fb27e088088d601dce8b9b7851b29d9121c6089`  
		Last Modified: Tue, 16 Oct 2018 14:33:05 GMT  
		Size: 12.2 MB (12208452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1e404b80d55a426a17d9bcd046d368d0ffa535d13493744d1f4382a3ca8297`  
		Last Modified: Tue, 16 Oct 2018 14:32:58 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c89266d52ee7e077bc2bed208c8938b51075b66768cf173931214f968f7b49`  
		Last Modified: Fri, 19 Oct 2018 10:09:53 GMT  
		Size: 22.0 MB (21998834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f41428ad5b6c5509fb01be689390dea754940ce7cf8d76335bade29f5278d2`  
		Last Modified: Fri, 19 Oct 2018 10:09:44 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59a77ded9b205d22041d7a7836ba74d937c2eecea253060e7f4485b1c8347c1`  
		Last Modified: Fri, 19 Oct 2018 11:24:39 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21891b21e2bc4684dfbe38e77f2a42d3b2914fd9ebedba497823886f67e8d472`  
		Last Modified: Fri, 19 Oct 2018 11:25:25 GMT  
		Size: 87.2 MB (87232686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e26571d6a146c637dbf93e3857f6f7d2c250d63206c8786c2ef64740209133a`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 873.3 KB (873295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21e5e01798e29f8ec63ea4026953c81bd460015dcbcc9450dbc95caffe2055b`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f066ab078ea1b9724d8a39cd26a221da8a457895304c3bee532e5101a739bc8c`  
		Last Modified: Fri, 19 Oct 2018 11:24:41 GMT  
		Size: 2.5 MB (2457576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83deb35566518a9ee378f94146b8dfc4e25cca49245c6dd9eb2aefc864a8ef4c`  
		Last Modified: Fri, 19 Oct 2018 11:26:16 GMT  
		Size: 121.7 MB (121671044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca6896127b6ab9a807729319ef4bc12ffeca101f1859a3922db9c018dab0175`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; s390x

```console
$ docker pull redmine@sha256:d1c2ef57f81ec9b899650d31f60bb3f3d52c6880b9c3c1bddad44538aff169b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294823187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaff16774b3ed133a45cfaae2f5bc300a518d06ab8f580e7e91dee38eb8cc010`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:56:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:57:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:12:17 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 14:12:19 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 14:16:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 14:16:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 14:16:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 14:16:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 14:16:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 14:16:24 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 19:20:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 19:20:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 19:21:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:21:08 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 19:21:09 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 19:21:09 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 19:21:09 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 19:21:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 19:24:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:24:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 19:24:16 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 19:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:24:16 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 19:24:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89879bc0b9e4c063d3bda68e95bfe1164fc6615687e2070e1e5cf96c2f73eba`  
		Last Modified: Tue, 16 Oct 2018 14:24:42 GMT  
		Size: 13.2 MB (13214294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c1e854764936ac4e189744be1e758211d8eafd3160c5d022e4c72934011a0a`  
		Last Modified: Tue, 16 Oct 2018 14:24:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92fc120cdd7c484e10e0c94e60587f2b68d2628cb19b46c87bd1f40fa4a9e9`  
		Last Modified: Tue, 16 Oct 2018 14:26:12 GMT  
		Size: 22.1 MB (22127522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2920dbfd260995fedf4dd8c12053e72f37435ce9f0cbbcc4d6224d9c75cb6dbe`  
		Last Modified: Tue, 16 Oct 2018 14:26:09 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3faa0144db07d0cc0f65699beb3b9c679fdd8696e4af372538019fd874c0d0`  
		Last Modified: Tue, 16 Oct 2018 19:28:01 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a851363d3713b213815919d3123de6fd13c4c8614a6185223dc15bc259e0c9`  
		Last Modified: Tue, 16 Oct 2018 19:28:18 GMT  
		Size: 87.9 MB (87865865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9ac3679fefa880dd3cff5d97133f1ed3264e4267464f7bcbba09e0dc4d5d2`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 890.8 KB (890835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a5efc243711b56fb4c1791f2015de24dbd47a3df29341975e8ba5c59a7cdfb`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9873dd3c0bb391074706627bd2d971e855b7a8be2a673ffd5df4d8d71001a796`  
		Last Modified: Tue, 16 Oct 2018 19:28:01 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be26dcdace71c67f5da222b0a8a5345fcbae2d4d64850d164e9463a0b8c8e6a`  
		Last Modified: Tue, 16 Oct 2018 19:28:19 GMT  
		Size: 123.1 MB (123063848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6104c18ed60f64c41fc16fb89e1b448dfc6673e525dbbf573173559f4d1aba1f`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.6-passenger`

```console
$ docker pull redmine@sha256:3fbfa7ba5544e0ab75f540b581a06dbed98081a1a803b42dce2bb7bd76f64e8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.6-passenger` - linux; amd64

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

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:3fbfa7ba5544e0ab75f540b581a06dbed98081a1a803b42dce2bb7bd76f64e8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

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

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:3fbfa7ba5544e0ab75f540b581a06dbed98081a1a803b42dce2bb7bd76f64e8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

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

## `redmine:latest`

```console
$ docker pull redmine@sha256:e560c82429c1e86aea5645613cde71d330a848443297030c189607174d370324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:latest` - linux; amd64

```console
$ docker pull redmine@sha256:a7abeb7d39fb27c4cd950e48ceeb11c4ff8f0df2d9da239d676ea4d62115168f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.4 MB (296403231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74c97c553ac3ad3081f211fff21c4fd4268abf1c5d7604f2f1d05c2ba2dbf38`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:eb57913bf0dfaf168b03d420293142f9f6f5bb281e36e7ada8e8361c34880db4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284859553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37bd7a7d2b417e36631e5b084113cbdef10d68fe8bd3fd9d141dcf2f1d3475e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 12:17:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 19 Oct 2018 09:29:20 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 19 Oct 2018 09:29:21 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 19 Oct 2018 09:29:21 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:29:21 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:35:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:35:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:35:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:35:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:35:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:35:25 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 10:29:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 10:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:30:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:30:41 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 10:30:41 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 10:30:42 GMT
ENV REDMINE_VERSION=3.4.6
# Fri, 19 Oct 2018 10:30:42 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Fri, 19 Oct 2018 10:30:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 10:36:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 10:36:37 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 10:36:37 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 10:36:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:36:38 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 10:36:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd956c3d59d9c149b09ee0d97a8e7b865de6f7a097088208284aa8744d2765a`  
		Last Modified: Tue, 16 Oct 2018 12:35:04 GMT  
		Size: 11.4 MB (11376546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41750db3498e0c5c42960a9a7b557f725903b2fc9bc90d11bcb52322ad7f0b`  
		Last Modified: Tue, 16 Oct 2018 12:35:00 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a0538e9adb8ed76ded325f5bed83ecf38bcd6cc2adf3a69e7219f25b3a1880`  
		Last Modified: Fri, 19 Oct 2018 10:10:49 GMT  
		Size: 21.3 MB (21316606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87ee82a55b5ca0ff885c49c6784c7f323e8e1f18a64c5182bc9f46cff8984fd`  
		Last Modified: Fri, 19 Oct 2018 10:10:36 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53bcdeaeb431865a41de3a6fec6f01aabd396f8f3453c3d0c8ed9aff899ad18`  
		Last Modified: Fri, 19 Oct 2018 10:43:56 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36ff963bbf2209eb8b8225d007236ce2178ca192822e07215077e1a9ff7df9f`  
		Last Modified: Fri, 19 Oct 2018 10:44:34 GMT  
		Size: 85.0 MB (84956928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b99f49cd690c90a476186ef55108e36c3a7ad27370603a467409cb85a6cb8ce`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 894.3 KB (894289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2968fb26f0ca7fa8a43a4cb76d86f5f4aaac0608b82dd94d96d1919df87aa8`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3deea1abcd43523b8ef17eb90743f5b9375ae790f50bfdf819b3e4a8e3a1f1`  
		Last Modified: Fri, 19 Oct 2018 10:43:56 GMT  
		Size: 2.5 MB (2457564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8392fff3e4bbca20c23f867271644fa4dc457a6215d9619eec51dfbd801e70`  
		Last Modified: Fri, 19 Oct 2018 10:44:24 GMT  
		Size: 119.8 MB (119820429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9d769285cdf1208520700dcfc2b4290cb4999588b5c491bffb66f5b3a818c`  
		Last Modified: Fri, 19 Oct 2018 10:43:55 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:5075c02cf78265f04c4480c74823161851f9e83ca5ebfc0079212f59d3e1f844
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277573093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d73b3135586bcdef637740fbec6b8c5426b0d9f154773f6271353f4c5c635ac5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:37:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 13:52:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 13:52:30 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 13:52:30 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 13:52:31 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 13:52:31 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 13:58:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 13:58:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 13:58:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 13:58:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:58:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 13:58:43 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 16:19:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 16:20:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:20:55 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:20:55 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 16:20:56 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 16:20:57 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 16:20:57 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 16:21:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 16:26:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 16:26:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 16:26:38 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 16:26:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:26:43 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 16:26:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7f2f49a858f9911a8f5ce08344d570b05ef2e0da45af19eb828e10f8a6c8e3`  
		Last Modified: Tue, 16 Oct 2018 14:10:05 GMT  
		Size: 10.9 MB (10897122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921bb25ec33100efed2b0223c431392bbc50d201951e2e85c25b62d55e65e92d`  
		Last Modified: Tue, 16 Oct 2018 14:10:01 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5be5a704e8bb77219200643f27fe6238d3a2d264b3ef0b7536962db392e0c9`  
		Last Modified: Tue, 16 Oct 2018 14:13:11 GMT  
		Size: 21.1 MB (21124392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae78403c671dcbc28919b41434f1856cda70c2b9746030020b47cb54575aa5f`  
		Last Modified: Tue, 16 Oct 2018 14:13:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085937c0ef6c2d1f99cf4b829ce8a3507a4892b7094e4058097987b3129a0613`  
		Last Modified: Tue, 16 Oct 2018 16:33:51 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59f56a588bead060072c1c5ce90a4c5d144158e735f7e9cd178dd187562fbab`  
		Last Modified: Tue, 16 Oct 2018 16:34:12 GMT  
		Size: 81.8 MB (81782097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4bdf40da7c8079b79158a9eb4e713e94fb9252af5676b85892855c86f78ae1`  
		Last Modified: Tue, 16 Oct 2018 16:33:50 GMT  
		Size: 877.5 KB (877536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64c5c8e770913eb935bb0a49ac9fc2fb0180c75d4423356d66b950780556641`  
		Last Modified: Tue, 16 Oct 2018 16:33:49 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4bbb7b7d1d4e86f84bb96e044007730c518da8bbda80483b804f71981617aa`  
		Last Modified: Tue, 16 Oct 2018 16:33:51 GMT  
		Size: 2.5 MB (2457553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c779c3d23ced352df5fd3871db011d2f64e85df7576ec39a793dacb5a84d607d`  
		Last Modified: Tue, 16 Oct 2018 16:34:19 GMT  
		Size: 118.4 MB (118367235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4575a48f2addb4af1a85c51916e082fc8ac375d92376668ab6ce246e799bb3a2`  
		Last Modified: Tue, 16 Oct 2018 16:33:49 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:bd50aab2668189d2f0922729fc4c44ca9648c053fbe15d70c4fb9cc1a60b7375
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282880287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d54364325ccfa21bd4ad552852f470a648e882436c8f1138b4d7a13231758e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 20:03:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:03:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 20:31:46 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 20:31:47 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 20:31:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 20:31:48 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 20:31:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 20:41:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 20:41:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 20:41:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 20:41:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 20:41:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 20:41:52 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 07:57:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 08:03:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 08:03:48 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:03:49 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 08:03:50 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 08:03:51 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 17 Oct 2018 08:03:52 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 17 Oct 2018 08:03:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 08:19:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 08:19:46 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 08:19:48 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 08:19:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 08:20:01 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 08:20:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09b97f46d02c4bcd42ca4df89ced3449218f7a9725a18c05fa54a80eb18635`  
		Last Modified: Tue, 16 Oct 2018 21:00:33 GMT  
		Size: 11.6 MB (11622057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39294da9e60f33895e6650bff8a8fec3703b67804f469022b77d23ec489489bd`  
		Last Modified: Tue, 16 Oct 2018 21:00:28 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcca0a2c108ffb6fed020ddc3597287fe0322c8ca64db8adcfa7284ee10f315`  
		Last Modified: Tue, 16 Oct 2018 21:04:58 GMT  
		Size: 21.5 MB (21523140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4821eba4c82c9e8087e27afdf2f79cdc1520d2061a31176129ff2c7d50ec4093`  
		Last Modified: Tue, 16 Oct 2018 21:04:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1fb1db5716fb0ab86d4f7b686f6c3853512ff618576a9e5814997d7a28aa5a`  
		Last Modified: Wed, 17 Oct 2018 08:39:16 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09929e903a1def9a3f65b22a7fbd949c0915834bdff31203c9655971b750dda1`  
		Last Modified: Wed, 17 Oct 2018 08:39:45 GMT  
		Size: 83.9 MB (83916361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4017d078bc87a3ce9d9fbb238f5a39acaadaa551b1c43ff38692db678865801`  
		Last Modified: Wed, 17 Oct 2018 08:39:13 GMT  
		Size: 873.1 KB (873071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b8de59f35a78fc50d2fc0476fe1f398cef9806d1e836ccceca52e01289e6b1`  
		Last Modified: Wed, 17 Oct 2018 08:39:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa04cb9d54dca3ba2483d45154dd83910be1f783a5aa0ed45c441a33c986f847`  
		Last Modified: Wed, 17 Oct 2018 08:39:15 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164b5126e5beaea81933b27a6baa3fa2c79265df58180dd0b906675a07cf1a8d`  
		Last Modified: Wed, 17 Oct 2018 08:39:49 GMT  
		Size: 119.4 MB (119361076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dceb867d56f4ecc4045242317c0101c5812827d4bdcfd162eaad9038bedeaaa2`  
		Last Modified: Wed, 17 Oct 2018 08:39:14 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:89c2cdeda32297eb501c12a81128312937e61f1dd5eae213a35f8a482b0c6a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300504544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4659007811d34aa9c3c2baaf17727522438a32cb35a1ac2708a31056f4fdda71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:49:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 00:49:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 17 Oct 2018 01:02:48 GMT
ENV RUBY_MAJOR=2.4
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBY_VERSION=2.4.4
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Wed, 17 Oct 2018 01:02:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Wed, 17 Oct 2018 01:02:49 GMT
ENV BUNDLER_VERSION=1.16.6
# Wed, 17 Oct 2018 01:06:37 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 17 Oct 2018 01:06:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 Oct 2018 01:06:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 Oct 2018 01:06:38 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 01:06:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 17 Oct 2018 01:06:39 GMT
CMD ["irb"]
# Wed, 17 Oct 2018 10:42:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 17 Oct 2018 10:42:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 10:43:06 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:43:06 GMT
ENV RAILS_ENV=production
# Wed, 17 Oct 2018 10:43:06 GMT
WORKDIR /usr/src/redmine
# Wed, 17 Oct 2018 10:43:07 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 17 Oct 2018 10:43:07 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 17 Oct 2018 10:43:10 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 17 Oct 2018 10:46:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 17 Oct 2018 10:46:39 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 17 Oct 2018 10:46:39 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Wed, 17 Oct 2018 10:46:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 10:46:39 GMT
EXPOSE 3000/tcp
# Wed, 17 Oct 2018 10:46:40 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee1d0a3d1c078400b20f177f92970637b68bc65d763b3b8d70ea6cc3c60d2`  
		Last Modified: Wed, 17 Oct 2018 01:32:38 GMT  
		Size: 16.3 MB (16255904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049b93cd4160b66ddaefccd54558e94099923a480ae17487d34033a95f624e6d`  
		Last Modified: Wed, 17 Oct 2018 01:32:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ab4a139e51b1f0c5421775edc277f4f50bc1c2a580d13abde56f02ea31d87d`  
		Last Modified: Wed, 17 Oct 2018 01:36:39 GMT  
		Size: 21.4 MB (21350917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93eb3e0901597c8fe405ceacd8171eefbd93604a429605bd42afd0555c6bbb5a`  
		Last Modified: Wed, 17 Oct 2018 01:36:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8769ff9adce4419c938b40b7b5946dbb1f4b128db5f6ae9d552b0fe3b92bcd`  
		Last Modified: Wed, 17 Oct 2018 10:51:02 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08ff5047dc54a8272286565e3729436e57be88da5392cd62c099d85d959a109`  
		Last Modified: Wed, 17 Oct 2018 10:51:28 GMT  
		Size: 90.0 MB (89973426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea153966ff65e8bd0efca0041afa7bd9f0c72cfe9ed95e8653cad2ad3bc8ad73`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 884.5 KB (884458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ed68e2217d68139b4f747cac0fe29951acacb1ba070082da3ad20c7227db6e`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73decd132e710c92f64600453506c70da46e1df278c1d66a44347d10a1fb795a`  
		Last Modified: Wed, 17 Oct 2018 10:51:02 GMT  
		Size: 2.5 MB (2456906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0e89582313ffafee91bfd11d36b6f1bbb9b8e7af887616f9fc8568a6f4d238`  
		Last Modified: Wed, 17 Oct 2018 10:51:29 GMT  
		Size: 123.5 MB (123539654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596d0ebd022cd9f98acf3171604361364253991b98a2978105f7b775162e41c`  
		Last Modified: Wed, 17 Oct 2018 10:51:00 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:d53724affc901f0aa3705281fb69d0ed2685e94679eed8b5548af8d6a6425e02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (292041531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cecf4ddad1b77dc70e5d032499c280778c6b1508ba4fa59135857b47a83ab6b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:52:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:52:51 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:13:16 GMT
ENV RUBY_MAJOR=2.4
# Fri, 19 Oct 2018 09:31:16 GMT
ENV RUBY_VERSION=2.4.5
# Fri, 19 Oct 2018 09:31:17 GMT
ENV RUBY_DOWNLOAD_SHA256=2f0cdcce9989f63ef7c2939bdb17b1ef244c4f384d85b8531d60e73d8cc31eeb
# Fri, 19 Oct 2018 09:31:18 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Fri, 19 Oct 2018 09:31:18 GMT
ENV BUNDLER_VERSION=1.16.6
# Fri, 19 Oct 2018 09:37:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 19 Oct 2018 09:37:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 19 Oct 2018 09:37:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 19 Oct 2018 09:37:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 09:37:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 19 Oct 2018 09:37:58 GMT
CMD ["irb"]
# Fri, 19 Oct 2018 11:00:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 19 Oct 2018 11:02:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:02:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:02:39 GMT
ENV RAILS_ENV=production
# Fri, 19 Oct 2018 11:02:40 GMT
WORKDIR /usr/src/redmine
# Fri, 19 Oct 2018 11:02:40 GMT
ENV REDMINE_VERSION=3.4.6
# Fri, 19 Oct 2018 11:02:42 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Fri, 19 Oct 2018 11:03:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 19 Oct 2018 11:12:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Fri, 19 Oct 2018 11:12:21 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 19 Oct 2018 11:12:24 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Fri, 19 Oct 2018 11:12:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Oct 2018 11:12:25 GMT
EXPOSE 3000/tcp
# Fri, 19 Oct 2018 11:12:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fd23d59872bf0d17bfb79e6fb27e088088d601dce8b9b7851b29d9121c6089`  
		Last Modified: Tue, 16 Oct 2018 14:33:05 GMT  
		Size: 12.2 MB (12208452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1e404b80d55a426a17d9bcd046d368d0ffa535d13493744d1f4382a3ca8297`  
		Last Modified: Tue, 16 Oct 2018 14:32:58 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c89266d52ee7e077bc2bed208c8938b51075b66768cf173931214f968f7b49`  
		Last Modified: Fri, 19 Oct 2018 10:09:53 GMT  
		Size: 22.0 MB (21998834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f41428ad5b6c5509fb01be689390dea754940ce7cf8d76335bade29f5278d2`  
		Last Modified: Fri, 19 Oct 2018 10:09:44 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59a77ded9b205d22041d7a7836ba74d937c2eecea253060e7f4485b1c8347c1`  
		Last Modified: Fri, 19 Oct 2018 11:24:39 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21891b21e2bc4684dfbe38e77f2a42d3b2914fd9ebedba497823886f67e8d472`  
		Last Modified: Fri, 19 Oct 2018 11:25:25 GMT  
		Size: 87.2 MB (87232686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e26571d6a146c637dbf93e3857f6f7d2c250d63206c8786c2ef64740209133a`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 873.3 KB (873295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21e5e01798e29f8ec63ea4026953c81bd460015dcbcc9450dbc95caffe2055b`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f066ab078ea1b9724d8a39cd26a221da8a457895304c3bee532e5101a739bc8c`  
		Last Modified: Fri, 19 Oct 2018 11:24:41 GMT  
		Size: 2.5 MB (2457576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83deb35566518a9ee378f94146b8dfc4e25cca49245c6dd9eb2aefc864a8ef4c`  
		Last Modified: Fri, 19 Oct 2018 11:26:16 GMT  
		Size: 121.7 MB (121671044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca6896127b6ab9a807729319ef4bc12ffeca101f1859a3922db9c018dab0175`  
		Last Modified: Fri, 19 Oct 2018 11:24:36 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:d1c2ef57f81ec9b899650d31f60bb3f3d52c6880b9c3c1bddad44538aff169b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294823187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaff16774b3ed133a45cfaae2f5bc300a518d06ab8f580e7e91dee38eb8cc010`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:56:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:57:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:12:17 GMT
ENV RUBY_MAJOR=2.4
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 16 Oct 2018 14:12:18 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 16 Oct 2018 14:12:19 GMT
ENV BUNDLER_VERSION=1.16.6
# Tue, 16 Oct 2018 14:16:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 16 Oct 2018 14:16:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 16 Oct 2018 14:16:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 16 Oct 2018 14:16:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 14:16:24 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 16 Oct 2018 14:16:24 GMT
CMD ["irb"]
# Tue, 16 Oct 2018 19:20:31 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 16 Oct 2018 19:20:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 19:21:08 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:21:08 GMT
ENV RAILS_ENV=production
# Tue, 16 Oct 2018 19:21:09 GMT
WORKDIR /usr/src/redmine
# Tue, 16 Oct 2018 19:21:09 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 16 Oct 2018 19:21:09 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 16 Oct 2018 19:21:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 16 Oct 2018 19:24:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 16 Oct 2018 19:24:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 16 Oct 2018 19:24:16 GMT
COPY file:fc148119ccb9e484870c0b5926b68fb1ea903c3ded95d8f91ae4bd3783cd9d9a in / 
# Tue, 16 Oct 2018 19:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 19:24:16 GMT
EXPOSE 3000/tcp
# Tue, 16 Oct 2018 19:24:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89879bc0b9e4c063d3bda68e95bfe1164fc6615687e2070e1e5cf96c2f73eba`  
		Last Modified: Tue, 16 Oct 2018 14:24:42 GMT  
		Size: 13.2 MB (13214294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c1e854764936ac4e189744be1e758211d8eafd3160c5d022e4c72934011a0a`  
		Last Modified: Tue, 16 Oct 2018 14:24:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e92fc120cdd7c484e10e0c94e60587f2b68d2628cb19b46c87bd1f40fa4a9e9`  
		Last Modified: Tue, 16 Oct 2018 14:26:12 GMT  
		Size: 22.1 MB (22127522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2920dbfd260995fedf4dd8c12053e72f37435ce9f0cbbcc4d6224d9c75cb6dbe`  
		Last Modified: Tue, 16 Oct 2018 14:26:09 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3faa0144db07d0cc0f65699beb3b9c679fdd8696e4af372538019fd874c0d0`  
		Last Modified: Tue, 16 Oct 2018 19:28:01 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a851363d3713b213815919d3123de6fd13c4c8614a6185223dc15bc259e0c9`  
		Last Modified: Tue, 16 Oct 2018 19:28:18 GMT  
		Size: 87.9 MB (87865865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9ac3679fefa880dd3cff5d97133f1ed3264e4267464f7bcbba09e0dc4d5d2`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 890.8 KB (890835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a5efc243711b56fb4c1791f2015de24dbd47a3df29341975e8ba5c59a7cdfb`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9873dd3c0bb391074706627bd2d971e855b7a8be2a673ffd5df4d8d71001a796`  
		Last Modified: Tue, 16 Oct 2018 19:28:01 GMT  
		Size: 2.5 MB (2456909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be26dcdace71c67f5da222b0a8a5345fcbae2d4d64850d164e9463a0b8c8e6a`  
		Last Modified: Tue, 16 Oct 2018 19:28:19 GMT  
		Size: 123.1 MB (123063848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6104c18ed60f64c41fc16fb89e1b448dfc6673e525dbbf573173559f4d1aba1f`  
		Last Modified: Tue, 16 Oct 2018 19:28:00 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
