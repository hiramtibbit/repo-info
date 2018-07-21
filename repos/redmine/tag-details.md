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
$ docker pull redmine@sha256:d9e3686822334a33f1d31b433210e673ba983854699ef763662386fe4fbca624
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
$ docker pull redmine@sha256:21397d206058f6ed2683896a12c651f48d8723725a695c9a756369cdedc1a6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292205533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9362b93e8b98cbd03f8b006017c59f67d434bdfe5fd850547db53d39947ed641`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:57:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:57:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 08:48:11 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 08:53:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 08:53:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:53:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 08:53:28 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:05:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:06:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:06:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:06:22 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:06:23 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:06:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:11:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:11:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:11:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:11:46 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:11:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e24ec071bf71216552018724b1a1cfc553a4937369d371c78703d812fed01`  
		Last Modified: Tue, 17 Jul 2018 08:55:35 GMT  
		Size: 12.8 MB (12809075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2f60922ca6bd0b4f2c068c6418122691c34e9a7578d6d43aa7c71eed283ec0`  
		Last Modified: Tue, 17 Jul 2018 08:55:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042d84500d0cd0e0ddef623d717934e6768159907c350b39a69723fa1be8c7a7`  
		Last Modified: Sat, 21 Jul 2018 09:50:13 GMT  
		Size: 21.7 MB (21749270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e4ae4a41e47965e530a93cb3619fc4ab1a22b6fb886d228c3b29273d69e755`  
		Last Modified: Sat, 21 Jul 2018 09:50:07 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b3d2244d8145015a8cacda7170eefbc962e8ad783bd3ddd794e884e093a66f`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b824882880cf42f78eeff69b8c05327b06c2e6bce177468df8a8e27860077f`  
		Last Modified: Sat, 21 Jul 2018 11:22:36 GMT  
		Size: 84.6 MB (84639235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ec66a1439a369f2f879afd4a9104c21ca71bd42e357c863e908dc3b80a2b4a`  
		Last Modified: Sat, 21 Jul 2018 11:22:03 GMT  
		Size: 904.1 KB (904066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd241ccd4d2f6cfd86a0e6125253b57520dc6c5e74fff33361866573a4b24e4`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc78343d3ea0ad0a21dcb1444b8477739baab8f5e186f8fd796cf9954e691ff1`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e51839d716a6dc072898ca32b18bb0a685259863c759328ad95aeb39782452`  
		Last Modified: Sat, 21 Jul 2018 11:22:37 GMT  
		Size: 124.3 MB (124332890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b2a40e6e7a8e8e3b5c5fc28516dfcd79725a934f2c18ea208f3eed675549a`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:72a5668ce8fa39ddb3189da783e9a0bd46910ec4f463e1121f521ec56b93ae5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280660759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e4b47f883d0be83f9d326c2086e20a955214a5f9300c74b46e757ac2986b7d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:57:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 12:04:00 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 12:04:00 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 12:04:01 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 12:04:01 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 09:54:09 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 09:59:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 09:59:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 09:59:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 09:59:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 09:59:59 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 09:59:59 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:57:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:59:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:59:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:59:24 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:59:24 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:59:24 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:59:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:59:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 12:05:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 12:05:41 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 12:05:42 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 12:05:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 12:05:43 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 12:05:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840a27c8096d5a31fd99dba4a42aaa180bdea1438c1232ef8af082aa4627cb77`  
		Last Modified: Tue, 17 Jul 2018 12:28:26 GMT  
		Size: 11.4 MB (11373361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c797e66bbbab97431748428f617d087cac7fc2e3c86853579dee31441777df`  
		Last Modified: Tue, 17 Jul 2018 12:28:22 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf2eaf4c10baa8ffbb48518a6c7b516f7601a6bf90c827bd31731d84537ed23`  
		Last Modified: Sat, 21 Jul 2018 10:38:56 GMT  
		Size: 21.3 MB (21307802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f057096a91f01eb6d19fafec3e172a260090f33cf61313eef3704bba679a26`  
		Last Modified: Sat, 21 Jul 2018 10:38:49 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a39e570fc37e26308b40c65b41b4827dc448edc05984d94b4cc67392a2be62`  
		Last Modified: Sat, 21 Jul 2018 12:12:59 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdac12c57612629acc4af37002c75392c3c4e0fd3fcf7d7365a3ce9f252beba`  
		Last Modified: Sat, 21 Jul 2018 12:13:28 GMT  
		Size: 81.6 MB (81561298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40d82e3e3a99b3f2128fd650f2edf408d264dd1dde6fe0583b31df60977bd12`  
		Last Modified: Sat, 21 Jul 2018 12:12:58 GMT  
		Size: 893.4 KB (893358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d4dedfb3a1672de93f73141e637ab8618b16a289fea13f2177e3012f1031d`  
		Last Modified: Sat, 21 Jul 2018 12:12:57 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15861ecae240c5c1e3bffdd1a19c8a3392c116575a314d21e741f8fba1a6ba45`  
		Last Modified: Sat, 21 Jul 2018 12:12:59 GMT  
		Size: 2.5 MB (2457552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e45f752bcda6e6470cb7eb442ef135ed46d06479670ff66ebbcdb5ab521f75`  
		Last Modified: Sat, 21 Jul 2018 12:13:30 GMT  
		Size: 119.0 MB (119030235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566fbca6caa175cba66a23cfb9e1b8d1eff63262485ae144bdb8b541b1907e1a`  
		Last Modified: Sat, 21 Jul 2018 12:12:57 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ac6ecb5e70f92d06d6675fae64ba28a15d57d9f45755e391f68851f07f9b6231
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273391095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6c068184b27722a5206362e7a2fdb1ba87758a2cf60f0f861672d8b2918676`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:09:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:09:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:24:11 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:24:13 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 15:29:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 15:29:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 15:29:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 15:29:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:29:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 15:29:42 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 19:32:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 19:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:33:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:33:34 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 19:33:34 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 19:33:34 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 19:33:43 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 19:33:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 19:39:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:39:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 19:39:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 19:39:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 19:39:10 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 19:39:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18da1fa7944f6670730b7a16c0bcf8ae101bd1fc6fb9bf4a429b0443fb395f5c`  
		Last Modified: Tue, 17 Jul 2018 16:04:29 GMT  
		Size: 10.9 MB (10893534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3c5cb3d0bf20e4c2aa32aaf600c0f4140f2ac607c00c2c9d3e3bd9f1c54637`  
		Last Modified: Tue, 17 Jul 2018 16:04:25 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a86e5975f123f0e5c286817fd34ec3e36930173d42ddf30b44e2bf139bb99`  
		Last Modified: Tue, 17 Jul 2018 16:09:31 GMT  
		Size: 21.1 MB (21114570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c43de9fdb85f3958f818ec33aab434d63bb76f32feea78aa5523ab686115ed`  
		Last Modified: Tue, 17 Jul 2018 16:09:27 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e516dc88b9c064d6238e6c22f0dbfa2b4af7866d25bfcf851b6c53fe6674fb63`  
		Last Modified: Tue, 17 Jul 2018 19:45:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e1309a20fa40e7bc366eafefc96601e6798bbd63f56a5f8d28fc288297c03b`  
		Last Modified: Tue, 17 Jul 2018 19:46:16 GMT  
		Size: 78.4 MB (78367220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af111fb38ffffb243818465084709aba7e3a47905d97d9831bd5ce5037245a15`  
		Last Modified: Tue, 17 Jul 2018 19:45:49 GMT  
		Size: 876.7 KB (876663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabeca437fed7c834224b95792a6a8fc2fb3ed95e63a74e35c56610245fd6376`  
		Last Modified: Tue, 17 Jul 2018 19:45:48 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147b8ccca8bd85eac48e4194a6fda53774bd7eade69f00b6cd614f0e9fa5fe28`  
		Last Modified: Tue, 17 Jul 2018 19:45:49 GMT  
		Size: 2.5 MB (2457556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e2ea8f1cdd68f0365a30bde0ab512476375a2d797b5446ba845485f0241597`  
		Last Modified: Tue, 17 Jul 2018 19:46:32 GMT  
		Size: 117.6 MB (117616627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e997148ad798cb094a06e276f81eb55ca89654c479c4e6d4097c80aee698db6`  
		Last Modified: Tue, 17 Jul 2018 19:45:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:12e0cdce03fd58806a6cb4d3098a3b3915803f01c23e5b5a38c58517028ffed2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 MB (278706569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc29704910fc45607460f4451ee9a611a68850688699be55ad859800d1c17db1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 18:04:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:04:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 18:40:00 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 18:40:01 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 18:40:03 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 18:40:04 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 18:40:05 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 18:51:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 18:51:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:51:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:51:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:51:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 18:51:52 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 07:00:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 07:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 07:02:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:02:51 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 07:02:52 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 07:02:53 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 18 Jul 2018 07:02:54 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 18 Jul 2018 07:03:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 07:16:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:16:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 07:16:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 07:16:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 07:16:27 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 07:16:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa9443036385c99638507841f50d6bc6cba606b99aa41dc5ce967073beccba3`  
		Last Modified: Tue, 17 Jul 2018 19:14:23 GMT  
		Size: 11.6 MB (11617940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc36b55a654a01a6224bac76bcdab0a88125a41a37c3be9452324759a735fab0`  
		Last Modified: Tue, 17 Jul 2018 19:14:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad189e73b795a52085599988a5596290332c221f9f1f797131705a98333244`  
		Last Modified: Tue, 17 Jul 2018 19:23:41 GMT  
		Size: 21.5 MB (21513511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0dd563b5dcd06cfa182a87f960ef0220a3bbf32af26d60064b18b58682506`  
		Last Modified: Tue, 17 Jul 2018 19:23:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91845c1ae5082a406dcad97262f3cbc1047c384f8229137cc81e617ccebb7888`  
		Last Modified: Wed, 18 Jul 2018 07:37:36 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a248356192340a9df3c9e06861d105137bd9c48e3ef5a06e8ec5cb4aa6347410`  
		Last Modified: Wed, 18 Jul 2018 07:38:04 GMT  
		Size: 80.5 MB (80517155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969a5ef70ddf0b63626cc1be72d4a84d0a91c2cf6e0cd4eeb33b6af5fdaf71a5`  
		Last Modified: Wed, 18 Jul 2018 07:37:33 GMT  
		Size: 871.7 KB (871727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27aac5e213222f432b0ef87d3ae0c87384de578561b1d125db780dd2266cc4d`  
		Last Modified: Wed, 18 Jul 2018 07:37:32 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1f5fb5ad5e1f0c944d87f32d71e5f906e11bb742811a9a236bab9d7324ac19`  
		Last Modified: Wed, 18 Jul 2018 07:37:34 GMT  
		Size: 2.5 MB (2456916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65971d53114fd3a464389aad3751f54dabbf624195dde8622d6f39216903f8b3`  
		Last Modified: Wed, 18 Jul 2018 07:38:09 GMT  
		Size: 118.6 MB (118601717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43302e044c18b86c397bffccd847232f122e29b890ae8be0543649bb86cca30b`  
		Last Modified: Wed, 18 Jul 2018 07:37:33 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:eae5436ad4d2b34edbd6a67526bb172f2869b773dd722890ff771fb6b8254a9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 MB (296300130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254da9b7256f73c8ee5e1376985728dc950a046e83d45a35002e29613da565d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:55:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:55:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 16:09:58 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 16:09:58 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 16:15:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 16:15:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:15:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:15:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:15:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 16:15:03 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 22:52:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 22:53:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 22:54:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 22:54:11 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 22:54:11 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 22:54:12 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 22:54:12 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 22:54:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 23:01:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 23:01:34 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 23:01:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 23:01:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 23:01:36 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 23:01:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbf9f33b81c150f3e72881c9f4403277a540913f0e9bfda25967f9c53e3fd17`  
		Last Modified: Tue, 17 Jul 2018 16:53:06 GMT  
		Size: 16.3 MB (16252862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2284b349473d431f7cf55791c012c8dfc70e3fb1a4e0aff5060b475cd74ec0d2`  
		Last Modified: Tue, 17 Jul 2018 16:53:00 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b503ba41c8a21928778b1151f07813b3e4797e04c2aba7aba374c2683b8615`  
		Last Modified: Tue, 17 Jul 2018 16:58:57 GMT  
		Size: 21.3 MB (21346198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99f35b5e48e684d907d271adeeded92e261d62fb83c1efcff3a8f9dd8f642f3`  
		Last Modified: Tue, 17 Jul 2018 16:58:53 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11914d540dbd3792b64e1416ad1d5ea29b1ddefd14965141b1b689dfce069ee8`  
		Last Modified: Tue, 17 Jul 2018 23:09:16 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408424eae3130a634376c151a55769325adca7ee150fd3c903e47874391ce52d`  
		Last Modified: Tue, 17 Jul 2018 23:09:51 GMT  
		Size: 86.6 MB (86563997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f098eb400be6042ef4b1f0f882c2f1378107b6e430d3bce4fe4a0abfe650f6df`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 883.7 KB (883699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94119673becd9d6beae0bdb835bc12533c50b9b29af978c31b2476565bf7553d`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154679ee92970d88e9dbb14d77b40bbc48a96f1acdf8957b8045bff4751d3a9f`  
		Last Modified: Tue, 17 Jul 2018 23:09:15 GMT  
		Size: 2.5 MB (2456904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74583f6ff768a48384c64d1fadc978831a555d770a98cbccbfcbb3fd9014e5d`  
		Last Modified: Tue, 17 Jul 2018 23:09:52 GMT  
		Size: 122.8 MB (122754925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffd3805b00e13baaccff126d6c82e488ccd60844cb2d331c9915cbe70091991`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:e478e7b592506cca954dd179a3b59da121c8373d12addb729a9636de8b95bbec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 MB (287805772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80d6777f9fca3c1579855a6f2482c93ef32112b7714af2ac08e48bee36756e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:15:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:15:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:34:43 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 15:34:47 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 15:34:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 15:34:52 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:34:52 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 15:47:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 15:47:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 15:47:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 15:47:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:47:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 15:47:50 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 00:23:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 00:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 00:27:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:27:10 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 00:27:12 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 00:27:14 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 18 Jul 2018 00:27:15 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 18 Jul 2018 00:27:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:37:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 00:37:32 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 00:37:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 00:37:38 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 00:37:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5de8615eaac6e618b0c56813011d232b254a3e9e7c6b6f2280c067f0562841`  
		Last Modified: Tue, 17 Jul 2018 16:03:30 GMT  
		Size: 12.2 MB (12204158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ef4de3e20e6f2fc1a012aa9c5a50e878e568108d7e669631a920726141aba3`  
		Last Modified: Tue, 17 Jul 2018 16:03:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776859006768edd38e19dbaf137c0a2dbd305080ff8856fd46e93639f003c06d`  
		Last Modified: Tue, 17 Jul 2018 16:05:14 GMT  
		Size: 22.0 MB (21981731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b3d798af838e99d709e3c7d0842b568b62cc84f2216c36eae5d88e8a47e091`  
		Last Modified: Tue, 17 Jul 2018 16:05:10 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b5a725651d519b119e80d96cf7c0eabd88baa852b0c74050d750185baa602d`  
		Last Modified: Wed, 18 Jul 2018 00:50:02 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d268d8fdde1498384ae845828df5f06d410b9688b91e208f353256142e92db`  
		Last Modified: Wed, 18 Jul 2018 00:50:27 GMT  
		Size: 83.8 MB (83839241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6da59dd9cd0f21c5af2227f9352d460eb7f795027c0cf2af8df55b6b0098c5d`  
		Last Modified: Wed, 18 Jul 2018 00:50:00 GMT  
		Size: 873.2 KB (873220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e972b2ac6100d308b6e2b6aa255b10ce65c68fb27d833b74ea502f345c7160e9`  
		Last Modified: Wed, 18 Jul 2018 00:49:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111d33d84d6d5f840b71091ff2d20c055812390e90b423efaa2cae0a0976fba4`  
		Last Modified: Wed, 18 Jul 2018 00:50:00 GMT  
		Size: 2.5 MB (2457546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5cf7c53e2b9ee4760ad52274e20ac247d98e5a1c5d918eab2201aa29aaca7f`  
		Last Modified: Wed, 18 Jul 2018 00:50:26 GMT  
		Size: 120.9 MB (120851716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7b69bc49e510cdc6ce63bb44c56b6b7eb927413553c3b8026fe8d80570fb47`  
		Last Modified: Wed, 18 Jul 2018 00:49:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:43b0f5f6b3e22e70c2a2a7fbd9eeb382829d2f43420c3c9c00da089e1329bbc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290632083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f957ae0fb5b91dd8930b6071f6fa7b40c771cc1b0791c4d504330c1fea0c8db3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:17 GMT
ADD file:8359a87f8de229cd148a6a7f227042a80cb73366ce79cb1a866426a6a91103e7 in / 
# Tue, 17 Jul 2018 11:43:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:40:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:40:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 13:50:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 13:50:49 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 13:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 13:54:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 13:54:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 13:54:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 13:54:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 13:54:10 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 18:45:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 18:46:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:46:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:46:42 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 18:46:42 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 18:46:42 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 18:46:43 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 18:46:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 18:50:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:50:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 18:50:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 18:50:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 18:50:41 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 18:50:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9351e2bf09f4d9a6beab73bfd3f913106d30008c3ebde119c4b5820670de53e1`  
		Last Modified: Tue, 17 Jul 2018 11:46:37 GMT  
		Size: 45.2 MB (45198375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a2f7a92fcc5456e729fd76f4441a7091bff9890ce29bb7f7a60288da1a3a90`  
		Last Modified: Tue, 17 Jul 2018 14:02:17 GMT  
		Size: 13.2 MB (13211074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee0ec0be7c5fb5c543599d9871618f0899fbadfaaaa736c0e2f4e3990b14e5e`  
		Last Modified: Tue, 17 Jul 2018 14:02:11 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04480ae58cce7d93dc03bd0d4ef6c785d0779d04dba643ae849328662e6620e7`  
		Last Modified: Tue, 17 Jul 2018 14:04:22 GMT  
		Size: 22.1 MB (22118696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47de064c19b2b6b082fe68ccf0e9638a14683b997dead2f5f22ba8b1f5dd7ada`  
		Last Modified: Tue, 17 Jul 2018 14:04:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea8ff8d33c99b213cfc185d473375c6251417d94d75752fdb1e86500fccfca`  
		Last Modified: Tue, 17 Jul 2018 18:55:16 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30747444a1efa1fe92dd4a03c12872a558bf8214c5f6f87d8a3fe041c5e9fefc`  
		Last Modified: Tue, 17 Jul 2018 18:55:32 GMT  
		Size: 84.5 MB (84460999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b90c6a3f032d4980323e24c45eafd2feb11f0b4f3f266bb5052ec204bfa6f6`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 889.9 KB (889851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b8d5ac3b555ad3009a16ba09b0141596f42dc526c9b22441fe76b68977a660`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d77dcbef842e8f1a2957ea8b90c8957694d621d5de2ea0ae89049925013891`  
		Last Modified: Tue, 17 Jul 2018 18:55:16 GMT  
		Size: 2.5 MB (2456901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a836256e4c8beb3f384758ee1737d009d1ec6c88a541c486635a2fb297da5a00`  
		Last Modified: Tue, 17 Jul 2018 18:55:34 GMT  
		Size: 122.3 MB (122292155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb9d59ebf54cfa7f13581fef868f4eabaa6fe5c4880c73f231efc1f0cc020ea`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:92eefe1da11b21e546020419d0adaf6d2068aef7c94b9d3d4629e030d3926efb
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
$ docker pull redmine@sha256:4575bcf637430ddba65eb5b4c073e4c9e4d581b47494bc956acf07a651e035c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.9 MB (305875693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bad9ddfb104266d37378f63b1a543d1456003fa4c47ce1dfc89ea8dcf1d215e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:37:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:37:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:37:56 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 08:37:56 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 08:37:57 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 08:37:57 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 09:18:34 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 09:22:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 09:22:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 09:22:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 09:22:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 09:22:36 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 09:22:37 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:13:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:14:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:14:38 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:14:39 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:14:50 GMT
ENV REDMINE_VERSION=3.3.8
# Sat, 21 Jul 2018 11:14:50 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Sat, 21 Jul 2018 11:14:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:20:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:20:29 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:20:30 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:20:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:20:30 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:20:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c85ca99e4da573866b8ff3b2c2c09a58df4cc109193f7c3dc4bfeba719daf5`  
		Last Modified: Tue, 17 Jul 2018 09:08:03 GMT  
		Size: 14.5 MB (14452512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377100d5df01995772e6b584b6e69c2d5a701c7e4fc9e3aa657aa0200a9ab6e`  
		Last Modified: Tue, 17 Jul 2018 09:07:57 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2c550190d95183293a85996341d5af714b0a1543c025fa82c1d73b224c687c`  
		Last Modified: Sat, 21 Jul 2018 09:57:31 GMT  
		Size: 34.6 MB (34560219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e264af2c942458b39a2a44ec54bb6b133da849f0c3da439275a4e99d92a2b8ce`  
		Last Modified: Sat, 21 Jul 2018 09:57:17 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abd80221b77ba48f923594189c68886eb8ef877f705ee093a30869b0c9acabc`  
		Last Modified: Sat, 21 Jul 2018 11:26:37 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038fcaa54d149fa07e34765161d67713ce7fc0df04ddb03e56a4de160a3c5cee`  
		Last Modified: Sat, 21 Jul 2018 11:27:04 GMT  
		Size: 83.0 MB (83021669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da191cbff6d881066c07db9b4723e440fbec0c60ecb3676e00d026c8b5595e1`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 904.1 KB (904092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59040072d4670c7ca1402ffd25972be45fa97fd37a870311b1e6e725ff438ee7`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac2b9fdf5ed4a005e82e6bb7fa31a1c31271dbd2f7c30614c85d9e72aa4dd7e`  
		Last Modified: Sat, 21 Jul 2018 11:26:36 GMT  
		Size: 2.4 MB (2394057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be7cf4759e6dcdeee84274178309251ea4b233f22d90cfb773bb57368a6a742`  
		Last Modified: Sat, 21 Jul 2018 11:27:07 GMT  
		Size: 125.2 MB (125229065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19477be55b79468c54478adf05c72109bff8de40cf26b80361832e04d97b2ad`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e6c2d8e9cb1658e46603201170b863a862873cc1ae095b07f8d4ac18613129a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.3 MB (293321548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1839577c31ca89eb6debaa565e0557202fc3f7b1edf2feac32384c181e45b325`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:17:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:17:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 12:17:50 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 12:17:50 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 12:17:50 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 12:17:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 10:17:45 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 10:22:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 10:22:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 10:22:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 10:22:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 10:22:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 10:22:15 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 12:06:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 12:06:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 12:07:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 12:07:00 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 12:07:00 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 12:07:01 GMT
ENV REDMINE_VERSION=3.3.8
# Sat, 21 Jul 2018 12:07:01 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Sat, 21 Jul 2018 12:07:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 12:12:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 12:12:36 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 12:12:37 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 12:12:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 12:12:37 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 12:12:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e297ece35f7dea2d24e1f2a65da98cea95bc711bacad08c68c6bb356dc2abc9`  
		Last Modified: Tue, 17 Jul 2018 12:31:44 GMT  
		Size: 12.4 MB (12432290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba7c8a97116b83f04d05645a6d968513711c09381dfe8fc6e555e5ab9aed0f3`  
		Last Modified: Tue, 17 Jul 2018 12:31:41 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c5ded0157ef2a55b3266a65ed5290886c4ef22fa23664b06bb4d781e73109`  
		Last Modified: Sat, 21 Jul 2018 10:42:24 GMT  
		Size: 33.3 MB (33261959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6982ff50017d1ecb35f3a18495ef705ad45b2b8f223028f071969622413106`  
		Last Modified: Sat, 21 Jul 2018 10:42:11 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11335fdb235844646c42b58044d859c8d0685adf667a1613a03aaa255c36860`  
		Last Modified: Sat, 21 Jul 2018 12:14:16 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13cbe5101f3326f8881abee0e86c62b86336b7f0cd8f693a0753fab49e9f0dd`  
		Last Modified: Sat, 21 Jul 2018 12:14:40 GMT  
		Size: 80.4 MB (80366470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cb74cd95629c4c16af8a012c7cf86a2eb5b15c6e15cac33cbf1014534f6e52`  
		Last Modified: Sat, 21 Jul 2018 12:14:14 GMT  
		Size: 893.4 KB (893439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe719269d6dabdb5643af49d2a8cb7432127f3c06935a79f674a4559fbcc10c`  
		Last Modified: Sat, 21 Jul 2018 12:14:14 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb137f38bedeb59c82abed8c540c40c70adf6e24bba4d5b5f3b03f2788f61f5`  
		Last Modified: Sat, 21 Jul 2018 12:14:15 GMT  
		Size: 2.4 MB (2394456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfc41e3b00cbd4e82c5b645d606f9f4e6b675a7085d0a8f0d77b96a80078ec7`  
		Last Modified: Sat, 21 Jul 2018 12:14:43 GMT  
		Size: 119.9 MB (119935778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca73fb9e00cb4bc9150555962a5f2b65b358785e76b2b52526c457b0293a3887`  
		Last Modified: Sat, 21 Jul 2018 12:14:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:cdb037062ad9b24cc77509c0a62dbbc4af69ce7029a444f528b745299ce65627
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 MB (285899556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a5ee0786e50209340507248262c78abefad2818667bb1297569c3694da3ff0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:47:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:47:37 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:47:37 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 15:47:38 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 15:47:38 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 15:47:38 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:47:39 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 15:51:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 15:51:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 15:51:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 15:51:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:51:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 15:52:04 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 19:39:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 19:40:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:40:21 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 19:40:21 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 19:40:21 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 17 Jul 2018 19:40:22 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 17 Jul 2018 19:40:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 19:45:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:45:09 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 19:45:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 19:45:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 19:45:10 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 19:45:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307bcf0c210df74e8b74c94bb3ceca10a3e90fd9f126517101983dd44f084e8d`  
		Last Modified: Tue, 17 Jul 2018 16:12:26 GMT  
		Size: 11.9 MB (11881041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb78b9a1220dcdec14e0bcb290369dd0b4e4ab053f5ea6efca91db0827cd4e07`  
		Last Modified: Tue, 17 Jul 2018 16:12:22 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707beb6ee12f0d025e76f521e3be8bba67b56cd9382ba3fa1b7833876312582e`  
		Last Modified: Tue, 17 Jul 2018 16:12:34 GMT  
		Size: 32.9 MB (32934120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76307965ebad0f13e2df5164e0eb7d7efad476ed766c704fc6f82093083bf03c`  
		Last Modified: Tue, 17 Jul 2018 16:12:23 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640d27bb24f1a59ffe801c9cc09f2f08bebaa7ec87e9b10002b0a44d88e0cd02`  
		Last Modified: Tue, 17 Jul 2018 19:47:33 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f88f1574f6b1758a090e551a7734cc8a6886d24ec0f378495d264d61eacad3`  
		Last Modified: Tue, 17 Jul 2018 19:47:54 GMT  
		Size: 77.3 MB (77255614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3693bf2b241a91e3da625aa3a8ddce8f1b292fe123b2870095aad52796d10b`  
		Last Modified: Tue, 17 Jul 2018 19:47:31 GMT  
		Size: 876.7 KB (876713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4134bd6127e2c9abe1a87de1cf2671a15707171cf2e9b199ae7d9b0d5146192`  
		Last Modified: Tue, 17 Jul 2018 19:47:30 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8101fe409b7a93837217ae8ffff2ee3dcf9388b67be3a8cc0f2c1962fc06906`  
		Last Modified: Tue, 17 Jul 2018 19:47:31 GMT  
		Size: 2.4 MB (2394456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa97cdf346619f29000e1a3549a21c3c41ad53ec04fe02e1be317277c8b93d9`  
		Last Modified: Tue, 17 Jul 2018 19:48:05 GMT  
		Size: 118.5 MB (118492690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e1280dc9d67d4248d57952c9c305cfdd2db214feaaa67abc35e3fa58c63c6d`  
		Last Modified: Tue, 17 Jul 2018 19:47:30 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:ef741418b45e78b89463f3c98114f5bcb7dff3e817534d5ad51f4d4877e6bed1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292275300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500992a0a4756cbc5e2bbb624a6197fe7cdab2f5353dd49acf875d5666b68d28`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:01:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 19:01:16 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 19:01:16 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 19:01:17 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 19:01:17 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 19:01:29 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 19:09:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 19:09:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:09:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:09:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:09:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 19:09:42 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 07:16:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 07:19:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 07:20:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:20:39 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 07:20:40 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 07:20:42 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 18 Jul 2018 07:20:43 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 18 Jul 2018 07:21:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 07:36:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:37:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 07:37:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 07:37:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 07:37:03 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 07:37:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2250ede0c4d26e9868a674d3b88cbd538068b527a2e33601cae3e5b65bc0e848`  
		Last Modified: Tue, 17 Jul 2018 19:27:36 GMT  
		Size: 12.7 MB (12704030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51777800ecb05257d8c617c08d46e16df8759649161aade8c185ccb7fb0f701`  
		Last Modified: Tue, 17 Jul 2018 19:27:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfe253621c3897ad1f949885ee67f4265bb72bd1bef8f8f28d0a89f2a7aa247`  
		Last Modified: Tue, 17 Jul 2018 19:27:47 GMT  
		Size: 34.4 MB (34394712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612497dbf378550dfc3ab6883ed274a300720566b334caeed31af70fd5247714`  
		Last Modified: Tue, 17 Jul 2018 19:27:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78104869cb0ffad3d766d53a72fc60d21d779f1d4b517e138fdabfb5011b984f`  
		Last Modified: Wed, 18 Jul 2018 07:39:27 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947307c72c2137d57680803366338ace2592fc2cc417f23d958f5ee8df73281b`  
		Last Modified: Wed, 18 Jul 2018 07:39:55 GMT  
		Size: 79.3 MB (79332605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aef8f856ed90b37c0bb5050f6697490aaa0c63df9ff76931bd1ad3e15209f8e`  
		Last Modified: Wed, 18 Jul 2018 07:39:25 GMT  
		Size: 872.2 KB (872188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141244025e81e6c2819d2dd49995aeb3a79c2162bbbb02b5c759634f64ed8c1e`  
		Last Modified: Wed, 18 Jul 2018 07:39:25 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a98954b2d077cbc440a102adc810721725b915d553b3896a82b58f60e38847`  
		Last Modified: Wed, 18 Jul 2018 07:39:27 GMT  
		Size: 2.4 MB (2394063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dd8815d6a03aead9d3f5e2c2ebcc0ae001aa49f526a677fad0f391502bb3ad`  
		Last Modified: Wed, 18 Jul 2018 07:40:02 GMT  
		Size: 119.5 MB (119450096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31fa54f63f574668ac25bbdbcab2e2c86adf9f006ab289f6e2cc83e9be1eb1c`  
		Last Modified: Wed, 18 Jul 2018 07:39:25 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:8f636a16cce8848776141e4417f037788f3e31fe9e047dd09858861d4965bf92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308723400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044975253c50f10d8a0b9054e2d483c91fb6e15e4f0b1d8227b05a18dbb80042`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 16:34:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:34:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 16:34:11 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 16:34:11 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 16:34:11 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 16:34:11 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 16:34:12 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 16:38:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 16:38:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:38:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:38:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 16:38:57 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 23:02:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 23:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:03:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 23:03:02 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 23:03:02 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 23:03:02 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 17 Jul 2018 23:03:03 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 17 Jul 2018 23:03:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 23:08:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 23:08:41 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 23:08:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 23:08:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 23:08:41 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 23:08:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e99647596b398ad883308eeeaccc4583d2ed8376a5508de806290c474e5ca2`  
		Last Modified: Tue, 17 Jul 2018 17:02:56 GMT  
		Size: 17.5 MB (17544990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9742b87c46b16d8bac01f2050d3041885b7feac16cc6bb9fc79f9d9ceb53fa91`  
		Last Modified: Tue, 17 Jul 2018 17:02:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bd6bd93a8ad4e45abdf2720a3e5d5402577d391290d200029baa26555be8d`  
		Last Modified: Tue, 17 Jul 2018 17:03:03 GMT  
		Size: 33.1 MB (33071058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c4664f5ba0723b974ee02582aae473cfdf5dfc186432c80c552d1957c6d662`  
		Last Modified: Tue, 17 Jul 2018 17:02:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6343ac4937aaabd2083b8db14d78644820fc1e1e4183a19ae23c84ed4d4416f`  
		Last Modified: Tue, 17 Jul 2018 23:11:17 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc802407b6ae3fa2a4d1e2c5cc88e830b0058df3b53e4955bcf65e93c798be13`  
		Last Modified: Tue, 17 Jul 2018 23:11:55 GMT  
		Size: 85.1 MB (85146002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1656842d3bc5b7a51da005937aff08a802346135ca97b332b6f21c41241fcda`  
		Last Modified: Tue, 17 Jul 2018 23:11:15 GMT  
		Size: 883.9 KB (883855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab2316355fae35b18c77e3fd9523dc2146f73aed819dc8c7338f8d8f833d3ac`  
		Last Modified: Tue, 17 Jul 2018 23:11:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca378bda7266dfee484ccbadbb5c78472662b32ac039146b4854e9fe21b74e75`  
		Last Modified: Tue, 17 Jul 2018 23:11:16 GMT  
		Size: 2.4 MB (2394062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0716b4984fc23114d4c3b04b1da7ce3242beff731934bd18b6520a5dd45aa4bd`  
		Last Modified: Tue, 17 Jul 2018 23:11:58 GMT  
		Size: 123.6 MB (123641886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6fa55931b36a7f8d6775c216f07495a5df05ecc6ad2f3b1cde04ef9f178691`  
		Last Modified: Tue, 17 Jul 2018 23:11:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:d0aadc25c1ffe2235e8142585555b66e7f12c2e4d56f147b14986d701195e917
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301925256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba172ac2123e6ec501a6663169364de6e09c4f2c7e0b519ad3aed1b9cdd5269`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:51:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:51:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:51:19 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 15:51:20 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 15:51:21 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 15:51:22 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:51:24 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 16:00:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 16:00:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:00:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:00:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:00:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 16:00:40 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 00:37:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 00:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 00:41:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:41:05 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 00:41:06 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 00:41:10 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 18 Jul 2018 00:41:10 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 18 Jul 2018 00:41:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 00:49:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:49:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 00:49:28 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 00:49:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 00:49:30 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 00:49:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89c8b9392ff719525a228c85f34d7b603633ea011d95062bc9489081f86c511`  
		Last Modified: Tue, 17 Jul 2018 16:05:49 GMT  
		Size: 13.6 MB (13557735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eba78201ca8f1b7bbf3cf462ef8981cc70fdd369f4b75fc2752f24971fe7c36`  
		Last Modified: Tue, 17 Jul 2018 16:05:44 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a4991ed2722c8be713b0ed35451a00dbbcf5b8dfbcd615901aefedb611f357`  
		Last Modified: Tue, 17 Jul 2018 16:05:56 GMT  
		Size: 35.3 MB (35251804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e941b207db8018af8190360d7582cb56036ecc756176f48eb78573dab21c8153`  
		Last Modified: Tue, 17 Jul 2018 16:05:44 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5bceca1caae95aa227c7d47aae205e6884c4bcc6ff1a3cef8b43b3d3b73498`  
		Last Modified: Wed, 18 Jul 2018 00:51:11 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a446b97a251cdb8a8e2c284bc1efdca15801efd10ccf55e5706cc7eb1bfd4e67`  
		Last Modified: Wed, 18 Jul 2018 00:51:32 GMT  
		Size: 82.5 MB (82536694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64282ea0628c1e7c23a01a41f25fa99eb009113da850145692a2aa48f2ce5e7`  
		Last Modified: Wed, 18 Jul 2018 00:51:08 GMT  
		Size: 873.0 KB (873011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f50efda906b25de33f0961beb1c5a09aa4040cbb559b5998e2b6b10f5c869b`  
		Last Modified: Wed, 18 Jul 2018 00:51:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5a411984a54d2c35e6bbc0a448460663a9b37acb0d7be57f4aa842e3f8e09`  
		Last Modified: Wed, 18 Jul 2018 00:51:09 GMT  
		Size: 2.4 MB (2394461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ef4cbd98d743dc9085ca8f45bb81d7e2a3a0273deb8a908f6b3b862872b116`  
		Last Modified: Wed, 18 Jul 2018 00:51:36 GMT  
		Size: 121.7 MB (121713393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aae661e4c566dadaa27041b6dba8e89fc0aafff3402dbd9551dcd2c526d83bc`  
		Last Modified: Wed, 18 Jul 2018 00:51:08 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:31281c338dac828cd9f26308391423f1c7a6c112f1ee92e957f1ef57c8b22996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307941131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:668e3dc6b0b3feff03fe65fb1ee9b914d2a6e38d65fdb3cb68d022842cd1f4bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:17 GMT
ADD file:8359a87f8de229cd148a6a7f227042a80cb73366ce79cb1a866426a6a91103e7 in / 
# Tue, 17 Jul 2018 11:43:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:57:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:57:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 13:57:51 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 13:57:51 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 13:57:51 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 13:57:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 13:57:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 14:00:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 14:00:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:00:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:00:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:00:32 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 14:00:32 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 18:51:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 18:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:51:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:51:43 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 18:51:43 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 18:51:43 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 17 Jul 2018 18:51:43 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 17 Jul 2018 18:51:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 18:54:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:54:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 18:54:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 18:54:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 18:54:53 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 18:54:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9351e2bf09f4d9a6beab73bfd3f913106d30008c3ebde119c4b5820670de53e1`  
		Last Modified: Tue, 17 Jul 2018 11:46:37 GMT  
		Size: 45.2 MB (45198375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efc9d1a9f0775e7aa32b84e0e74e4a2c54639afb40a3c7fd5b4fb11ee1118f9`  
		Last Modified: Tue, 17 Jul 2018 14:05:28 GMT  
		Size: 14.7 MB (14653782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a52fca010001263ff0aa552c0209fba51e7c94a233c25e913d698b9a75a9a04`  
		Last Modified: Tue, 17 Jul 2018 14:05:23 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6997ebb673ab4768a8da9f249867597066627a305af5eca4ba064eafbb5fc`  
		Last Modified: Tue, 17 Jul 2018 14:05:34 GMT  
		Size: 38.5 MB (38525935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537d60de3e54d228eaf0c156834d76b95382fe22ec7c60c805e1746cb79895d7`  
		Last Modified: Tue, 17 Jul 2018 14:05:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74583d26c2e1eddd682f521c0835b62675a4a7781ead7dab57be12e5f24da1a3`  
		Last Modified: Tue, 17 Jul 2018 18:56:03 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd4edb0d6d5cbc9282ead1b0a34222d25f97c874f7cd78908906b5573df135c`  
		Last Modified: Tue, 17 Jul 2018 18:56:18 GMT  
		Size: 83.1 MB (83095051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc6cf99d70e3e4fb6e51ec22bff3e219e88dbe4d99769f9b14eb422d9f2e53b`  
		Last Modified: Tue, 17 Jul 2018 18:56:02 GMT  
		Size: 890.0 KB (890045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66845219f0f1fff814ec45c3f5cdd5cd08bcb4c671b9d176940874efce86b4c1`  
		Last Modified: Tue, 17 Jul 2018 18:56:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a261801a4221b56d31035c146a814803bcedadbb091ca8714749e2164a6d8374`  
		Last Modified: Tue, 17 Jul 2018 18:56:02 GMT  
		Size: 2.4 MB (2394056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81deef7eb9b0eb3dbdf8ec72380c836e5330013393e87f09590a0c824e29afa1`  
		Last Modified: Tue, 17 Jul 2018 18:56:20 GMT  
		Size: 123.2 MB (123179849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780a28c5e8a708bf93c953c6861debfeab5fff29666937986aa60d9083ed39bc`  
		Last Modified: Tue, 17 Jul 2018 18:56:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.8`

```console
$ docker pull redmine@sha256:92eefe1da11b21e546020419d0adaf6d2068aef7c94b9d3d4629e030d3926efb
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
$ docker pull redmine@sha256:4575bcf637430ddba65eb5b4c073e4c9e4d581b47494bc956acf07a651e035c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.9 MB (305875693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bad9ddfb104266d37378f63b1a543d1456003fa4c47ce1dfc89ea8dcf1d215e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:37:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:37:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:37:56 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 08:37:56 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 08:37:57 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 08:37:57 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 09:18:34 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 09:22:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 09:22:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 09:22:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 09:22:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 09:22:36 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 09:22:37 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:13:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:14:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:14:38 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:14:39 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:14:50 GMT
ENV REDMINE_VERSION=3.3.8
# Sat, 21 Jul 2018 11:14:50 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Sat, 21 Jul 2018 11:14:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:20:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:20:29 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:20:30 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:20:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:20:30 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:20:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c85ca99e4da573866b8ff3b2c2c09a58df4cc109193f7c3dc4bfeba719daf5`  
		Last Modified: Tue, 17 Jul 2018 09:08:03 GMT  
		Size: 14.5 MB (14452512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377100d5df01995772e6b584b6e69c2d5a701c7e4fc9e3aa657aa0200a9ab6e`  
		Last Modified: Tue, 17 Jul 2018 09:07:57 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2c550190d95183293a85996341d5af714b0a1543c025fa82c1d73b224c687c`  
		Last Modified: Sat, 21 Jul 2018 09:57:31 GMT  
		Size: 34.6 MB (34560219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e264af2c942458b39a2a44ec54bb6b133da849f0c3da439275a4e99d92a2b8ce`  
		Last Modified: Sat, 21 Jul 2018 09:57:17 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abd80221b77ba48f923594189c68886eb8ef877f705ee093a30869b0c9acabc`  
		Last Modified: Sat, 21 Jul 2018 11:26:37 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038fcaa54d149fa07e34765161d67713ce7fc0df04ddb03e56a4de160a3c5cee`  
		Last Modified: Sat, 21 Jul 2018 11:27:04 GMT  
		Size: 83.0 MB (83021669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da191cbff6d881066c07db9b4723e440fbec0c60ecb3676e00d026c8b5595e1`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 904.1 KB (904092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59040072d4670c7ca1402ffd25972be45fa97fd37a870311b1e6e725ff438ee7`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac2b9fdf5ed4a005e82e6bb7fa31a1c31271dbd2f7c30614c85d9e72aa4dd7e`  
		Last Modified: Sat, 21 Jul 2018 11:26:36 GMT  
		Size: 2.4 MB (2394057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be7cf4759e6dcdeee84274178309251ea4b233f22d90cfb773bb57368a6a742`  
		Last Modified: Sat, 21 Jul 2018 11:27:07 GMT  
		Size: 125.2 MB (125229065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19477be55b79468c54478adf05c72109bff8de40cf26b80361832e04d97b2ad`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:e6c2d8e9cb1658e46603201170b863a862873cc1ae095b07f8d4ac18613129a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.3 MB (293321548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1839577c31ca89eb6debaa565e0557202fc3f7b1edf2feac32384c181e45b325`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:17:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:17:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 12:17:50 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 12:17:50 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 12:17:50 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 12:17:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 10:17:45 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 10:22:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 10:22:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 10:22:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 10:22:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 10:22:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 10:22:15 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 12:06:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 12:06:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 12:07:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 12:07:00 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 12:07:00 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 12:07:01 GMT
ENV REDMINE_VERSION=3.3.8
# Sat, 21 Jul 2018 12:07:01 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Sat, 21 Jul 2018 12:07:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 12:12:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 12:12:36 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 12:12:37 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 12:12:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 12:12:37 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 12:12:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e297ece35f7dea2d24e1f2a65da98cea95bc711bacad08c68c6bb356dc2abc9`  
		Last Modified: Tue, 17 Jul 2018 12:31:44 GMT  
		Size: 12.4 MB (12432290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba7c8a97116b83f04d05645a6d968513711c09381dfe8fc6e555e5ab9aed0f3`  
		Last Modified: Tue, 17 Jul 2018 12:31:41 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003c5ded0157ef2a55b3266a65ed5290886c4ef22fa23664b06bb4d781e73109`  
		Last Modified: Sat, 21 Jul 2018 10:42:24 GMT  
		Size: 33.3 MB (33261959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6982ff50017d1ecb35f3a18495ef705ad45b2b8f223028f071969622413106`  
		Last Modified: Sat, 21 Jul 2018 10:42:11 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11335fdb235844646c42b58044d859c8d0685adf667a1613a03aaa255c36860`  
		Last Modified: Sat, 21 Jul 2018 12:14:16 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13cbe5101f3326f8881abee0e86c62b86336b7f0cd8f693a0753fab49e9f0dd`  
		Last Modified: Sat, 21 Jul 2018 12:14:40 GMT  
		Size: 80.4 MB (80366470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cb74cd95629c4c16af8a012c7cf86a2eb5b15c6e15cac33cbf1014534f6e52`  
		Last Modified: Sat, 21 Jul 2018 12:14:14 GMT  
		Size: 893.4 KB (893439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe719269d6dabdb5643af49d2a8cb7432127f3c06935a79f674a4559fbcc10c`  
		Last Modified: Sat, 21 Jul 2018 12:14:14 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb137f38bedeb59c82abed8c540c40c70adf6e24bba4d5b5f3b03f2788f61f5`  
		Last Modified: Sat, 21 Jul 2018 12:14:15 GMT  
		Size: 2.4 MB (2394456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfc41e3b00cbd4e82c5b645d606f9f4e6b675a7085d0a8f0d77b96a80078ec7`  
		Last Modified: Sat, 21 Jul 2018 12:14:43 GMT  
		Size: 119.9 MB (119935778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca73fb9e00cb4bc9150555962a5f2b65b358785e76b2b52526c457b0293a3887`  
		Last Modified: Sat, 21 Jul 2018 12:14:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm variant v7

```console
$ docker pull redmine@sha256:cdb037062ad9b24cc77509c0a62dbbc4af69ce7029a444f528b745299ce65627
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 MB (285899556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a5ee0786e50209340507248262c78abefad2818667bb1297569c3694da3ff0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:47:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:47:37 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:47:37 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 15:47:38 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 15:47:38 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 15:47:38 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:47:39 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 15:51:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 15:51:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 15:51:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 15:51:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:51:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 15:52:04 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 19:39:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 19:40:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:17 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:40:21 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 19:40:21 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 19:40:21 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 17 Jul 2018 19:40:22 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 17 Jul 2018 19:40:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 19:45:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:45:09 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 19:45:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 19:45:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 19:45:10 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 19:45:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307bcf0c210df74e8b74c94bb3ceca10a3e90fd9f126517101983dd44f084e8d`  
		Last Modified: Tue, 17 Jul 2018 16:12:26 GMT  
		Size: 11.9 MB (11881041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb78b9a1220dcdec14e0bcb290369dd0b4e4ab053f5ea6efca91db0827cd4e07`  
		Last Modified: Tue, 17 Jul 2018 16:12:22 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707beb6ee12f0d025e76f521e3be8bba67b56cd9382ba3fa1b7833876312582e`  
		Last Modified: Tue, 17 Jul 2018 16:12:34 GMT  
		Size: 32.9 MB (32934120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76307965ebad0f13e2df5164e0eb7d7efad476ed766c704fc6f82093083bf03c`  
		Last Modified: Tue, 17 Jul 2018 16:12:23 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640d27bb24f1a59ffe801c9cc09f2f08bebaa7ec87e9b10002b0a44d88e0cd02`  
		Last Modified: Tue, 17 Jul 2018 19:47:33 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f88f1574f6b1758a090e551a7734cc8a6886d24ec0f378495d264d61eacad3`  
		Last Modified: Tue, 17 Jul 2018 19:47:54 GMT  
		Size: 77.3 MB (77255614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3693bf2b241a91e3da625aa3a8ddce8f1b292fe123b2870095aad52796d10b`  
		Last Modified: Tue, 17 Jul 2018 19:47:31 GMT  
		Size: 876.7 KB (876713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4134bd6127e2c9abe1a87de1cf2671a15707171cf2e9b199ae7d9b0d5146192`  
		Last Modified: Tue, 17 Jul 2018 19:47:30 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8101fe409b7a93837217ae8ffff2ee3dcf9388b67be3a8cc0f2c1962fc06906`  
		Last Modified: Tue, 17 Jul 2018 19:47:31 GMT  
		Size: 2.4 MB (2394456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa97cdf346619f29000e1a3549a21c3c41ad53ec04fe02e1be317277c8b93d9`  
		Last Modified: Tue, 17 Jul 2018 19:48:05 GMT  
		Size: 118.5 MB (118492690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e1280dc9d67d4248d57952c9c305cfdd2db214feaaa67abc35e3fa58c63c6d`  
		Last Modified: Tue, 17 Jul 2018 19:47:30 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:ef741418b45e78b89463f3c98114f5bcb7dff3e817534d5ad51f4d4877e6bed1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292275300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500992a0a4756cbc5e2bbb624a6197fe7cdab2f5353dd49acf875d5666b68d28`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:01:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:01:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 19:01:16 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 19:01:16 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 19:01:17 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 19:01:17 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 19:01:29 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 19:09:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 19:09:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:09:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:09:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:09:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 19:09:42 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 07:16:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 07:19:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 07:20:38 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:20:39 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 07:20:40 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 07:20:42 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 18 Jul 2018 07:20:43 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 18 Jul 2018 07:21:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 07:36:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:37:00 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 07:37:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 07:37:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 07:37:03 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 07:37:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2250ede0c4d26e9868a674d3b88cbd538068b527a2e33601cae3e5b65bc0e848`  
		Last Modified: Tue, 17 Jul 2018 19:27:36 GMT  
		Size: 12.7 MB (12704030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51777800ecb05257d8c617c08d46e16df8759649161aade8c185ccb7fb0f701`  
		Last Modified: Tue, 17 Jul 2018 19:27:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfe253621c3897ad1f949885ee67f4265bb72bd1bef8f8f28d0a89f2a7aa247`  
		Last Modified: Tue, 17 Jul 2018 19:27:47 GMT  
		Size: 34.4 MB (34394712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612497dbf378550dfc3ab6883ed274a300720566b334caeed31af70fd5247714`  
		Last Modified: Tue, 17 Jul 2018 19:27:30 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78104869cb0ffad3d766d53a72fc60d21d779f1d4b517e138fdabfb5011b984f`  
		Last Modified: Wed, 18 Jul 2018 07:39:27 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947307c72c2137d57680803366338ace2592fc2cc417f23d958f5ee8df73281b`  
		Last Modified: Wed, 18 Jul 2018 07:39:55 GMT  
		Size: 79.3 MB (79332605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aef8f856ed90b37c0bb5050f6697490aaa0c63df9ff76931bd1ad3e15209f8e`  
		Last Modified: Wed, 18 Jul 2018 07:39:25 GMT  
		Size: 872.2 KB (872188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141244025e81e6c2819d2dd49995aeb3a79c2162bbbb02b5c759634f64ed8c1e`  
		Last Modified: Wed, 18 Jul 2018 07:39:25 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a98954b2d077cbc440a102adc810721725b915d553b3896a82b58f60e38847`  
		Last Modified: Wed, 18 Jul 2018 07:39:27 GMT  
		Size: 2.4 MB (2394063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dd8815d6a03aead9d3f5e2c2ebcc0ae001aa49f526a677fad0f391502bb3ad`  
		Last Modified: Wed, 18 Jul 2018 07:40:02 GMT  
		Size: 119.5 MB (119450096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31fa54f63f574668ac25bbdbcab2e2c86adf9f006ab289f6e2cc83e9be1eb1c`  
		Last Modified: Wed, 18 Jul 2018 07:39:25 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; 386

```console
$ docker pull redmine@sha256:8f636a16cce8848776141e4417f037788f3e31fe9e047dd09858861d4965bf92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308723400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044975253c50f10d8a0b9054e2d483c91fb6e15e4f0b1d8227b05a18dbb80042`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 16:34:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:34:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 16:34:11 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 16:34:11 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 16:34:11 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 16:34:11 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 16:34:12 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 16:38:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 16:38:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:38:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:38:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:57 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 16:38:57 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 23:02:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 23:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:03:02 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 23:03:02 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 23:03:02 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 23:03:02 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 17 Jul 2018 23:03:03 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 17 Jul 2018 23:03:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 23:08:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 23:08:41 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 23:08:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 23:08:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 23:08:41 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 23:08:42 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e99647596b398ad883308eeeaccc4583d2ed8376a5508de806290c474e5ca2`  
		Last Modified: Tue, 17 Jul 2018 17:02:56 GMT  
		Size: 17.5 MB (17544990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9742b87c46b16d8bac01f2050d3041885b7feac16cc6bb9fc79f9d9ceb53fa91`  
		Last Modified: Tue, 17 Jul 2018 17:02:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989bd6bd93a8ad4e45abdf2720a3e5d5402577d391290d200029baa26555be8d`  
		Last Modified: Tue, 17 Jul 2018 17:03:03 GMT  
		Size: 33.1 MB (33071058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c4664f5ba0723b974ee02582aae473cfdf5dfc186432c80c552d1957c6d662`  
		Last Modified: Tue, 17 Jul 2018 17:02:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6343ac4937aaabd2083b8db14d78644820fc1e1e4183a19ae23c84ed4d4416f`  
		Last Modified: Tue, 17 Jul 2018 23:11:17 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc802407b6ae3fa2a4d1e2c5cc88e830b0058df3b53e4955bcf65e93c798be13`  
		Last Modified: Tue, 17 Jul 2018 23:11:55 GMT  
		Size: 85.1 MB (85146002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1656842d3bc5b7a51da005937aff08a802346135ca97b332b6f21c41241fcda`  
		Last Modified: Tue, 17 Jul 2018 23:11:15 GMT  
		Size: 883.9 KB (883855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab2316355fae35b18c77e3fd9523dc2146f73aed819dc8c7338f8d8f833d3ac`  
		Last Modified: Tue, 17 Jul 2018 23:11:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca378bda7266dfee484ccbadbb5c78472662b32ac039146b4854e9fe21b74e75`  
		Last Modified: Tue, 17 Jul 2018 23:11:16 GMT  
		Size: 2.4 MB (2394062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0716b4984fc23114d4c3b04b1da7ce3242beff731934bd18b6520a5dd45aa4bd`  
		Last Modified: Tue, 17 Jul 2018 23:11:58 GMT  
		Size: 123.6 MB (123641886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6fa55931b36a7f8d6775c216f07495a5df05ecc6ad2f3b1cde04ef9f178691`  
		Last Modified: Tue, 17 Jul 2018 23:11:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; ppc64le

```console
$ docker pull redmine@sha256:d0aadc25c1ffe2235e8142585555b66e7f12c2e4d56f147b14986d701195e917
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301925256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba172ac2123e6ec501a6663169364de6e09c4f2c7e0b519ad3aed1b9cdd5269`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:51:16 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:51:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:51:19 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 15:51:20 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 15:51:21 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 15:51:22 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:51:24 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 16:00:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 16:00:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:00:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:00:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:00:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 16:00:40 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 00:37:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 00:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 00:41:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:41:05 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 00:41:06 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 00:41:10 GMT
ENV REDMINE_VERSION=3.3.8
# Wed, 18 Jul 2018 00:41:10 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Wed, 18 Jul 2018 00:41:16 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 00:49:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:49:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 00:49:28 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 00:49:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 00:49:30 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 00:49:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89c8b9392ff719525a228c85f34d7b603633ea011d95062bc9489081f86c511`  
		Last Modified: Tue, 17 Jul 2018 16:05:49 GMT  
		Size: 13.6 MB (13557735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eba78201ca8f1b7bbf3cf462ef8981cc70fdd369f4b75fc2752f24971fe7c36`  
		Last Modified: Tue, 17 Jul 2018 16:05:44 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a4991ed2722c8be713b0ed35451a00dbbcf5b8dfbcd615901aefedb611f357`  
		Last Modified: Tue, 17 Jul 2018 16:05:56 GMT  
		Size: 35.3 MB (35251804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e941b207db8018af8190360d7582cb56036ecc756176f48eb78573dab21c8153`  
		Last Modified: Tue, 17 Jul 2018 16:05:44 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5bceca1caae95aa227c7d47aae205e6884c4bcc6ff1a3cef8b43b3d3b73498`  
		Last Modified: Wed, 18 Jul 2018 00:51:11 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a446b97a251cdb8a8e2c284bc1efdca15801efd10ccf55e5706cc7eb1bfd4e67`  
		Last Modified: Wed, 18 Jul 2018 00:51:32 GMT  
		Size: 82.5 MB (82536694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64282ea0628c1e7c23a01a41f25fa99eb009113da850145692a2aa48f2ce5e7`  
		Last Modified: Wed, 18 Jul 2018 00:51:08 GMT  
		Size: 873.0 KB (873011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f50efda906b25de33f0961beb1c5a09aa4040cbb559b5998e2b6b10f5c869b`  
		Last Modified: Wed, 18 Jul 2018 00:51:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff5a411984a54d2c35e6bbc0a448460663a9b37acb0d7be57f4aa842e3f8e09`  
		Last Modified: Wed, 18 Jul 2018 00:51:09 GMT  
		Size: 2.4 MB (2394461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ef4cbd98d743dc9085ca8f45bb81d7e2a3a0273deb8a908f6b3b862872b116`  
		Last Modified: Wed, 18 Jul 2018 00:51:36 GMT  
		Size: 121.7 MB (121713393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aae661e4c566dadaa27041b6dba8e89fc0aafff3402dbd9551dcd2c526d83bc`  
		Last Modified: Wed, 18 Jul 2018 00:51:08 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.8` - linux; s390x

```console
$ docker pull redmine@sha256:31281c338dac828cd9f26308391423f1c7a6c112f1ee92e957f1ef57c8b22996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307941131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:668e3dc6b0b3feff03fe65fb1ee9b914d2a6e38d65fdb3cb68d022842cd1f4bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:17 GMT
ADD file:8359a87f8de229cd148a6a7f227042a80cb73366ce79cb1a866426a6a91103e7 in / 
# Tue, 17 Jul 2018 11:43:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:57:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:57:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 13:57:51 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 13:57:51 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 13:57:51 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 13:57:51 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 13:57:51 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 14:00:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 14:00:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:00:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:00:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:00:32 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 14:00:32 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 18:51:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 18:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:51:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:51:43 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 18:51:43 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 18:51:43 GMT
ENV REDMINE_VERSION=3.3.8
# Tue, 17 Jul 2018 18:51:43 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Tue, 17 Jul 2018 18:51:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 18:54:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:54:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 18:54:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 18:54:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 18:54:53 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 18:54:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9351e2bf09f4d9a6beab73bfd3f913106d30008c3ebde119c4b5820670de53e1`  
		Last Modified: Tue, 17 Jul 2018 11:46:37 GMT  
		Size: 45.2 MB (45198375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efc9d1a9f0775e7aa32b84e0e74e4a2c54639afb40a3c7fd5b4fb11ee1118f9`  
		Last Modified: Tue, 17 Jul 2018 14:05:28 GMT  
		Size: 14.7 MB (14653782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a52fca010001263ff0aa552c0209fba51e7c94a233c25e913d698b9a75a9a04`  
		Last Modified: Tue, 17 Jul 2018 14:05:23 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6997ebb673ab4768a8da9f249867597066627a305af5eca4ba064eafbb5fc`  
		Last Modified: Tue, 17 Jul 2018 14:05:34 GMT  
		Size: 38.5 MB (38525935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537d60de3e54d228eaf0c156834d76b95382fe22ec7c60c805e1746cb79895d7`  
		Last Modified: Tue, 17 Jul 2018 14:05:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74583d26c2e1eddd682f521c0835b62675a4a7781ead7dab57be12e5f24da1a3`  
		Last Modified: Tue, 17 Jul 2018 18:56:03 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd4edb0d6d5cbc9282ead1b0a34222d25f97c874f7cd78908906b5573df135c`  
		Last Modified: Tue, 17 Jul 2018 18:56:18 GMT  
		Size: 83.1 MB (83095051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc6cf99d70e3e4fb6e51ec22bff3e219e88dbe4d99769f9b14eb422d9f2e53b`  
		Last Modified: Tue, 17 Jul 2018 18:56:02 GMT  
		Size: 890.0 KB (890045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66845219f0f1fff814ec45c3f5cdd5cd08bcb4c671b9d176940874efce86b4c1`  
		Last Modified: Tue, 17 Jul 2018 18:56:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a261801a4221b56d31035c146a814803bcedadbb091ca8714749e2164a6d8374`  
		Last Modified: Tue, 17 Jul 2018 18:56:02 GMT  
		Size: 2.4 MB (2394056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81deef7eb9b0eb3dbdf8ec72380c836e5330013393e87f09590a0c824e29afa1`  
		Last Modified: Tue, 17 Jul 2018 18:56:20 GMT  
		Size: 123.2 MB (123179849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780a28c5e8a708bf93c953c6861debfeab5fff29666937986aa60d9083ed39bc`  
		Last Modified: Tue, 17 Jul 2018 18:56:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.8-passenger`

```console
$ docker pull redmine@sha256:bd9925145e21ed1979911edb7d9f8396638a62dd641534d6a13aaa33e4af4332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:95d15d9fab31e51b4672ae0c43e05f9c195090f61c293fbde2b790974356ed24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329160345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053101973b5083ad288e19e5ffe85a2ea6492a8cd89951fc81d8f577bc4d54b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:37:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:37:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:37:56 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 08:37:56 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 08:37:57 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 08:37:57 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 09:18:34 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 09:22:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 09:22:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 09:22:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 09:22:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 09:22:36 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 09:22:37 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:13:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:14:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:14:38 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:14:39 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:14:50 GMT
ENV REDMINE_VERSION=3.3.8
# Sat, 21 Jul 2018 11:14:50 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Sat, 21 Jul 2018 11:14:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:20:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:20:29 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:20:30 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:20:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:20:30 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:20:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 21 Jul 2018 11:21:10 GMT
ENV PASSENGER_VERSION=5.3.3
# Sat, 21 Jul 2018 11:21:27 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 11:21:30 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 21 Jul 2018 11:21:30 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c85ca99e4da573866b8ff3b2c2c09a58df4cc109193f7c3dc4bfeba719daf5`  
		Last Modified: Tue, 17 Jul 2018 09:08:03 GMT  
		Size: 14.5 MB (14452512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377100d5df01995772e6b584b6e69c2d5a701c7e4fc9e3aa657aa0200a9ab6e`  
		Last Modified: Tue, 17 Jul 2018 09:07:57 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2c550190d95183293a85996341d5af714b0a1543c025fa82c1d73b224c687c`  
		Last Modified: Sat, 21 Jul 2018 09:57:31 GMT  
		Size: 34.6 MB (34560219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e264af2c942458b39a2a44ec54bb6b133da849f0c3da439275a4e99d92a2b8ce`  
		Last Modified: Sat, 21 Jul 2018 09:57:17 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abd80221b77ba48f923594189c68886eb8ef877f705ee093a30869b0c9acabc`  
		Last Modified: Sat, 21 Jul 2018 11:26:37 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038fcaa54d149fa07e34765161d67713ce7fc0df04ddb03e56a4de160a3c5cee`  
		Last Modified: Sat, 21 Jul 2018 11:27:04 GMT  
		Size: 83.0 MB (83021669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da191cbff6d881066c07db9b4723e440fbec0c60ecb3676e00d026c8b5595e1`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 904.1 KB (904092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59040072d4670c7ca1402ffd25972be45fa97fd37a870311b1e6e725ff438ee7`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac2b9fdf5ed4a005e82e6bb7fa31a1c31271dbd2f7c30614c85d9e72aa4dd7e`  
		Last Modified: Sat, 21 Jul 2018 11:26:36 GMT  
		Size: 2.4 MB (2394057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be7cf4759e6dcdeee84274178309251ea4b233f22d90cfb773bb57368a6a742`  
		Last Modified: Sat, 21 Jul 2018 11:27:07 GMT  
		Size: 125.2 MB (125229065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19477be55b79468c54478adf05c72109bff8de40cf26b80361832e04d97b2ad`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0afcc5b7a0dd62a39e110b63bb23e034bf6abdb4b557c447e9c9742507f66d7`  
		Last Modified: Sat, 21 Jul 2018 11:28:12 GMT  
		Size: 18.8 MB (18799908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f830bf89cdbad21163ec9d8a737ac76336e801773482e7344a3f60dcff97883`  
		Last Modified: Sat, 21 Jul 2018 11:28:09 GMT  
		Size: 4.5 MB (4484744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:bd9925145e21ed1979911edb7d9f8396638a62dd641534d6a13aaa33e4af4332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:95d15d9fab31e51b4672ae0c43e05f9c195090f61c293fbde2b790974356ed24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329160345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053101973b5083ad288e19e5ffe85a2ea6492a8cd89951fc81d8f577bc4d54b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:37:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl1.0-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:37:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:37:56 GMT
ENV RUBY_MAJOR=2.3
# Tue, 17 Jul 2018 08:37:56 GMT
ENV RUBY_VERSION=2.3.7
# Tue, 17 Jul 2018 08:37:57 GMT
ENV RUBY_DOWNLOAD_SHA256=c61f8f2b9d3ffff5567e186421fa191f0d5e7c2b189b426bb84498825d548edb
# Tue, 17 Jul 2018 08:37:57 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 09:18:34 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 09:22:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 09:22:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 09:22:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 09:22:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 09:22:36 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 09:22:37 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:13:42 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:14:37 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:14:38 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:14:39 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:14:50 GMT
ENV REDMINE_VERSION=3.3.8
# Sat, 21 Jul 2018 11:14:50 GMT
ENV REDMINE_DOWNLOAD_MD5=6ca9284fa1c3571f6c83dd0e0d0fec1b
# Sat, 21 Jul 2018 11:14:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:20:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:20:29 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:20:30 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:20:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:20:30 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:20:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 21 Jul 2018 11:21:10 GMT
ENV PASSENGER_VERSION=5.3.3
# Sat, 21 Jul 2018 11:21:27 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 11:21:30 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 21 Jul 2018 11:21:30 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c85ca99e4da573866b8ff3b2c2c09a58df4cc109193f7c3dc4bfeba719daf5`  
		Last Modified: Tue, 17 Jul 2018 09:08:03 GMT  
		Size: 14.5 MB (14452512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377100d5df01995772e6b584b6e69c2d5a701c7e4fc9e3aa657aa0200a9ab6e`  
		Last Modified: Tue, 17 Jul 2018 09:07:57 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2c550190d95183293a85996341d5af714b0a1543c025fa82c1d73b224c687c`  
		Last Modified: Sat, 21 Jul 2018 09:57:31 GMT  
		Size: 34.6 MB (34560219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e264af2c942458b39a2a44ec54bb6b133da849f0c3da439275a4e99d92a2b8ce`  
		Last Modified: Sat, 21 Jul 2018 09:57:17 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abd80221b77ba48f923594189c68886eb8ef877f705ee093a30869b0c9acabc`  
		Last Modified: Sat, 21 Jul 2018 11:26:37 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038fcaa54d149fa07e34765161d67713ce7fc0df04ddb03e56a4de160a3c5cee`  
		Last Modified: Sat, 21 Jul 2018 11:27:04 GMT  
		Size: 83.0 MB (83021669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da191cbff6d881066c07db9b4723e440fbec0c60ecb3676e00d026c8b5595e1`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 904.1 KB (904092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59040072d4670c7ca1402ffd25972be45fa97fd37a870311b1e6e725ff438ee7`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac2b9fdf5ed4a005e82e6bb7fa31a1c31271dbd2f7c30614c85d9e72aa4dd7e`  
		Last Modified: Sat, 21 Jul 2018 11:26:36 GMT  
		Size: 2.4 MB (2394057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be7cf4759e6dcdeee84274178309251ea4b233f22d90cfb773bb57368a6a742`  
		Last Modified: Sat, 21 Jul 2018 11:27:07 GMT  
		Size: 125.2 MB (125229065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19477be55b79468c54478adf05c72109bff8de40cf26b80361832e04d97b2ad`  
		Last Modified: Sat, 21 Jul 2018 11:26:35 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0afcc5b7a0dd62a39e110b63bb23e034bf6abdb4b557c447e9c9742507f66d7`  
		Last Modified: Sat, 21 Jul 2018 11:28:12 GMT  
		Size: 18.8 MB (18799908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f830bf89cdbad21163ec9d8a737ac76336e801773482e7344a3f60dcff97883`  
		Last Modified: Sat, 21 Jul 2018 11:28:09 GMT  
		Size: 4.5 MB (4484744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:d9e3686822334a33f1d31b433210e673ba983854699ef763662386fe4fbca624
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
$ docker pull redmine@sha256:21397d206058f6ed2683896a12c651f48d8723725a695c9a756369cdedc1a6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292205533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9362b93e8b98cbd03f8b006017c59f67d434bdfe5fd850547db53d39947ed641`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:57:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:57:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 08:48:11 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 08:53:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 08:53:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:53:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 08:53:28 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:05:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:06:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:06:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:06:22 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:06:23 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:06:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:11:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:11:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:11:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:11:46 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:11:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e24ec071bf71216552018724b1a1cfc553a4937369d371c78703d812fed01`  
		Last Modified: Tue, 17 Jul 2018 08:55:35 GMT  
		Size: 12.8 MB (12809075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2f60922ca6bd0b4f2c068c6418122691c34e9a7578d6d43aa7c71eed283ec0`  
		Last Modified: Tue, 17 Jul 2018 08:55:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042d84500d0cd0e0ddef623d717934e6768159907c350b39a69723fa1be8c7a7`  
		Last Modified: Sat, 21 Jul 2018 09:50:13 GMT  
		Size: 21.7 MB (21749270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e4ae4a41e47965e530a93cb3619fc4ab1a22b6fb886d228c3b29273d69e755`  
		Last Modified: Sat, 21 Jul 2018 09:50:07 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b3d2244d8145015a8cacda7170eefbc962e8ad783bd3ddd794e884e093a66f`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b824882880cf42f78eeff69b8c05327b06c2e6bce177468df8a8e27860077f`  
		Last Modified: Sat, 21 Jul 2018 11:22:36 GMT  
		Size: 84.6 MB (84639235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ec66a1439a369f2f879afd4a9104c21ca71bd42e357c863e908dc3b80a2b4a`  
		Last Modified: Sat, 21 Jul 2018 11:22:03 GMT  
		Size: 904.1 KB (904066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd241ccd4d2f6cfd86a0e6125253b57520dc6c5e74fff33361866573a4b24e4`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc78343d3ea0ad0a21dcb1444b8477739baab8f5e186f8fd796cf9954e691ff1`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e51839d716a6dc072898ca32b18bb0a685259863c759328ad95aeb39782452`  
		Last Modified: Sat, 21 Jul 2018 11:22:37 GMT  
		Size: 124.3 MB (124332890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b2a40e6e7a8e8e3b5c5fc28516dfcd79725a934f2c18ea208f3eed675549a`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:72a5668ce8fa39ddb3189da783e9a0bd46910ec4f463e1121f521ec56b93ae5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280660759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e4b47f883d0be83f9d326c2086e20a955214a5f9300c74b46e757ac2986b7d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:57:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 12:04:00 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 12:04:00 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 12:04:01 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 12:04:01 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 09:54:09 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 09:59:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 09:59:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 09:59:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 09:59:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 09:59:59 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 09:59:59 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:57:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:59:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:59:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:59:24 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:59:24 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:59:24 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:59:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:59:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 12:05:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 12:05:41 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 12:05:42 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 12:05:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 12:05:43 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 12:05:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840a27c8096d5a31fd99dba4a42aaa180bdea1438c1232ef8af082aa4627cb77`  
		Last Modified: Tue, 17 Jul 2018 12:28:26 GMT  
		Size: 11.4 MB (11373361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c797e66bbbab97431748428f617d087cac7fc2e3c86853579dee31441777df`  
		Last Modified: Tue, 17 Jul 2018 12:28:22 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf2eaf4c10baa8ffbb48518a6c7b516f7601a6bf90c827bd31731d84537ed23`  
		Last Modified: Sat, 21 Jul 2018 10:38:56 GMT  
		Size: 21.3 MB (21307802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f057096a91f01eb6d19fafec3e172a260090f33cf61313eef3704bba679a26`  
		Last Modified: Sat, 21 Jul 2018 10:38:49 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a39e570fc37e26308b40c65b41b4827dc448edc05984d94b4cc67392a2be62`  
		Last Modified: Sat, 21 Jul 2018 12:12:59 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdac12c57612629acc4af37002c75392c3c4e0fd3fcf7d7365a3ce9f252beba`  
		Last Modified: Sat, 21 Jul 2018 12:13:28 GMT  
		Size: 81.6 MB (81561298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40d82e3e3a99b3f2128fd650f2edf408d264dd1dde6fe0583b31df60977bd12`  
		Last Modified: Sat, 21 Jul 2018 12:12:58 GMT  
		Size: 893.4 KB (893358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d4dedfb3a1672de93f73141e637ab8618b16a289fea13f2177e3012f1031d`  
		Last Modified: Sat, 21 Jul 2018 12:12:57 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15861ecae240c5c1e3bffdd1a19c8a3392c116575a314d21e741f8fba1a6ba45`  
		Last Modified: Sat, 21 Jul 2018 12:12:59 GMT  
		Size: 2.5 MB (2457552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e45f752bcda6e6470cb7eb442ef135ed46d06479670ff66ebbcdb5ab521f75`  
		Last Modified: Sat, 21 Jul 2018 12:13:30 GMT  
		Size: 119.0 MB (119030235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566fbca6caa175cba66a23cfb9e1b8d1eff63262485ae144bdb8b541b1907e1a`  
		Last Modified: Sat, 21 Jul 2018 12:12:57 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ac6ecb5e70f92d06d6675fae64ba28a15d57d9f45755e391f68851f07f9b6231
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273391095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6c068184b27722a5206362e7a2fdb1ba87758a2cf60f0f861672d8b2918676`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:09:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:09:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:24:11 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:24:13 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 15:29:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 15:29:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 15:29:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 15:29:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:29:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 15:29:42 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 19:32:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 19:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:33:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:33:34 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 19:33:34 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 19:33:34 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 19:33:43 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 19:33:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 19:39:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:39:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 19:39:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 19:39:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 19:39:10 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 19:39:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18da1fa7944f6670730b7a16c0bcf8ae101bd1fc6fb9bf4a429b0443fb395f5c`  
		Last Modified: Tue, 17 Jul 2018 16:04:29 GMT  
		Size: 10.9 MB (10893534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3c5cb3d0bf20e4c2aa32aaf600c0f4140f2ac607c00c2c9d3e3bd9f1c54637`  
		Last Modified: Tue, 17 Jul 2018 16:04:25 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a86e5975f123f0e5c286817fd34ec3e36930173d42ddf30b44e2bf139bb99`  
		Last Modified: Tue, 17 Jul 2018 16:09:31 GMT  
		Size: 21.1 MB (21114570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c43de9fdb85f3958f818ec33aab434d63bb76f32feea78aa5523ab686115ed`  
		Last Modified: Tue, 17 Jul 2018 16:09:27 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e516dc88b9c064d6238e6c22f0dbfa2b4af7866d25bfcf851b6c53fe6674fb63`  
		Last Modified: Tue, 17 Jul 2018 19:45:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e1309a20fa40e7bc366eafefc96601e6798bbd63f56a5f8d28fc288297c03b`  
		Last Modified: Tue, 17 Jul 2018 19:46:16 GMT  
		Size: 78.4 MB (78367220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af111fb38ffffb243818465084709aba7e3a47905d97d9831bd5ce5037245a15`  
		Last Modified: Tue, 17 Jul 2018 19:45:49 GMT  
		Size: 876.7 KB (876663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabeca437fed7c834224b95792a6a8fc2fb3ed95e63a74e35c56610245fd6376`  
		Last Modified: Tue, 17 Jul 2018 19:45:48 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147b8ccca8bd85eac48e4194a6fda53774bd7eade69f00b6cd614f0e9fa5fe28`  
		Last Modified: Tue, 17 Jul 2018 19:45:49 GMT  
		Size: 2.5 MB (2457556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e2ea8f1cdd68f0365a30bde0ab512476375a2d797b5446ba845485f0241597`  
		Last Modified: Tue, 17 Jul 2018 19:46:32 GMT  
		Size: 117.6 MB (117616627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e997148ad798cb094a06e276f81eb55ca89654c479c4e6d4097c80aee698db6`  
		Last Modified: Tue, 17 Jul 2018 19:45:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:12e0cdce03fd58806a6cb4d3098a3b3915803f01c23e5b5a38c58517028ffed2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 MB (278706569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc29704910fc45607460f4451ee9a611a68850688699be55ad859800d1c17db1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 18:04:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:04:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 18:40:00 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 18:40:01 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 18:40:03 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 18:40:04 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 18:40:05 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 18:51:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 18:51:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:51:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:51:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:51:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 18:51:52 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 07:00:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 07:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 07:02:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:02:51 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 07:02:52 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 07:02:53 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 18 Jul 2018 07:02:54 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 18 Jul 2018 07:03:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 07:16:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:16:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 07:16:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 07:16:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 07:16:27 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 07:16:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa9443036385c99638507841f50d6bc6cba606b99aa41dc5ce967073beccba3`  
		Last Modified: Tue, 17 Jul 2018 19:14:23 GMT  
		Size: 11.6 MB (11617940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc36b55a654a01a6224bac76bcdab0a88125a41a37c3be9452324759a735fab0`  
		Last Modified: Tue, 17 Jul 2018 19:14:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad189e73b795a52085599988a5596290332c221f9f1f797131705a98333244`  
		Last Modified: Tue, 17 Jul 2018 19:23:41 GMT  
		Size: 21.5 MB (21513511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0dd563b5dcd06cfa182a87f960ef0220a3bbf32af26d60064b18b58682506`  
		Last Modified: Tue, 17 Jul 2018 19:23:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91845c1ae5082a406dcad97262f3cbc1047c384f8229137cc81e617ccebb7888`  
		Last Modified: Wed, 18 Jul 2018 07:37:36 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a248356192340a9df3c9e06861d105137bd9c48e3ef5a06e8ec5cb4aa6347410`  
		Last Modified: Wed, 18 Jul 2018 07:38:04 GMT  
		Size: 80.5 MB (80517155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969a5ef70ddf0b63626cc1be72d4a84d0a91c2cf6e0cd4eeb33b6af5fdaf71a5`  
		Last Modified: Wed, 18 Jul 2018 07:37:33 GMT  
		Size: 871.7 KB (871727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27aac5e213222f432b0ef87d3ae0c87384de578561b1d125db780dd2266cc4d`  
		Last Modified: Wed, 18 Jul 2018 07:37:32 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1f5fb5ad5e1f0c944d87f32d71e5f906e11bb742811a9a236bab9d7324ac19`  
		Last Modified: Wed, 18 Jul 2018 07:37:34 GMT  
		Size: 2.5 MB (2456916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65971d53114fd3a464389aad3751f54dabbf624195dde8622d6f39216903f8b3`  
		Last Modified: Wed, 18 Jul 2018 07:38:09 GMT  
		Size: 118.6 MB (118601717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43302e044c18b86c397bffccd847232f122e29b890ae8be0543649bb86cca30b`  
		Last Modified: Wed, 18 Jul 2018 07:37:33 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:eae5436ad4d2b34edbd6a67526bb172f2869b773dd722890ff771fb6b8254a9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 MB (296300130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254da9b7256f73c8ee5e1376985728dc950a046e83d45a35002e29613da565d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:55:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:55:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 16:09:58 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 16:09:58 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 16:15:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 16:15:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:15:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:15:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:15:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 16:15:03 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 22:52:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 22:53:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 22:54:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 22:54:11 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 22:54:11 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 22:54:12 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 22:54:12 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 22:54:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 23:01:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 23:01:34 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 23:01:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 23:01:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 23:01:36 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 23:01:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbf9f33b81c150f3e72881c9f4403277a540913f0e9bfda25967f9c53e3fd17`  
		Last Modified: Tue, 17 Jul 2018 16:53:06 GMT  
		Size: 16.3 MB (16252862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2284b349473d431f7cf55791c012c8dfc70e3fb1a4e0aff5060b475cd74ec0d2`  
		Last Modified: Tue, 17 Jul 2018 16:53:00 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b503ba41c8a21928778b1151f07813b3e4797e04c2aba7aba374c2683b8615`  
		Last Modified: Tue, 17 Jul 2018 16:58:57 GMT  
		Size: 21.3 MB (21346198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99f35b5e48e684d907d271adeeded92e261d62fb83c1efcff3a8f9dd8f642f3`  
		Last Modified: Tue, 17 Jul 2018 16:58:53 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11914d540dbd3792b64e1416ad1d5ea29b1ddefd14965141b1b689dfce069ee8`  
		Last Modified: Tue, 17 Jul 2018 23:09:16 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408424eae3130a634376c151a55769325adca7ee150fd3c903e47874391ce52d`  
		Last Modified: Tue, 17 Jul 2018 23:09:51 GMT  
		Size: 86.6 MB (86563997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f098eb400be6042ef4b1f0f882c2f1378107b6e430d3bce4fe4a0abfe650f6df`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 883.7 KB (883699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94119673becd9d6beae0bdb835bc12533c50b9b29af978c31b2476565bf7553d`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154679ee92970d88e9dbb14d77b40bbc48a96f1acdf8957b8045bff4751d3a9f`  
		Last Modified: Tue, 17 Jul 2018 23:09:15 GMT  
		Size: 2.5 MB (2456904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74583f6ff768a48384c64d1fadc978831a555d770a98cbccbfcbb3fd9014e5d`  
		Last Modified: Tue, 17 Jul 2018 23:09:52 GMT  
		Size: 122.8 MB (122754925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffd3805b00e13baaccff126d6c82e488ccd60844cb2d331c9915cbe70091991`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:e478e7b592506cca954dd179a3b59da121c8373d12addb729a9636de8b95bbec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 MB (287805772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80d6777f9fca3c1579855a6f2482c93ef32112b7714af2ac08e48bee36756e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:15:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:15:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:34:43 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 15:34:47 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 15:34:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 15:34:52 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:34:52 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 15:47:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 15:47:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 15:47:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 15:47:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:47:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 15:47:50 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 00:23:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 00:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 00:27:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:27:10 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 00:27:12 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 00:27:14 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 18 Jul 2018 00:27:15 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 18 Jul 2018 00:27:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:37:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 00:37:32 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 00:37:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 00:37:38 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 00:37:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5de8615eaac6e618b0c56813011d232b254a3e9e7c6b6f2280c067f0562841`  
		Last Modified: Tue, 17 Jul 2018 16:03:30 GMT  
		Size: 12.2 MB (12204158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ef4de3e20e6f2fc1a012aa9c5a50e878e568108d7e669631a920726141aba3`  
		Last Modified: Tue, 17 Jul 2018 16:03:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776859006768edd38e19dbaf137c0a2dbd305080ff8856fd46e93639f003c06d`  
		Last Modified: Tue, 17 Jul 2018 16:05:14 GMT  
		Size: 22.0 MB (21981731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b3d798af838e99d709e3c7d0842b568b62cc84f2216c36eae5d88e8a47e091`  
		Last Modified: Tue, 17 Jul 2018 16:05:10 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b5a725651d519b119e80d96cf7c0eabd88baa852b0c74050d750185baa602d`  
		Last Modified: Wed, 18 Jul 2018 00:50:02 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d268d8fdde1498384ae845828df5f06d410b9688b91e208f353256142e92db`  
		Last Modified: Wed, 18 Jul 2018 00:50:27 GMT  
		Size: 83.8 MB (83839241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6da59dd9cd0f21c5af2227f9352d460eb7f795027c0cf2af8df55b6b0098c5d`  
		Last Modified: Wed, 18 Jul 2018 00:50:00 GMT  
		Size: 873.2 KB (873220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e972b2ac6100d308b6e2b6aa255b10ce65c68fb27d833b74ea502f345c7160e9`  
		Last Modified: Wed, 18 Jul 2018 00:49:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111d33d84d6d5f840b71091ff2d20c055812390e90b423efaa2cae0a0976fba4`  
		Last Modified: Wed, 18 Jul 2018 00:50:00 GMT  
		Size: 2.5 MB (2457546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5cf7c53e2b9ee4760ad52274e20ac247d98e5a1c5d918eab2201aa29aaca7f`  
		Last Modified: Wed, 18 Jul 2018 00:50:26 GMT  
		Size: 120.9 MB (120851716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7b69bc49e510cdc6ce63bb44c56b6b7eb927413553c3b8026fe8d80570fb47`  
		Last Modified: Wed, 18 Jul 2018 00:49:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:43b0f5f6b3e22e70c2a2a7fbd9eeb382829d2f43420c3c9c00da089e1329bbc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290632083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f957ae0fb5b91dd8930b6071f6fa7b40c771cc1b0791c4d504330c1fea0c8db3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:17 GMT
ADD file:8359a87f8de229cd148a6a7f227042a80cb73366ce79cb1a866426a6a91103e7 in / 
# Tue, 17 Jul 2018 11:43:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:40:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:40:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 13:50:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 13:50:49 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 13:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 13:54:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 13:54:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 13:54:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 13:54:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 13:54:10 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 18:45:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 18:46:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:46:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:46:42 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 18:46:42 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 18:46:42 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 18:46:43 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 18:46:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 18:50:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:50:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 18:50:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 18:50:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 18:50:41 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 18:50:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9351e2bf09f4d9a6beab73bfd3f913106d30008c3ebde119c4b5820670de53e1`  
		Last Modified: Tue, 17 Jul 2018 11:46:37 GMT  
		Size: 45.2 MB (45198375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a2f7a92fcc5456e729fd76f4441a7091bff9890ce29bb7f7a60288da1a3a90`  
		Last Modified: Tue, 17 Jul 2018 14:02:17 GMT  
		Size: 13.2 MB (13211074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee0ec0be7c5fb5c543599d9871618f0899fbadfaaaa736c0e2f4e3990b14e5e`  
		Last Modified: Tue, 17 Jul 2018 14:02:11 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04480ae58cce7d93dc03bd0d4ef6c785d0779d04dba643ae849328662e6620e7`  
		Last Modified: Tue, 17 Jul 2018 14:04:22 GMT  
		Size: 22.1 MB (22118696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47de064c19b2b6b082fe68ccf0e9638a14683b997dead2f5f22ba8b1f5dd7ada`  
		Last Modified: Tue, 17 Jul 2018 14:04:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea8ff8d33c99b213cfc185d473375c6251417d94d75752fdb1e86500fccfca`  
		Last Modified: Tue, 17 Jul 2018 18:55:16 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30747444a1efa1fe92dd4a03c12872a558bf8214c5f6f87d8a3fe041c5e9fefc`  
		Last Modified: Tue, 17 Jul 2018 18:55:32 GMT  
		Size: 84.5 MB (84460999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b90c6a3f032d4980323e24c45eafd2feb11f0b4f3f266bb5052ec204bfa6f6`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 889.9 KB (889851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b8d5ac3b555ad3009a16ba09b0141596f42dc526c9b22441fe76b68977a660`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d77dcbef842e8f1a2957ea8b90c8957694d621d5de2ea0ae89049925013891`  
		Last Modified: Tue, 17 Jul 2018 18:55:16 GMT  
		Size: 2.5 MB (2456901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a836256e4c8beb3f384758ee1737d009d1ec6c88a541c486635a2fb297da5a00`  
		Last Modified: Tue, 17 Jul 2018 18:55:34 GMT  
		Size: 122.3 MB (122292155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb9d59ebf54cfa7f13581fef868f4eabaa6fe5c4880c73f231efc1f0cc020ea`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.6`

```console
$ docker pull redmine@sha256:d9e3686822334a33f1d31b433210e673ba983854699ef763662386fe4fbca624
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
$ docker pull redmine@sha256:21397d206058f6ed2683896a12c651f48d8723725a695c9a756369cdedc1a6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292205533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9362b93e8b98cbd03f8b006017c59f67d434bdfe5fd850547db53d39947ed641`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:57:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:57:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 08:48:11 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 08:53:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 08:53:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:53:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 08:53:28 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:05:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:06:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:06:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:06:22 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:06:23 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:06:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:11:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:11:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:11:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:11:46 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:11:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e24ec071bf71216552018724b1a1cfc553a4937369d371c78703d812fed01`  
		Last Modified: Tue, 17 Jul 2018 08:55:35 GMT  
		Size: 12.8 MB (12809075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2f60922ca6bd0b4f2c068c6418122691c34e9a7578d6d43aa7c71eed283ec0`  
		Last Modified: Tue, 17 Jul 2018 08:55:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042d84500d0cd0e0ddef623d717934e6768159907c350b39a69723fa1be8c7a7`  
		Last Modified: Sat, 21 Jul 2018 09:50:13 GMT  
		Size: 21.7 MB (21749270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e4ae4a41e47965e530a93cb3619fc4ab1a22b6fb886d228c3b29273d69e755`  
		Last Modified: Sat, 21 Jul 2018 09:50:07 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b3d2244d8145015a8cacda7170eefbc962e8ad783bd3ddd794e884e093a66f`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b824882880cf42f78eeff69b8c05327b06c2e6bce177468df8a8e27860077f`  
		Last Modified: Sat, 21 Jul 2018 11:22:36 GMT  
		Size: 84.6 MB (84639235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ec66a1439a369f2f879afd4a9104c21ca71bd42e357c863e908dc3b80a2b4a`  
		Last Modified: Sat, 21 Jul 2018 11:22:03 GMT  
		Size: 904.1 KB (904066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd241ccd4d2f6cfd86a0e6125253b57520dc6c5e74fff33361866573a4b24e4`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc78343d3ea0ad0a21dcb1444b8477739baab8f5e186f8fd796cf9954e691ff1`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e51839d716a6dc072898ca32b18bb0a685259863c759328ad95aeb39782452`  
		Last Modified: Sat, 21 Jul 2018 11:22:37 GMT  
		Size: 124.3 MB (124332890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b2a40e6e7a8e8e3b5c5fc28516dfcd79725a934f2c18ea208f3eed675549a`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm variant v5

```console
$ docker pull redmine@sha256:72a5668ce8fa39ddb3189da783e9a0bd46910ec4f463e1121f521ec56b93ae5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280660759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e4b47f883d0be83f9d326c2086e20a955214a5f9300c74b46e757ac2986b7d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:57:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 12:04:00 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 12:04:00 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 12:04:01 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 12:04:01 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 09:54:09 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 09:59:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 09:59:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 09:59:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 09:59:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 09:59:59 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 09:59:59 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:57:54 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:59:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:59:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:59:24 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:59:24 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:59:24 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:59:25 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:59:29 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 12:05:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 12:05:41 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 12:05:42 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 12:05:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 12:05:43 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 12:05:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840a27c8096d5a31fd99dba4a42aaa180bdea1438c1232ef8af082aa4627cb77`  
		Last Modified: Tue, 17 Jul 2018 12:28:26 GMT  
		Size: 11.4 MB (11373361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c797e66bbbab97431748428f617d087cac7fc2e3c86853579dee31441777df`  
		Last Modified: Tue, 17 Jul 2018 12:28:22 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf2eaf4c10baa8ffbb48518a6c7b516f7601a6bf90c827bd31731d84537ed23`  
		Last Modified: Sat, 21 Jul 2018 10:38:56 GMT  
		Size: 21.3 MB (21307802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f057096a91f01eb6d19fafec3e172a260090f33cf61313eef3704bba679a26`  
		Last Modified: Sat, 21 Jul 2018 10:38:49 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a39e570fc37e26308b40c65b41b4827dc448edc05984d94b4cc67392a2be62`  
		Last Modified: Sat, 21 Jul 2018 12:12:59 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdac12c57612629acc4af37002c75392c3c4e0fd3fcf7d7365a3ce9f252beba`  
		Last Modified: Sat, 21 Jul 2018 12:13:28 GMT  
		Size: 81.6 MB (81561298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40d82e3e3a99b3f2128fd650f2edf408d264dd1dde6fe0583b31df60977bd12`  
		Last Modified: Sat, 21 Jul 2018 12:12:58 GMT  
		Size: 893.4 KB (893358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d4dedfb3a1672de93f73141e637ab8618b16a289fea13f2177e3012f1031d`  
		Last Modified: Sat, 21 Jul 2018 12:12:57 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15861ecae240c5c1e3bffdd1a19c8a3392c116575a314d21e741f8fba1a6ba45`  
		Last Modified: Sat, 21 Jul 2018 12:12:59 GMT  
		Size: 2.5 MB (2457552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e45f752bcda6e6470cb7eb442ef135ed46d06479670ff66ebbcdb5ab521f75`  
		Last Modified: Sat, 21 Jul 2018 12:13:30 GMT  
		Size: 119.0 MB (119030235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566fbca6caa175cba66a23cfb9e1b8d1eff63262485ae144bdb8b541b1907e1a`  
		Last Modified: Sat, 21 Jul 2018 12:12:57 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ac6ecb5e70f92d06d6675fae64ba28a15d57d9f45755e391f68851f07f9b6231
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273391095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6c068184b27722a5206362e7a2fdb1ba87758a2cf60f0f861672d8b2918676`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:09:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:09:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:24:11 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:24:13 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 15:29:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 15:29:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 15:29:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 15:29:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:29:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 15:29:42 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 19:32:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 19:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:33:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:33:34 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 19:33:34 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 19:33:34 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 19:33:43 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 19:33:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 19:39:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:39:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 19:39:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 19:39:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 19:39:10 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 19:39:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18da1fa7944f6670730b7a16c0bcf8ae101bd1fc6fb9bf4a429b0443fb395f5c`  
		Last Modified: Tue, 17 Jul 2018 16:04:29 GMT  
		Size: 10.9 MB (10893534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3c5cb3d0bf20e4c2aa32aaf600c0f4140f2ac607c00c2c9d3e3bd9f1c54637`  
		Last Modified: Tue, 17 Jul 2018 16:04:25 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a86e5975f123f0e5c286817fd34ec3e36930173d42ddf30b44e2bf139bb99`  
		Last Modified: Tue, 17 Jul 2018 16:09:31 GMT  
		Size: 21.1 MB (21114570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c43de9fdb85f3958f818ec33aab434d63bb76f32feea78aa5523ab686115ed`  
		Last Modified: Tue, 17 Jul 2018 16:09:27 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e516dc88b9c064d6238e6c22f0dbfa2b4af7866d25bfcf851b6c53fe6674fb63`  
		Last Modified: Tue, 17 Jul 2018 19:45:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e1309a20fa40e7bc366eafefc96601e6798bbd63f56a5f8d28fc288297c03b`  
		Last Modified: Tue, 17 Jul 2018 19:46:16 GMT  
		Size: 78.4 MB (78367220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af111fb38ffffb243818465084709aba7e3a47905d97d9831bd5ce5037245a15`  
		Last Modified: Tue, 17 Jul 2018 19:45:49 GMT  
		Size: 876.7 KB (876663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabeca437fed7c834224b95792a6a8fc2fb3ed95e63a74e35c56610245fd6376`  
		Last Modified: Tue, 17 Jul 2018 19:45:48 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147b8ccca8bd85eac48e4194a6fda53774bd7eade69f00b6cd614f0e9fa5fe28`  
		Last Modified: Tue, 17 Jul 2018 19:45:49 GMT  
		Size: 2.5 MB (2457556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e2ea8f1cdd68f0365a30bde0ab512476375a2d797b5446ba845485f0241597`  
		Last Modified: Tue, 17 Jul 2018 19:46:32 GMT  
		Size: 117.6 MB (117616627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e997148ad798cb094a06e276f81eb55ca89654c479c4e6d4097c80aee698db6`  
		Last Modified: Tue, 17 Jul 2018 19:45:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:12e0cdce03fd58806a6cb4d3098a3b3915803f01c23e5b5a38c58517028ffed2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 MB (278706569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc29704910fc45607460f4451ee9a611a68850688699be55ad859800d1c17db1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 18:04:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:04:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 18:40:00 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 18:40:01 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 18:40:03 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 18:40:04 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 18:40:05 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 18:51:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 18:51:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:51:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:51:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:51:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 18:51:52 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 07:00:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 07:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 07:02:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:02:51 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 07:02:52 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 07:02:53 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 18 Jul 2018 07:02:54 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 18 Jul 2018 07:03:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 07:16:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:16:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 07:16:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 07:16:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 07:16:27 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 07:16:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa9443036385c99638507841f50d6bc6cba606b99aa41dc5ce967073beccba3`  
		Last Modified: Tue, 17 Jul 2018 19:14:23 GMT  
		Size: 11.6 MB (11617940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc36b55a654a01a6224bac76bcdab0a88125a41a37c3be9452324759a735fab0`  
		Last Modified: Tue, 17 Jul 2018 19:14:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad189e73b795a52085599988a5596290332c221f9f1f797131705a98333244`  
		Last Modified: Tue, 17 Jul 2018 19:23:41 GMT  
		Size: 21.5 MB (21513511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0dd563b5dcd06cfa182a87f960ef0220a3bbf32af26d60064b18b58682506`  
		Last Modified: Tue, 17 Jul 2018 19:23:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91845c1ae5082a406dcad97262f3cbc1047c384f8229137cc81e617ccebb7888`  
		Last Modified: Wed, 18 Jul 2018 07:37:36 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a248356192340a9df3c9e06861d105137bd9c48e3ef5a06e8ec5cb4aa6347410`  
		Last Modified: Wed, 18 Jul 2018 07:38:04 GMT  
		Size: 80.5 MB (80517155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969a5ef70ddf0b63626cc1be72d4a84d0a91c2cf6e0cd4eeb33b6af5fdaf71a5`  
		Last Modified: Wed, 18 Jul 2018 07:37:33 GMT  
		Size: 871.7 KB (871727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27aac5e213222f432b0ef87d3ae0c87384de578561b1d125db780dd2266cc4d`  
		Last Modified: Wed, 18 Jul 2018 07:37:32 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1f5fb5ad5e1f0c944d87f32d71e5f906e11bb742811a9a236bab9d7324ac19`  
		Last Modified: Wed, 18 Jul 2018 07:37:34 GMT  
		Size: 2.5 MB (2456916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65971d53114fd3a464389aad3751f54dabbf624195dde8622d6f39216903f8b3`  
		Last Modified: Wed, 18 Jul 2018 07:38:09 GMT  
		Size: 118.6 MB (118601717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43302e044c18b86c397bffccd847232f122e29b890ae8be0543649bb86cca30b`  
		Last Modified: Wed, 18 Jul 2018 07:37:33 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; 386

```console
$ docker pull redmine@sha256:eae5436ad4d2b34edbd6a67526bb172f2869b773dd722890ff771fb6b8254a9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 MB (296300130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254da9b7256f73c8ee5e1376985728dc950a046e83d45a35002e29613da565d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:55:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:55:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 16:09:58 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 16:09:58 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 16:15:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 16:15:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:15:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:15:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:15:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 16:15:03 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 22:52:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 22:53:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 22:54:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 22:54:11 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 22:54:11 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 22:54:12 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 22:54:12 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 22:54:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 23:01:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 23:01:34 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 23:01:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 23:01:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 23:01:36 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 23:01:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbf9f33b81c150f3e72881c9f4403277a540913f0e9bfda25967f9c53e3fd17`  
		Last Modified: Tue, 17 Jul 2018 16:53:06 GMT  
		Size: 16.3 MB (16252862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2284b349473d431f7cf55791c012c8dfc70e3fb1a4e0aff5060b475cd74ec0d2`  
		Last Modified: Tue, 17 Jul 2018 16:53:00 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b503ba41c8a21928778b1151f07813b3e4797e04c2aba7aba374c2683b8615`  
		Last Modified: Tue, 17 Jul 2018 16:58:57 GMT  
		Size: 21.3 MB (21346198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99f35b5e48e684d907d271adeeded92e261d62fb83c1efcff3a8f9dd8f642f3`  
		Last Modified: Tue, 17 Jul 2018 16:58:53 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11914d540dbd3792b64e1416ad1d5ea29b1ddefd14965141b1b689dfce069ee8`  
		Last Modified: Tue, 17 Jul 2018 23:09:16 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408424eae3130a634376c151a55769325adca7ee150fd3c903e47874391ce52d`  
		Last Modified: Tue, 17 Jul 2018 23:09:51 GMT  
		Size: 86.6 MB (86563997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f098eb400be6042ef4b1f0f882c2f1378107b6e430d3bce4fe4a0abfe650f6df`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 883.7 KB (883699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94119673becd9d6beae0bdb835bc12533c50b9b29af978c31b2476565bf7553d`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154679ee92970d88e9dbb14d77b40bbc48a96f1acdf8957b8045bff4751d3a9f`  
		Last Modified: Tue, 17 Jul 2018 23:09:15 GMT  
		Size: 2.5 MB (2456904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74583f6ff768a48384c64d1fadc978831a555d770a98cbccbfcbb3fd9014e5d`  
		Last Modified: Tue, 17 Jul 2018 23:09:52 GMT  
		Size: 122.8 MB (122754925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffd3805b00e13baaccff126d6c82e488ccd60844cb2d331c9915cbe70091991`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; ppc64le

```console
$ docker pull redmine@sha256:e478e7b592506cca954dd179a3b59da121c8373d12addb729a9636de8b95bbec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 MB (287805772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80d6777f9fca3c1579855a6f2482c93ef32112b7714af2ac08e48bee36756e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:15:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:15:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:34:43 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 15:34:47 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 15:34:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 15:34:52 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:34:52 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 15:47:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 15:47:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 15:47:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 15:47:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:47:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 15:47:50 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 00:23:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 00:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 00:27:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:27:10 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 00:27:12 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 00:27:14 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 18 Jul 2018 00:27:15 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 18 Jul 2018 00:27:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:37:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 00:37:32 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 00:37:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 00:37:38 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 00:37:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5de8615eaac6e618b0c56813011d232b254a3e9e7c6b6f2280c067f0562841`  
		Last Modified: Tue, 17 Jul 2018 16:03:30 GMT  
		Size: 12.2 MB (12204158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ef4de3e20e6f2fc1a012aa9c5a50e878e568108d7e669631a920726141aba3`  
		Last Modified: Tue, 17 Jul 2018 16:03:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776859006768edd38e19dbaf137c0a2dbd305080ff8856fd46e93639f003c06d`  
		Last Modified: Tue, 17 Jul 2018 16:05:14 GMT  
		Size: 22.0 MB (21981731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b3d798af838e99d709e3c7d0842b568b62cc84f2216c36eae5d88e8a47e091`  
		Last Modified: Tue, 17 Jul 2018 16:05:10 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b5a725651d519b119e80d96cf7c0eabd88baa852b0c74050d750185baa602d`  
		Last Modified: Wed, 18 Jul 2018 00:50:02 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d268d8fdde1498384ae845828df5f06d410b9688b91e208f353256142e92db`  
		Last Modified: Wed, 18 Jul 2018 00:50:27 GMT  
		Size: 83.8 MB (83839241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6da59dd9cd0f21c5af2227f9352d460eb7f795027c0cf2af8df55b6b0098c5d`  
		Last Modified: Wed, 18 Jul 2018 00:50:00 GMT  
		Size: 873.2 KB (873220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e972b2ac6100d308b6e2b6aa255b10ce65c68fb27d833b74ea502f345c7160e9`  
		Last Modified: Wed, 18 Jul 2018 00:49:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111d33d84d6d5f840b71091ff2d20c055812390e90b423efaa2cae0a0976fba4`  
		Last Modified: Wed, 18 Jul 2018 00:50:00 GMT  
		Size: 2.5 MB (2457546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5cf7c53e2b9ee4760ad52274e20ac247d98e5a1c5d918eab2201aa29aaca7f`  
		Last Modified: Wed, 18 Jul 2018 00:50:26 GMT  
		Size: 120.9 MB (120851716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7b69bc49e510cdc6ce63bb44c56b6b7eb927413553c3b8026fe8d80570fb47`  
		Last Modified: Wed, 18 Jul 2018 00:49:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.6` - linux; s390x

```console
$ docker pull redmine@sha256:43b0f5f6b3e22e70c2a2a7fbd9eeb382829d2f43420c3c9c00da089e1329bbc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290632083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f957ae0fb5b91dd8930b6071f6fa7b40c771cc1b0791c4d504330c1fea0c8db3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:17 GMT
ADD file:8359a87f8de229cd148a6a7f227042a80cb73366ce79cb1a866426a6a91103e7 in / 
# Tue, 17 Jul 2018 11:43:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:40:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:40:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 13:50:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 13:50:49 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 13:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 13:54:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 13:54:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 13:54:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 13:54:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 13:54:10 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 18:45:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 18:46:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:46:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:46:42 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 18:46:42 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 18:46:42 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 18:46:43 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 18:46:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 18:50:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:50:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 18:50:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 18:50:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 18:50:41 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 18:50:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9351e2bf09f4d9a6beab73bfd3f913106d30008c3ebde119c4b5820670de53e1`  
		Last Modified: Tue, 17 Jul 2018 11:46:37 GMT  
		Size: 45.2 MB (45198375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a2f7a92fcc5456e729fd76f4441a7091bff9890ce29bb7f7a60288da1a3a90`  
		Last Modified: Tue, 17 Jul 2018 14:02:17 GMT  
		Size: 13.2 MB (13211074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee0ec0be7c5fb5c543599d9871618f0899fbadfaaaa736c0e2f4e3990b14e5e`  
		Last Modified: Tue, 17 Jul 2018 14:02:11 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04480ae58cce7d93dc03bd0d4ef6c785d0779d04dba643ae849328662e6620e7`  
		Last Modified: Tue, 17 Jul 2018 14:04:22 GMT  
		Size: 22.1 MB (22118696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47de064c19b2b6b082fe68ccf0e9638a14683b997dead2f5f22ba8b1f5dd7ada`  
		Last Modified: Tue, 17 Jul 2018 14:04:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea8ff8d33c99b213cfc185d473375c6251417d94d75752fdb1e86500fccfca`  
		Last Modified: Tue, 17 Jul 2018 18:55:16 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30747444a1efa1fe92dd4a03c12872a558bf8214c5f6f87d8a3fe041c5e9fefc`  
		Last Modified: Tue, 17 Jul 2018 18:55:32 GMT  
		Size: 84.5 MB (84460999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b90c6a3f032d4980323e24c45eafd2feb11f0b4f3f266bb5052ec204bfa6f6`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 889.9 KB (889851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b8d5ac3b555ad3009a16ba09b0141596f42dc526c9b22441fe76b68977a660`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d77dcbef842e8f1a2957ea8b90c8957694d621d5de2ea0ae89049925013891`  
		Last Modified: Tue, 17 Jul 2018 18:55:16 GMT  
		Size: 2.5 MB (2456901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a836256e4c8beb3f384758ee1737d009d1ec6c88a541c486635a2fb297da5a00`  
		Last Modified: Tue, 17 Jul 2018 18:55:34 GMT  
		Size: 122.3 MB (122292155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb9d59ebf54cfa7f13581fef868f4eabaa6fe5c4880c73f231efc1f0cc020ea`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.6-passenger`

```console
$ docker pull redmine@sha256:51d7bd3d5084a0bec365da7b8748cd861425a88369a565f9024cc46bcd7af1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.6-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:5e70e3e25e9f4c88b84a702b003fafd33b9a40390bc2664ce8078eb1af3cf0aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315489963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c96707f5f456a28745d4fd4fc6a94610f8d080226294f54d1f20fda92a31ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:57:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:57:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 08:48:11 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 08:53:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 08:53:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:53:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 08:53:28 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:05:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:06:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:06:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:06:22 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:06:23 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:06:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:11:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:11:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:11:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:11:46 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:11:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 21 Jul 2018 11:12:23 GMT
ENV PASSENGER_VERSION=5.3.3
# Sat, 21 Jul 2018 11:12:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 11:12:54 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 21 Jul 2018 11:13:05 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e24ec071bf71216552018724b1a1cfc553a4937369d371c78703d812fed01`  
		Last Modified: Tue, 17 Jul 2018 08:55:35 GMT  
		Size: 12.8 MB (12809075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2f60922ca6bd0b4f2c068c6418122691c34e9a7578d6d43aa7c71eed283ec0`  
		Last Modified: Tue, 17 Jul 2018 08:55:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042d84500d0cd0e0ddef623d717934e6768159907c350b39a69723fa1be8c7a7`  
		Last Modified: Sat, 21 Jul 2018 09:50:13 GMT  
		Size: 21.7 MB (21749270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e4ae4a41e47965e530a93cb3619fc4ab1a22b6fb886d228c3b29273d69e755`  
		Last Modified: Sat, 21 Jul 2018 09:50:07 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b3d2244d8145015a8cacda7170eefbc962e8ad783bd3ddd794e884e093a66f`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b824882880cf42f78eeff69b8c05327b06c2e6bce177468df8a8e27860077f`  
		Last Modified: Sat, 21 Jul 2018 11:22:36 GMT  
		Size: 84.6 MB (84639235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ec66a1439a369f2f879afd4a9104c21ca71bd42e357c863e908dc3b80a2b4a`  
		Last Modified: Sat, 21 Jul 2018 11:22:03 GMT  
		Size: 904.1 KB (904066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd241ccd4d2f6cfd86a0e6125253b57520dc6c5e74fff33361866573a4b24e4`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc78343d3ea0ad0a21dcb1444b8477739baab8f5e186f8fd796cf9954e691ff1`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e51839d716a6dc072898ca32b18bb0a685259863c759328ad95aeb39782452`  
		Last Modified: Sat, 21 Jul 2018 11:22:37 GMT  
		Size: 124.3 MB (124332890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b2a40e6e7a8e8e3b5c5fc28516dfcd79725a934f2c18ea208f3eed675549a`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8471899b1aff583da1d3267f55103a5cccecba0f77a69b4ef4a4055970ec5e`  
		Last Modified: Sat, 21 Jul 2018 11:24:45 GMT  
		Size: 18.8 MB (18799686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d340ecc02bb7cf50db19fb5c64dafef517cdc994057174f900811f9bbdc0edc`  
		Last Modified: Sat, 21 Jul 2018 11:24:41 GMT  
		Size: 4.5 MB (4484744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:51d7bd3d5084a0bec365da7b8748cd861425a88369a565f9024cc46bcd7af1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:5e70e3e25e9f4c88b84a702b003fafd33b9a40390bc2664ce8078eb1af3cf0aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315489963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c96707f5f456a28745d4fd4fc6a94610f8d080226294f54d1f20fda92a31ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:57:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:57:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 08:48:11 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 08:53:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 08:53:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:53:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 08:53:28 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:05:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:06:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:06:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:06:22 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:06:23 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:06:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:11:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:11:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:11:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:11:46 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:11:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 21 Jul 2018 11:12:23 GMT
ENV PASSENGER_VERSION=5.3.3
# Sat, 21 Jul 2018 11:12:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 11:12:54 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 21 Jul 2018 11:13:05 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e24ec071bf71216552018724b1a1cfc553a4937369d371c78703d812fed01`  
		Last Modified: Tue, 17 Jul 2018 08:55:35 GMT  
		Size: 12.8 MB (12809075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2f60922ca6bd0b4f2c068c6418122691c34e9a7578d6d43aa7c71eed283ec0`  
		Last Modified: Tue, 17 Jul 2018 08:55:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042d84500d0cd0e0ddef623d717934e6768159907c350b39a69723fa1be8c7a7`  
		Last Modified: Sat, 21 Jul 2018 09:50:13 GMT  
		Size: 21.7 MB (21749270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e4ae4a41e47965e530a93cb3619fc4ab1a22b6fb886d228c3b29273d69e755`  
		Last Modified: Sat, 21 Jul 2018 09:50:07 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b3d2244d8145015a8cacda7170eefbc962e8ad783bd3ddd794e884e093a66f`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b824882880cf42f78eeff69b8c05327b06c2e6bce177468df8a8e27860077f`  
		Last Modified: Sat, 21 Jul 2018 11:22:36 GMT  
		Size: 84.6 MB (84639235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ec66a1439a369f2f879afd4a9104c21ca71bd42e357c863e908dc3b80a2b4a`  
		Last Modified: Sat, 21 Jul 2018 11:22:03 GMT  
		Size: 904.1 KB (904066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd241ccd4d2f6cfd86a0e6125253b57520dc6c5e74fff33361866573a4b24e4`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc78343d3ea0ad0a21dcb1444b8477739baab8f5e186f8fd796cf9954e691ff1`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e51839d716a6dc072898ca32b18bb0a685259863c759328ad95aeb39782452`  
		Last Modified: Sat, 21 Jul 2018 11:22:37 GMT  
		Size: 124.3 MB (124332890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b2a40e6e7a8e8e3b5c5fc28516dfcd79725a934f2c18ea208f3eed675549a`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8471899b1aff583da1d3267f55103a5cccecba0f77a69b4ef4a4055970ec5e`  
		Last Modified: Sat, 21 Jul 2018 11:24:45 GMT  
		Size: 18.8 MB (18799686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d340ecc02bb7cf50db19fb5c64dafef517cdc994057174f900811f9bbdc0edc`  
		Last Modified: Sat, 21 Jul 2018 11:24:41 GMT  
		Size: 4.5 MB (4484744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:51d7bd3d5084a0bec365da7b8748cd861425a88369a565f9024cc46bcd7af1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:5e70e3e25e9f4c88b84a702b003fafd33b9a40390bc2664ce8078eb1af3cf0aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315489963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c96707f5f456a28745d4fd4fc6a94610f8d080226294f54d1f20fda92a31ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:57:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:57:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 08:48:11 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 08:53:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 08:53:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:53:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 08:53:28 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:05:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:06:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:06:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:06:22 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:06:23 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:06:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:11:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:11:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:11:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:11:46 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:11:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 21 Jul 2018 11:12:23 GMT
ENV PASSENGER_VERSION=5.3.3
# Sat, 21 Jul 2018 11:12:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 11:12:54 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 21 Jul 2018 11:13:05 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e24ec071bf71216552018724b1a1cfc553a4937369d371c78703d812fed01`  
		Last Modified: Tue, 17 Jul 2018 08:55:35 GMT  
		Size: 12.8 MB (12809075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2f60922ca6bd0b4f2c068c6418122691c34e9a7578d6d43aa7c71eed283ec0`  
		Last Modified: Tue, 17 Jul 2018 08:55:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042d84500d0cd0e0ddef623d717934e6768159907c350b39a69723fa1be8c7a7`  
		Last Modified: Sat, 21 Jul 2018 09:50:13 GMT  
		Size: 21.7 MB (21749270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e4ae4a41e47965e530a93cb3619fc4ab1a22b6fb886d228c3b29273d69e755`  
		Last Modified: Sat, 21 Jul 2018 09:50:07 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b3d2244d8145015a8cacda7170eefbc962e8ad783bd3ddd794e884e093a66f`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b824882880cf42f78eeff69b8c05327b06c2e6bce177468df8a8e27860077f`  
		Last Modified: Sat, 21 Jul 2018 11:22:36 GMT  
		Size: 84.6 MB (84639235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ec66a1439a369f2f879afd4a9104c21ca71bd42e357c863e908dc3b80a2b4a`  
		Last Modified: Sat, 21 Jul 2018 11:22:03 GMT  
		Size: 904.1 KB (904066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd241ccd4d2f6cfd86a0e6125253b57520dc6c5e74fff33361866573a4b24e4`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc78343d3ea0ad0a21dcb1444b8477739baab8f5e186f8fd796cf9954e691ff1`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e51839d716a6dc072898ca32b18bb0a685259863c759328ad95aeb39782452`  
		Last Modified: Sat, 21 Jul 2018 11:22:37 GMT  
		Size: 124.3 MB (124332890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b2a40e6e7a8e8e3b5c5fc28516dfcd79725a934f2c18ea208f3eed675549a`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8471899b1aff583da1d3267f55103a5cccecba0f77a69b4ef4a4055970ec5e`  
		Last Modified: Sat, 21 Jul 2018 11:24:45 GMT  
		Size: 18.8 MB (18799686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d340ecc02bb7cf50db19fb5c64dafef517cdc994057174f900811f9bbdc0edc`  
		Last Modified: Sat, 21 Jul 2018 11:24:41 GMT  
		Size: 4.5 MB (4484744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:4086a2f9f0b2a8a9d812fd11fa5c7994dfe61203c4159509f4da7067ad10eefa
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
$ docker pull redmine@sha256:21397d206058f6ed2683896a12c651f48d8723725a695c9a756369cdedc1a6e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292205533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9362b93e8b98cbd03f8b006017c59f67d434bdfe5fd850547db53d39947ed641`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:57:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:57:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 08:48:11 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 08:53:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 08:53:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:53:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 08:53:28 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:05:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:06:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:06:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:06:22 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:06:23 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:06:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:11:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:11:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:11:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:11:46 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:11:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e24ec071bf71216552018724b1a1cfc553a4937369d371c78703d812fed01`  
		Last Modified: Tue, 17 Jul 2018 08:55:35 GMT  
		Size: 12.8 MB (12809075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2f60922ca6bd0b4f2c068c6418122691c34e9a7578d6d43aa7c71eed283ec0`  
		Last Modified: Tue, 17 Jul 2018 08:55:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042d84500d0cd0e0ddef623d717934e6768159907c350b39a69723fa1be8c7a7`  
		Last Modified: Sat, 21 Jul 2018 09:50:13 GMT  
		Size: 21.7 MB (21749270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e4ae4a41e47965e530a93cb3619fc4ab1a22b6fb886d228c3b29273d69e755`  
		Last Modified: Sat, 21 Jul 2018 09:50:07 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b3d2244d8145015a8cacda7170eefbc962e8ad783bd3ddd794e884e093a66f`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b824882880cf42f78eeff69b8c05327b06c2e6bce177468df8a8e27860077f`  
		Last Modified: Sat, 21 Jul 2018 11:22:36 GMT  
		Size: 84.6 MB (84639235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ec66a1439a369f2f879afd4a9104c21ca71bd42e357c863e908dc3b80a2b4a`  
		Last Modified: Sat, 21 Jul 2018 11:22:03 GMT  
		Size: 904.1 KB (904066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd241ccd4d2f6cfd86a0e6125253b57520dc6c5e74fff33361866573a4b24e4`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc78343d3ea0ad0a21dcb1444b8477739baab8f5e186f8fd796cf9954e691ff1`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e51839d716a6dc072898ca32b18bb0a685259863c759328ad95aeb39782452`  
		Last Modified: Sat, 21 Jul 2018 11:22:37 GMT  
		Size: 124.3 MB (124332890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b2a40e6e7a8e8e3b5c5fc28516dfcd79725a934f2c18ea208f3eed675549a`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:f86925679d2fb1efa34d5e199c43d145134a699d849394d6c79a0c7a2250295a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280650660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42859083e096bdb9d4c4a2d79f47d611ba6608fc5e765e6a71b9f201c839dce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:57:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:57:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 12:04:00 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 12:04:00 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 12:04:01 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 12:04:01 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 12:04:01 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 12:09:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 12:09:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 12:09:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 12:09:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 12:09:50 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 12:09:50 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 15:14:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 15:15:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:15:40 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 15:15:40 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 15:15:40 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 15:15:40 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 15:15:41 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 15:15:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 15:21:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 15:21:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 15:21:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 15:21:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 15:21:56 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 15:21:57 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840a27c8096d5a31fd99dba4a42aaa180bdea1438c1232ef8af082aa4627cb77`  
		Last Modified: Tue, 17 Jul 2018 12:28:26 GMT  
		Size: 11.4 MB (11373361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c797e66bbbab97431748428f617d087cac7fc2e3c86853579dee31441777df`  
		Last Modified: Tue, 17 Jul 2018 12:28:22 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5f4cf94730650f2236ce79fddabf147ecfb1b71cbbe2a4359445d7e0457f78`  
		Last Modified: Tue, 17 Jul 2018 12:30:39 GMT  
		Size: 21.3 MB (21305304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9957528035665e98507ce5c16ca8b85f47debaeff48aaf3f7b0c85eb5e91ba`  
		Last Modified: Tue, 17 Jul 2018 12:30:33 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d05fd4da1fc277c0d621d63029e9be9b458b104203da4de55bce655e8b669ae`  
		Last Modified: Tue, 17 Jul 2018 15:29:17 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5057963f78c2dce462104db1608266b72f96764f4ea33b1daf41dda6d3db3403`  
		Last Modified: Tue, 17 Jul 2018 15:29:53 GMT  
		Size: 81.6 MB (81561693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5764a920c65d3e629045c8c0974fefd1ab1f43d14d79f34e8e3e3dc061d730`  
		Last Modified: Tue, 17 Jul 2018 15:29:17 GMT  
		Size: 893.3 KB (893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa8f9dfd1bb0cec1bb2bf9c9bb458d450c1eabf8e542850422a7b4decd023ea`  
		Last Modified: Tue, 17 Jul 2018 15:29:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ecc57769bb44aa54596517baa786710b0cf9ebfe874a973130b18616b3be0a`  
		Last Modified: Tue, 17 Jul 2018 15:29:17 GMT  
		Size: 2.5 MB (2457549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87450d808a868e71f6a183a407088978991f2a202014ac8607e3ade9475adaf3`  
		Last Modified: Tue, 17 Jul 2018 15:29:46 GMT  
		Size: 119.0 MB (119022256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f5af420a5a200b728bc1175d235d5302cc203307e5e3fefe3eda06d30a3f5c`  
		Last Modified: Tue, 17 Jul 2018 15:29:16 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:ac6ecb5e70f92d06d6675fae64ba28a15d57d9f45755e391f68851f07f9b6231
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273391095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6c068184b27722a5206362e7a2fdb1ba87758a2cf60f0f861672d8b2918676`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:09:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:09:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:24:11 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 15:24:12 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:24:13 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 15:29:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 15:29:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 15:29:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 15:29:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:29:42 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 15:29:42 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 19:32:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 19:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:33:33 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:33:34 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 19:33:34 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 19:33:34 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 19:33:43 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 19:33:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 19:39:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 19:39:08 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 19:39:09 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 19:39:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 19:39:10 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 19:39:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18da1fa7944f6670730b7a16c0bcf8ae101bd1fc6fb9bf4a429b0443fb395f5c`  
		Last Modified: Tue, 17 Jul 2018 16:04:29 GMT  
		Size: 10.9 MB (10893534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3c5cb3d0bf20e4c2aa32aaf600c0f4140f2ac607c00c2c9d3e3bd9f1c54637`  
		Last Modified: Tue, 17 Jul 2018 16:04:25 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a86e5975f123f0e5c286817fd34ec3e36930173d42ddf30b44e2bf139bb99`  
		Last Modified: Tue, 17 Jul 2018 16:09:31 GMT  
		Size: 21.1 MB (21114570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c43de9fdb85f3958f818ec33aab434d63bb76f32feea78aa5523ab686115ed`  
		Last Modified: Tue, 17 Jul 2018 16:09:27 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e516dc88b9c064d6238e6c22f0dbfa2b4af7866d25bfcf851b6c53fe6674fb63`  
		Last Modified: Tue, 17 Jul 2018 19:45:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e1309a20fa40e7bc366eafefc96601e6798bbd63f56a5f8d28fc288297c03b`  
		Last Modified: Tue, 17 Jul 2018 19:46:16 GMT  
		Size: 78.4 MB (78367220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af111fb38ffffb243818465084709aba7e3a47905d97d9831bd5ce5037245a15`  
		Last Modified: Tue, 17 Jul 2018 19:45:49 GMT  
		Size: 876.7 KB (876663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabeca437fed7c834224b95792a6a8fc2fb3ed95e63a74e35c56610245fd6376`  
		Last Modified: Tue, 17 Jul 2018 19:45:48 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147b8ccca8bd85eac48e4194a6fda53774bd7eade69f00b6cd614f0e9fa5fe28`  
		Last Modified: Tue, 17 Jul 2018 19:45:49 GMT  
		Size: 2.5 MB (2457556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e2ea8f1cdd68f0365a30bde0ab512476375a2d797b5446ba845485f0241597`  
		Last Modified: Tue, 17 Jul 2018 19:46:32 GMT  
		Size: 117.6 MB (117616627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e997148ad798cb094a06e276f81eb55ca89654c479c4e6d4097c80aee698db6`  
		Last Modified: Tue, 17 Jul 2018 19:45:48 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:12e0cdce03fd58806a6cb4d3098a3b3915803f01c23e5b5a38c58517028ffed2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.7 MB (278706569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc29704910fc45607460f4451ee9a611a68850688699be55ad859800d1c17db1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 18:04:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:04:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 18:40:00 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 18:40:01 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 18:40:03 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 18:40:04 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 18:40:05 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 18:51:47 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 18:51:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:51:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:51:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:51:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 18:51:52 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 07:00:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 07:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 07:02:50 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:02:51 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 07:02:52 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 07:02:53 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 18 Jul 2018 07:02:54 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 18 Jul 2018 07:03:00 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 07:16:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 07:16:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 07:16:25 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 07:16:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 07:16:27 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 07:16:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa9443036385c99638507841f50d6bc6cba606b99aa41dc5ce967073beccba3`  
		Last Modified: Tue, 17 Jul 2018 19:14:23 GMT  
		Size: 11.6 MB (11617940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc36b55a654a01a6224bac76bcdab0a88125a41a37c3be9452324759a735fab0`  
		Last Modified: Tue, 17 Jul 2018 19:14:18 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ad189e73b795a52085599988a5596290332c221f9f1f797131705a98333244`  
		Last Modified: Tue, 17 Jul 2018 19:23:41 GMT  
		Size: 21.5 MB (21513511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0dd563b5dcd06cfa182a87f960ef0220a3bbf32af26d60064b18b58682506`  
		Last Modified: Tue, 17 Jul 2018 19:23:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91845c1ae5082a406dcad97262f3cbc1047c384f8229137cc81e617ccebb7888`  
		Last Modified: Wed, 18 Jul 2018 07:37:36 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a248356192340a9df3c9e06861d105137bd9c48e3ef5a06e8ec5cb4aa6347410`  
		Last Modified: Wed, 18 Jul 2018 07:38:04 GMT  
		Size: 80.5 MB (80517155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969a5ef70ddf0b63626cc1be72d4a84d0a91c2cf6e0cd4eeb33b6af5fdaf71a5`  
		Last Modified: Wed, 18 Jul 2018 07:37:33 GMT  
		Size: 871.7 KB (871727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27aac5e213222f432b0ef87d3ae0c87384de578561b1d125db780dd2266cc4d`  
		Last Modified: Wed, 18 Jul 2018 07:37:32 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1f5fb5ad5e1f0c944d87f32d71e5f906e11bb742811a9a236bab9d7324ac19`  
		Last Modified: Wed, 18 Jul 2018 07:37:34 GMT  
		Size: 2.5 MB (2456916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65971d53114fd3a464389aad3751f54dabbf624195dde8622d6f39216903f8b3`  
		Last Modified: Wed, 18 Jul 2018 07:38:09 GMT  
		Size: 118.6 MB (118601717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43302e044c18b86c397bffccd847232f122e29b890ae8be0543649bb86cca30b`  
		Last Modified: Wed, 18 Jul 2018 07:37:33 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:eae5436ad4d2b34edbd6a67526bb172f2869b773dd722890ff771fb6b8254a9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 MB (296300130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:254da9b7256f73c8ee5e1376985728dc950a046e83d45a35002e29613da565d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:55:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:55:08 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 16:09:57 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 16:09:58 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 16:09:58 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 16:15:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 16:15:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:15:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:15:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:15:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 16:15:03 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 22:52:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 22:53:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 22:54:03 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 22:54:11 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 22:54:11 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 22:54:12 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 22:54:12 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 22:54:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 23:01:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 23:01:34 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 23:01:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 23:01:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 23:01:36 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 23:01:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbf9f33b81c150f3e72881c9f4403277a540913f0e9bfda25967f9c53e3fd17`  
		Last Modified: Tue, 17 Jul 2018 16:53:06 GMT  
		Size: 16.3 MB (16252862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2284b349473d431f7cf55791c012c8dfc70e3fb1a4e0aff5060b475cd74ec0d2`  
		Last Modified: Tue, 17 Jul 2018 16:53:00 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b503ba41c8a21928778b1151f07813b3e4797e04c2aba7aba374c2683b8615`  
		Last Modified: Tue, 17 Jul 2018 16:58:57 GMT  
		Size: 21.3 MB (21346198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99f35b5e48e684d907d271adeeded92e261d62fb83c1efcff3a8f9dd8f642f3`  
		Last Modified: Tue, 17 Jul 2018 16:58:53 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11914d540dbd3792b64e1416ad1d5ea29b1ddefd14965141b1b689dfce069ee8`  
		Last Modified: Tue, 17 Jul 2018 23:09:16 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408424eae3130a634376c151a55769325adca7ee150fd3c903e47874391ce52d`  
		Last Modified: Tue, 17 Jul 2018 23:09:51 GMT  
		Size: 86.6 MB (86563997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f098eb400be6042ef4b1f0f882c2f1378107b6e430d3bce4fe4a0abfe650f6df`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 883.7 KB (883699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94119673becd9d6beae0bdb835bc12533c50b9b29af978c31b2476565bf7553d`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154679ee92970d88e9dbb14d77b40bbc48a96f1acdf8957b8045bff4751d3a9f`  
		Last Modified: Tue, 17 Jul 2018 23:09:15 GMT  
		Size: 2.5 MB (2456904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74583f6ff768a48384c64d1fadc978831a555d770a98cbccbfcbb3fd9014e5d`  
		Last Modified: Tue, 17 Jul 2018 23:09:52 GMT  
		Size: 122.8 MB (122754925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffd3805b00e13baaccff126d6c82e488ccd60844cb2d331c9915cbe70091991`  
		Last Modified: Tue, 17 Jul 2018 23:09:13 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:e478e7b592506cca954dd179a3b59da121c8373d12addb729a9636de8b95bbec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.8 MB (287805772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80d6777f9fca3c1579855a6f2482c93ef32112b7714af2ac08e48bee36756e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:15:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:15:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 15:34:43 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 15:34:47 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 15:34:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 15:34:52 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 15:34:52 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 15:47:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 15:47:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 15:47:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 15:47:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:47:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 15:47:50 GMT
CMD ["irb"]
# Wed, 18 Jul 2018 00:23:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 18 Jul 2018 00:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 00:27:09 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:27:10 GMT
ENV RAILS_ENV=production
# Wed, 18 Jul 2018 00:27:12 GMT
WORKDIR /usr/src/redmine
# Wed, 18 Jul 2018 00:27:14 GMT
ENV REDMINE_VERSION=3.4.6
# Wed, 18 Jul 2018 00:27:15 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Wed, 18 Jul 2018 00:27:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 18 Jul 2018 00:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 18 Jul 2018 00:37:31 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 18 Jul 2018 00:37:32 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 18 Jul 2018 00:37:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jul 2018 00:37:38 GMT
EXPOSE 3000/tcp
# Wed, 18 Jul 2018 00:37:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5de8615eaac6e618b0c56813011d232b254a3e9e7c6b6f2280c067f0562841`  
		Last Modified: Tue, 17 Jul 2018 16:03:30 GMT  
		Size: 12.2 MB (12204158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ef4de3e20e6f2fc1a012aa9c5a50e878e568108d7e669631a920726141aba3`  
		Last Modified: Tue, 17 Jul 2018 16:03:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776859006768edd38e19dbaf137c0a2dbd305080ff8856fd46e93639f003c06d`  
		Last Modified: Tue, 17 Jul 2018 16:05:14 GMT  
		Size: 22.0 MB (21981731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b3d798af838e99d709e3c7d0842b568b62cc84f2216c36eae5d88e8a47e091`  
		Last Modified: Tue, 17 Jul 2018 16:05:10 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b5a725651d519b119e80d96cf7c0eabd88baa852b0c74050d750185baa602d`  
		Last Modified: Wed, 18 Jul 2018 00:50:02 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d268d8fdde1498384ae845828df5f06d410b9688b91e208f353256142e92db`  
		Last Modified: Wed, 18 Jul 2018 00:50:27 GMT  
		Size: 83.8 MB (83839241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6da59dd9cd0f21c5af2227f9352d460eb7f795027c0cf2af8df55b6b0098c5d`  
		Last Modified: Wed, 18 Jul 2018 00:50:00 GMT  
		Size: 873.2 KB (873220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e972b2ac6100d308b6e2b6aa255b10ce65c68fb27d833b74ea502f345c7160e9`  
		Last Modified: Wed, 18 Jul 2018 00:49:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111d33d84d6d5f840b71091ff2d20c055812390e90b423efaa2cae0a0976fba4`  
		Last Modified: Wed, 18 Jul 2018 00:50:00 GMT  
		Size: 2.5 MB (2457546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5cf7c53e2b9ee4760ad52274e20ac247d98e5a1c5d918eab2201aa29aaca7f`  
		Last Modified: Wed, 18 Jul 2018 00:50:26 GMT  
		Size: 120.9 MB (120851716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7b69bc49e510cdc6ce63bb44c56b6b7eb927413553c3b8026fe8d80570fb47`  
		Last Modified: Wed, 18 Jul 2018 00:49:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:43b0f5f6b3e22e70c2a2a7fbd9eeb382829d2f43420c3c9c00da089e1329bbc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290632083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f957ae0fb5b91dd8930b6071f6fa7b40c771cc1b0791c4d504330c1fea0c8db3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:17 GMT
ADD file:8359a87f8de229cd148a6a7f227042a80cb73366ce79cb1a866426a6a91103e7 in / 
# Tue, 17 Jul 2018 11:43:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:40:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:40:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 13:50:48 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 13:50:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 17 Jul 2018 13:50:49 GMT
ENV BUNDLER_VERSION=1.16.2
# Tue, 17 Jul 2018 13:54:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 17 Jul 2018 13:54:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 13:54:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 13:54:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 13:54:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 17 Jul 2018 13:54:10 GMT
CMD ["irb"]
# Tue, 17 Jul 2018 18:45:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 17 Jul 2018 18:46:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:46:42 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:46:42 GMT
ENV RAILS_ENV=production
# Tue, 17 Jul 2018 18:46:42 GMT
WORKDIR /usr/src/redmine
# Tue, 17 Jul 2018 18:46:42 GMT
ENV REDMINE_VERSION=3.4.6
# Tue, 17 Jul 2018 18:46:43 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Tue, 17 Jul 2018 18:46:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 17 Jul 2018 18:50:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Tue, 17 Jul 2018 18:50:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 17 Jul 2018 18:50:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 17 Jul 2018 18:50:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 18:50:41 GMT
EXPOSE 3000/tcp
# Tue, 17 Jul 2018 18:50:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9351e2bf09f4d9a6beab73bfd3f913106d30008c3ebde119c4b5820670de53e1`  
		Last Modified: Tue, 17 Jul 2018 11:46:37 GMT  
		Size: 45.2 MB (45198375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a2f7a92fcc5456e729fd76f4441a7091bff9890ce29bb7f7a60288da1a3a90`  
		Last Modified: Tue, 17 Jul 2018 14:02:17 GMT  
		Size: 13.2 MB (13211074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee0ec0be7c5fb5c543599d9871618f0899fbadfaaaa736c0e2f4e3990b14e5e`  
		Last Modified: Tue, 17 Jul 2018 14:02:11 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04480ae58cce7d93dc03bd0d4ef6c785d0779d04dba643ae849328662e6620e7`  
		Last Modified: Tue, 17 Jul 2018 14:04:22 GMT  
		Size: 22.1 MB (22118696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47de064c19b2b6b082fe68ccf0e9638a14683b997dead2f5f22ba8b1f5dd7ada`  
		Last Modified: Tue, 17 Jul 2018 14:04:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea8ff8d33c99b213cfc185d473375c6251417d94d75752fdb1e86500fccfca`  
		Last Modified: Tue, 17 Jul 2018 18:55:16 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30747444a1efa1fe92dd4a03c12872a558bf8214c5f6f87d8a3fe041c5e9fefc`  
		Last Modified: Tue, 17 Jul 2018 18:55:32 GMT  
		Size: 84.5 MB (84460999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b90c6a3f032d4980323e24c45eafd2feb11f0b4f3f266bb5052ec204bfa6f6`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 889.9 KB (889851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b8d5ac3b555ad3009a16ba09b0141596f42dc526c9b22441fe76b68977a660`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d77dcbef842e8f1a2957ea8b90c8957694d621d5de2ea0ae89049925013891`  
		Last Modified: Tue, 17 Jul 2018 18:55:16 GMT  
		Size: 2.5 MB (2456901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a836256e4c8beb3f384758ee1737d009d1ec6c88a541c486635a2fb297da5a00`  
		Last Modified: Tue, 17 Jul 2018 18:55:34 GMT  
		Size: 122.3 MB (122292155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb9d59ebf54cfa7f13581fef868f4eabaa6fe5c4880c73f231efc1f0cc020ea`  
		Last Modified: Tue, 17 Jul 2018 18:55:15 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:51d7bd3d5084a0bec365da7b8748cd861425a88369a565f9024cc46bcd7af1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:5e70e3e25e9f4c88b84a702b003fafd33b9a40390bc2664ce8078eb1af3cf0aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315489963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c96707f5f456a28745d4fd4fc6a94610f8d080226294f54d1f20fda92a31ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:57:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:57:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_VERSION=2.4.4
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1d0034071d675193ca769f64c91827e5f54cb3a7962316a41d5217c7bc6949f0
# Tue, 17 Jul 2018 08:12:49 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Sat, 21 Jul 2018 08:48:11 GMT
ENV BUNDLER_VERSION=1.16.3
# Sat, 21 Jul 2018 08:53:26 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 21 Jul 2018 08:53:26 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 21 Jul 2018 08:53:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:53:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 21 Jul 2018 08:53:28 GMT
CMD ["irb"]
# Sat, 21 Jul 2018 11:05:14 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 21 Jul 2018 11:06:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		imagemagick 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 11:06:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.10'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:06:22 GMT
ENV RAILS_ENV=production
# Sat, 21 Jul 2018 11:06:23 GMT
WORKDIR /usr/src/redmine
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_VERSION=3.4.6
# Sat, 21 Jul 2018 11:06:23 GMT
ENV REDMINE_DOWNLOAD_MD5=5f4993446ecf25782f469763c0d32ea1
# Sat, 21 Jul 2018 11:06:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 21 Jul 2018 11:11:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	bundle config build.tiny_tds --enable-system-freetds; 		bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 21 Jul 2018 11:11:34 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 21 Jul 2018 11:11:35 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Sat, 21 Jul 2018 11:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 11:11:46 GMT
EXPOSE 3000/tcp
# Sat, 21 Jul 2018 11:11:47 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 21 Jul 2018 11:12:23 GMT
ENV PASSENGER_VERSION=5.3.3
# Sat, 21 Jul 2018 11:12:40 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 21 Jul 2018 11:12:54 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 21 Jul 2018 11:13:05 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e24ec071bf71216552018724b1a1cfc553a4937369d371c78703d812fed01`  
		Last Modified: Tue, 17 Jul 2018 08:55:35 GMT  
		Size: 12.8 MB (12809075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2f60922ca6bd0b4f2c068c6418122691c34e9a7578d6d43aa7c71eed283ec0`  
		Last Modified: Tue, 17 Jul 2018 08:55:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042d84500d0cd0e0ddef623d717934e6768159907c350b39a69723fa1be8c7a7`  
		Last Modified: Sat, 21 Jul 2018 09:50:13 GMT  
		Size: 21.7 MB (21749270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e4ae4a41e47965e530a93cb3619fc4ab1a22b6fb886d228c3b29273d69e755`  
		Last Modified: Sat, 21 Jul 2018 09:50:07 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b3d2244d8145015a8cacda7170eefbc962e8ad783bd3ddd794e884e093a66f`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b824882880cf42f78eeff69b8c05327b06c2e6bce177468df8a8e27860077f`  
		Last Modified: Sat, 21 Jul 2018 11:22:36 GMT  
		Size: 84.6 MB (84639235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ec66a1439a369f2f879afd4a9104c21ca71bd42e357c863e908dc3b80a2b4a`  
		Last Modified: Sat, 21 Jul 2018 11:22:03 GMT  
		Size: 904.1 KB (904066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd241ccd4d2f6cfd86a0e6125253b57520dc6c5e74fff33361866573a4b24e4`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc78343d3ea0ad0a21dcb1444b8477739baab8f5e186f8fd796cf9954e691ff1`  
		Last Modified: Sat, 21 Jul 2018 11:22:04 GMT  
		Size: 2.5 MB (2456919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e51839d716a6dc072898ca32b18bb0a685259863c759328ad95aeb39782452`  
		Last Modified: Sat, 21 Jul 2018 11:22:37 GMT  
		Size: 124.3 MB (124332890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398b2a40e6e7a8e8e3b5c5fc28516dfcd79725a934f2c18ea208f3eed675549a`  
		Last Modified: Sat, 21 Jul 2018 11:22:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8471899b1aff583da1d3267f55103a5cccecba0f77a69b4ef4a4055970ec5e`  
		Last Modified: Sat, 21 Jul 2018 11:24:45 GMT  
		Size: 18.8 MB (18799686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d340ecc02bb7cf50db19fb5c64dafef517cdc994057174f900811f9bbdc0edc`  
		Last Modified: Sat, 21 Jul 2018 11:24:41 GMT  
		Size: 4.5 MB (4484744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
