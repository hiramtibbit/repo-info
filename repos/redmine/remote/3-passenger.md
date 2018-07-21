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
