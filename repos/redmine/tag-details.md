<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.10`](#redmine3410)
-	[`redmine:3.4.10-passenger`](#redmine3410-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:4`](#redmine4)
-	[`redmine:4.0`](#redmine40)
-	[`redmine:4.0.3`](#redmine403)
-	[`redmine:4.0.3-passenger`](#redmine403-passenger)
-	[`redmine:4.0-passenger`](#redmine40-passenger)
-	[`redmine:4-passenger`](#redmine4-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:a2fa656903110506925bc50c3f59e4dc91af1427950aad8cb3f0cce7d52f3fcb
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
$ docker pull redmine@sha256:78dfb4e4c01eb4f84c7725f0b8dedb68bd56969998a256d21a8a7a620785c344
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233275534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2111abd09d29257ca7c94f4949bc760f07bbbd91dacf901e86b0fc2f28935e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_MAJOR=2.4
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_VERSION=2.4.6
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Wed, 08 May 2019 01:44:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:44:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:44:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:44:03 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:35:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:36:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:36:35 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:36:36 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:36:36 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:36:37 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_VERSION=3.4.10
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Wed, 08 May 2019 08:36:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:42:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:42:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:42:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:42:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:42:24 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:42:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8aaa644d8aa28de78acf1c76fec776b26319b3e3935aa6022271a65b1c3a878`  
		Last Modified: Wed, 08 May 2019 02:00:10 GMT  
		Size: 20.7 MB (20740406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef726528941ce73e230e2058984b0f8fccef1c9673971ab99169264b49ae67dc`  
		Last Modified: Wed, 08 May 2019 02:00:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08f9a4be19992400887425085dd466f469328574f43e4a78782c16867ee024`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2575fbbb536f11be39f6cd6e1e3b9138aaa780ee3f5ca820494bb406e54ffd`  
		Last Modified: Wed, 08 May 2019 08:44:42 GMT  
		Size: 71.9 MB (71897885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a795aed8975f9122851c377b868c35bb22eda4cb134d09775c8bfd2940947759`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.3 MB (1303181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57911335cf52308645c819ed7da7e87f435a16781af0d6c9ec4ffba785dfab75`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc658fd14848fd1aee4498be10a8e348af588384b8f39f7f11520a351b5f7aa`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918953e727b24f7dc8d92e5a9d0387fade444e2446743a95b72cbf1aca282f0`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 2.5 MB (2461298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e9f6cb914c9d9337672632b2c78ffec5f838f295b209fbfae2c40bb8aa7f82`  
		Last Modified: Wed, 08 May 2019 08:44:44 GMT  
		Size: 103.2 MB (103206704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69459b11827231899515bdc4ff315f5dd21466d5c650a44706f9beea6971648b`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c3a5badbc3de8f268e5704a04e2e512902bc624443afa616ab73f7ada9f2ac33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221545280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375fc8dce30e4626cd05f8d023232595a028d09f81deef7bc9b38cd873fe7d59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:00:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:01:02 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 12:17:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 08 May 2019 12:17:26 GMT
ENV RUBY_VERSION=2.4.6
# Wed, 08 May 2019 12:17:26 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Wed, 08 May 2019 12:17:27 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Wed, 08 May 2019 12:24:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 12:24:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 12:24:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 12:24:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:24:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 12:24:16 GMT
CMD ["irb"]
# Wed, 08 May 2019 17:18:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 17:19:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:20:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:20:04 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 17:20:05 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 17:20:05 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 17:20:07 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 17:20:07 GMT
ENV REDMINE_VERSION=3.4.10
# Wed, 08 May 2019 17:20:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Wed, 08 May 2019 17:20:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 17:26:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:26:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 17:26:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 17:26:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 17:26:24 GMT
EXPOSE 3000
# Wed, 08 May 2019 17:26:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f94a64a34ca9d2b6b24bb8989e217cf2e7f790f2165d28579bc4fe45d90a8`  
		Last Modified: Wed, 08 May 2019 12:41:38 GMT  
		Size: 9.6 MB (9602563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9eecfb061ad8148013649b45d9cbe2f6235d8d5da8ac1a9640d73d96acd77c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811f06c7d51937bcbb22526b9c4d05032bf85c0256458e79a548b60f5faf8ae1`  
		Last Modified: Wed, 08 May 2019 12:42:40 GMT  
		Size: 20.3 MB (20317229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d891f829b6cf27e2ab11dbeb39d3a705c29be0911d9b1ae4a74a9c5651b6ee`  
		Last Modified: Wed, 08 May 2019 12:42:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e234fe16043c799b3ec822ebbd908d9079199e4530ff05bac70502a87523856d`  
		Last Modified: Wed, 08 May 2019 17:27:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dddfc3061719443eb1fad1924a39e3d2b7b139409448701a0b990011b29e27`  
		Last Modified: Wed, 08 May 2019 17:27:42 GMT  
		Size: 68.9 MB (68919125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd858609caa8e810782235d6889e6ff9c9ae47ca18266b1f747359ac1015ea`  
		Last Modified: Wed, 08 May 2019 17:27:19 GMT  
		Size: 1.3 MB (1261792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3651bae53d8c9eb8a7cee73979ca6bdf04e84869e5f4843993eefc1727f84689`  
		Last Modified: Wed, 08 May 2019 17:27:18 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f797692734579d257722a7543b3e416ae0c71398a5d88fcf972d629511f54fe`  
		Last Modified: Wed, 08 May 2019 17:27:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04282d0292c9d0ae6ef75efd587ef3af055b918fb769dbd768cfd88eeac8a904`  
		Last Modified: Wed, 08 May 2019 17:27:19 GMT  
		Size: 2.5 MB (2461816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa2260e50f5a9aa6f131f90a0160c9ec0c618a79f2c7046f672c12a24032903`  
		Last Modified: Wed, 08 May 2019 17:27:44 GMT  
		Size: 97.8 MB (97822482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5355f8aa1b8dcf163563ac79bc2bb08ef300b26a1e5712f7cb42d06bda6d684`  
		Last Modified: Wed, 08 May 2019 17:27:17 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:5b9a50fabd3baaaf829748328f38c2443d3cb9053f069d1b947d9544d3b71d94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214311578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beaaf98603b23ee6ce16d1cb7dc0c078adce3cc745c864d3c08c8b904832589a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:02:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:02:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:18:14 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 12:10:18 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 12:10:19 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 12:10:20 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 12:16:06 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 12:16:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 12:16:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 12:16:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 12:16:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 12:16:11 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 12:52:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 12:53:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 12:53:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:53:44 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 12:53:44 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 12:53:45 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 12:53:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 12:53:46 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 12:53:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 12:53:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 12:59:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:59:09 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 12:59:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 12:59:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 12:59:10 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 12:59:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c49cc9bf813783c8adad9a8112b31eb2329d6e61f1f236daa69ead9b7c5ae3`  
		Last Modified: Wed, 27 Mar 2019 15:53:45 GMT  
		Size: 9.1 MB (9079104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819e11271eca83204620d6fb3eeb33dd25ff007c2b251045f34cc378acf4f0cd`  
		Last Modified: Wed, 27 Mar 2019 15:53:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b93c31a463d4c55d607d0ce1ba150e50a9069febb6cefbdd39b5fd80a6590`  
		Last Modified: Thu, 04 Apr 2019 12:36:26 GMT  
		Size: 20.1 MB (20146543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f42aacb6495ff08059ef46d36c03c8fc551b00c079d08e52138754a2cd6e1b`  
		Last Modified: Thu, 04 Apr 2019 12:36:21 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373870d36a4308b3b234dc5ffef036f05814478efb83323f0926943b104f6456`  
		Last Modified: Thu, 04 Apr 2019 12:59:27 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15b2c9acbc8eefca110fd877d84163e3451ccf174bdef31a7564e9891c4e382`  
		Last Modified: Thu, 04 Apr 2019 12:59:49 GMT  
		Size: 65.7 MB (65731196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f952a583cf351deef2a4075ee14955746b44f70e14a43ffd2d604ca35598a7`  
		Last Modified: Thu, 04 Apr 2019 12:59:28 GMT  
		Size: 1.3 MB (1253352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63943b3d3e9636d65dbc005494ce0284ccadc7f4d26389d6a3551cb26f58aefc`  
		Last Modified: Thu, 04 Apr 2019 12:59:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b328af799e737c06fa8b01a2ee9cba515c4629dc73f8bf753e307f6e7a840ea`  
		Last Modified: Thu, 04 Apr 2019 12:59:26 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516e11de55d1dec6391c8e2eff4ac4c0b52cf0cc23653fb1f986c8ea51c177dd`  
		Last Modified: Thu, 04 Apr 2019 12:59:28 GMT  
		Size: 2.5 MB (2461810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24fa84807ac70227a9624482c83380c43759e584cfd6ac189778925e768bfc3a`  
		Last Modified: Thu, 04 Apr 2019 12:59:52 GMT  
		Size: 96.4 MB (96352719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9cc9409828c53dc5386481dc5fb4cb3610635839d6eda4299ac9a956bcc7ff5`  
		Last Modified: Thu, 04 Apr 2019 12:59:26 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:3e534323b4ef4cd281c1a563c7c0d68a7b8cf43bac9d44a5daab0b70c1db6487
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.7 MB (219693210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9e1c63da0e37002a46db4f27d8cf681ab1d086c923800e86002633b8befbc2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:11:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:11:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 18:44:43 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 09:20:14 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 09:20:15 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 09:20:16 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 09:30:24 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 09:30:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 09:30:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 09:30:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 09:30:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 09:30:29 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 10:04:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 10:06:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 10:06:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 10:06:45 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 10:06:46 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 10:06:47 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 10:06:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 10:06:51 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 10:06:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 10:06:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 10:18:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 10:18:17 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 10:18:17 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 10:18:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 10:18:19 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 10:18:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c613f8affe15c08d52860f2f82976cd28108920773a126f5e8ed34502e416d`  
		Last Modified: Wed, 27 Mar 2019 19:16:39 GMT  
		Size: 9.9 MB (9918759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81067de155e8674a09c1ef1804197185b69e8b1612def4b315c465fc582fe34`  
		Last Modified: Wed, 27 Mar 2019 19:16:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111ec693d94b8624cd9d9458b3efb66a74509cfccb490f93299218622de0b6d`  
		Last Modified: Thu, 04 Apr 2019 09:48:17 GMT  
		Size: 20.5 MB (20519326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c1d0f1aa5d3bc0d5eb9454dee9f445e14321484c3a699682866286f69c1696`  
		Last Modified: Thu, 04 Apr 2019 09:48:12 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46f97195d8507a7c9fd394d96212c133a0896b12e0c4210a015ca53e982f838`  
		Last Modified: Thu, 04 Apr 2019 10:18:38 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bddcd4fec47d5fa76442e979a5a2baad7df81ff17c269f602fc92c5964515b`  
		Last Modified: Thu, 04 Apr 2019 10:19:03 GMT  
		Size: 67.8 MB (67807182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c718e7d078275edbd725caa11d39db4cbe67cb4eff650fc936d751cd50c565c`  
		Last Modified: Thu, 04 Apr 2019 10:18:39 GMT  
		Size: 1.2 MB (1238443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d275f73690476b98c66df997ba771bcfba9489c14872e200d55d25ccad5d5161`  
		Last Modified: Thu, 04 Apr 2019 10:18:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261ca268264139702c83c859faa414286d029f9cbfffd1b9c943d164024093bf`  
		Last Modified: Thu, 04 Apr 2019 10:18:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97289097ab8d8dd2db7978497fba100bad0d48ff2c35f1806261ffcc0384c1c`  
		Last Modified: Thu, 04 Apr 2019 10:18:38 GMT  
		Size: 2.5 MB (2461297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17a82442a2df284686187dc9e5cbe053629e1efcde3c5861f32ab2c61c8e953`  
		Last Modified: Thu, 04 Apr 2019 10:19:07 GMT  
		Size: 97.4 MB (97403698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63941e6cfe360c9191d477b180eb185e833645e57cf5213f8e67697eee193ec9`  
		Last Modified: Thu, 04 Apr 2019 10:18:36 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:55baffa98c4b8c2b8c48579f85c9bc04198d2971f17d28141021523faf9a6e9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237290533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21368ec8ab5b60cb47c8a7087b60852c3c50d9c347f4aedabf3eafe4a54580a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 20:55:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:55:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 21:08:18 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 11:08:50 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 11:08:50 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 11:08:51 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 11:12:56 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 11:12:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 11:12:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 11:12:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 11:12:58 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 11:12:58 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 12:19:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 12:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 12:20:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:20:26 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 12:20:26 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 12:20:27 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 12:20:27 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 12:20:27 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 12:20:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 12:20:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 12:24:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:24:04 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 12:24:04 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 12:24:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 12:24:04 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 12:24:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d932b8f9eea89a08c5e1b3c174cd1d280f9caf519ee3a1a0612423a9c55a66b`  
		Last Modified: Wed, 27 Mar 2019 21:55:51 GMT  
		Size: 14.7 MB (14650447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9b4729012ad4092c8f82377a8f2a612e1afd2905d844300da2fc817ad770cf`  
		Last Modified: Wed, 27 Mar 2019 21:55:47 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708effc921919bfe6460bca9944ad665ea048117d4465c7793caefceea808557`  
		Last Modified: Thu, 04 Apr 2019 11:38:32 GMT  
		Size: 20.3 MB (20328380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23f2b762f4320cf1baa1acf145e7be76445017b2f1589c45493f52c46720cb3`  
		Last Modified: Thu, 04 Apr 2019 11:38:29 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc872bdc310a29e7b0885e44ebacea8a4ee7998564ee73f782613ac19f7b0e5`  
		Last Modified: Thu, 04 Apr 2019 12:24:28 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baada9655c5494de462aa38f6a83e7d928dbbd1f1f1ce0a2ade3aa9bcc60f2bc`  
		Last Modified: Thu, 04 Apr 2019 12:24:49 GMT  
		Size: 73.8 MB (73841142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f010bbfe235ba1eb2c62ab7ac6b520bf96c237a4fc4b61a32acb28f9de1ec4`  
		Last Modified: Thu, 04 Apr 2019 12:24:28 GMT  
		Size: 1.3 MB (1270275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953affa46243ccb8263e3a5d740139f42469acc6c5c91bda64a9afdd341442de`  
		Last Modified: Thu, 04 Apr 2019 12:24:26 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7ce87dd4a666d3b9d4106dff18518323680cd32d3aa7de51e8baf12714e593`  
		Last Modified: Thu, 04 Apr 2019 12:24:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa9c2222fde2d3ae9ae12f91703c9a9fa59691ec36cd46c4a3b38fc905a3e47`  
		Last Modified: Thu, 04 Apr 2019 12:24:28 GMT  
		Size: 2.5 MB (2461296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb68b5a0edf0bbe628e28c072abed4d2d27bf638a73aa5a50a8f28e483269e`  
		Last Modified: Thu, 04 Apr 2019 12:24:49 GMT  
		Size: 101.6 MB (101608936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053e275913de35c45e736954a2a2e2fbc58157d3be6ff3f82523cd23741980c2`  
		Last Modified: Thu, 04 Apr 2019 12:24:26 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:e77961800459a83e4926da3b350d164cc74f84a3e3ec2a3d4e5ff0d5ec93e827
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228860013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788425608c30e7cc408a9fed7a2e527fb1dfd711c16279bd6ad4b5612ddb30ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:39:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 13:02:35 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 08:44:16 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 08:44:19 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 08:44:21 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 08:53:32 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 08:53:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 08:53:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 08:53:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 08:53:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 08:53:54 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 09:24:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 09:26:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 09:27:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 09:27:50 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 09:27:57 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 09:28:00 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 09:28:06 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 09:28:08 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 09:28:11 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 09:28:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 09:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 09:41:48 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 09:41:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 09:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 09:41:59 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 09:42:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4fe728e78dd4b2706ccada38f5536db9f302d42b74b93d814d8e7a486504fa`  
		Last Modified: Wed, 27 Mar 2019 13:27:43 GMT  
		Size: 10.6 MB (10579362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc6f4b16bfffc24a0be21b65f2fad900773298f7f4f0ca4833e6f1fa8311a2e`  
		Last Modified: Wed, 27 Mar 2019 13:27:36 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71c6ebbdbfe26256c8cdf3e7d40853abf954b436587e3ad7d0f33803845de69`  
		Last Modified: Thu, 04 Apr 2019 09:07:35 GMT  
		Size: 21.0 MB (20960839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eaa4cbd3de16e6236d3c0c869489315f2b9977c32a3e659da1c9578fad7ae4`  
		Last Modified: Thu, 04 Apr 2019 09:07:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279c416c0f4f5fd0d434e31b8d40d6b0400da99571456febe218c847a2258942`  
		Last Modified: Thu, 04 Apr 2019 09:42:40 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89e04fc71c1da1197ca459407d3ea3b4451837bd22caf79545889047a6b859d`  
		Last Modified: Thu, 04 Apr 2019 09:42:58 GMT  
		Size: 71.1 MB (71115261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8daa703308ab101bc38f36db83983055742d2ed1da648941029fb831f327585c`  
		Last Modified: Thu, 04 Apr 2019 09:42:37 GMT  
		Size: 1.2 MB (1227681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6abb1230f06b00ed57385dc03ae208b09c5b7311e27c77d5eaa0b2ba42d86d4`  
		Last Modified: Thu, 04 Apr 2019 09:42:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b316248787da0d9d3c4b735f01b0242a0edfdcf3eb16a75eae86135440ea1c`  
		Last Modified: Thu, 04 Apr 2019 09:42:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a880f6f35c755639b052cb560580739b267b30d88e54f115f77d80cd65fa0ca5`  
		Last Modified: Thu, 04 Apr 2019 09:42:34 GMT  
		Size: 2.5 MB (2461806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504fe8b5e9881ecac260edda4bcee99c957e8a8cf261e0c1cf30fa97f6b62c6c`  
		Last Modified: Thu, 04 Apr 2019 09:42:56 GMT  
		Size: 99.8 MB (99759256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db62109784696cb52eef0203e65617db1565599870e65f430a6edf0723d0f0e`  
		Last Modified: Thu, 04 Apr 2019 09:42:32 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:efe7efc468d3be1d1533708e8fd8199b2b8c40bf3deda90afa20a88ffa985a34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229192638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b42570a97411849aff9764d87de264c666d907db92f3beb951b7dd9e6bfd049`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:32 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:37:01 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 12:38:02 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 12:38:03 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 12:38:03 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 12:44:22 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 12:44:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 12:44:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 12:44:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 12:44:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 12:44:25 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 13:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 13:42:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 13:42:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 13:42:49 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 13:42:49 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 13:42:49 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 13:42:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 13:42:50 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 13:42:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 13:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 13:46:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 13:46:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 13:46:06 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 13:46:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 13:46:06 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 13:46:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136d6190ab77b3e9ab9c467fa4d462ec05bc3271cd4c5f140aa2805f83851db`  
		Last Modified: Wed, 27 Mar 2019 15:49:43 GMT  
		Size: 11.6 MB (11577628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a0b1fb24a2e46e9629ed6f6b483f560041432e96e86e23159dbbfdab02bb6`  
		Last Modified: Wed, 27 Mar 2019 15:49:39 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47ef3d8e77ebc876376146bf324e6d043b43a750fefd80043ba060adbcf124f`  
		Last Modified: Thu, 04 Apr 2019 12:54:59 GMT  
		Size: 21.1 MB (21084325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562efc8f14a436aaae927f74e152c45e2fac92fdb6cefab8d895fc525c3271e3`  
		Last Modified: Thu, 04 Apr 2019 12:54:56 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b114c776453380c834d6ea0d21a28e0c299df3c3202a7b9f14b512df87acea6`  
		Last Modified: Thu, 04 Apr 2019 13:46:27 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43477429a97d9b12249b73b1517f833c252e14c36e9db137a3fab05914863a24`  
		Last Modified: Thu, 04 Apr 2019 13:46:42 GMT  
		Size: 71.7 MB (71746331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b967e87ea2fec531ed5d2da8d5e7bdfe51986b2036b8c06ff2e2c097b6f84`  
		Last Modified: Thu, 04 Apr 2019 13:46:27 GMT  
		Size: 1.3 MB (1292799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1384b3e9cad80899498295fe17ec37991a002861b5adf85b5faeb30440b0ac`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a1bbac407a24fa1b72cfde1387d06c743e8e77117180cf658bf27b5af9b2f2`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71d0ad902b687d9dc8987c7ce3e8b5d9ace164834fc60d08b131fad0bd1840e`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 2.5 MB (2461296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d81c123730454279eea106330297328eb17af4fbfd2d99956287c8306b199`  
		Last Modified: Thu, 04 Apr 2019 13:46:42 GMT  
		Size: 98.7 MB (98680648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32834067c41385112822bb6030af45be8bbaa314966e5ba1b5f001ebca9c8c61`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:a2fa656903110506925bc50c3f59e4dc91af1427950aad8cb3f0cce7d52f3fcb
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
$ docker pull redmine@sha256:78dfb4e4c01eb4f84c7725f0b8dedb68bd56969998a256d21a8a7a620785c344
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233275534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2111abd09d29257ca7c94f4949bc760f07bbbd91dacf901e86b0fc2f28935e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_MAJOR=2.4
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_VERSION=2.4.6
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Wed, 08 May 2019 01:44:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:44:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:44:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:44:03 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:35:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:36:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:36:35 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:36:36 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:36:36 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:36:37 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_VERSION=3.4.10
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Wed, 08 May 2019 08:36:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:42:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:42:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:42:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:42:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:42:24 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:42:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8aaa644d8aa28de78acf1c76fec776b26319b3e3935aa6022271a65b1c3a878`  
		Last Modified: Wed, 08 May 2019 02:00:10 GMT  
		Size: 20.7 MB (20740406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef726528941ce73e230e2058984b0f8fccef1c9673971ab99169264b49ae67dc`  
		Last Modified: Wed, 08 May 2019 02:00:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08f9a4be19992400887425085dd466f469328574f43e4a78782c16867ee024`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2575fbbb536f11be39f6cd6e1e3b9138aaa780ee3f5ca820494bb406e54ffd`  
		Last Modified: Wed, 08 May 2019 08:44:42 GMT  
		Size: 71.9 MB (71897885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a795aed8975f9122851c377b868c35bb22eda4cb134d09775c8bfd2940947759`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.3 MB (1303181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57911335cf52308645c819ed7da7e87f435a16781af0d6c9ec4ffba785dfab75`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc658fd14848fd1aee4498be10a8e348af588384b8f39f7f11520a351b5f7aa`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918953e727b24f7dc8d92e5a9d0387fade444e2446743a95b72cbf1aca282f0`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 2.5 MB (2461298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e9f6cb914c9d9337672632b2c78ffec5f838f295b209fbfae2c40bb8aa7f82`  
		Last Modified: Wed, 08 May 2019 08:44:44 GMT  
		Size: 103.2 MB (103206704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69459b11827231899515bdc4ff315f5dd21466d5c650a44706f9beea6971648b`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c3a5badbc3de8f268e5704a04e2e512902bc624443afa616ab73f7ada9f2ac33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221545280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375fc8dce30e4626cd05f8d023232595a028d09f81deef7bc9b38cd873fe7d59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:00:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:01:02 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 12:17:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 08 May 2019 12:17:26 GMT
ENV RUBY_VERSION=2.4.6
# Wed, 08 May 2019 12:17:26 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Wed, 08 May 2019 12:17:27 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Wed, 08 May 2019 12:24:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 12:24:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 12:24:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 12:24:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:24:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 12:24:16 GMT
CMD ["irb"]
# Wed, 08 May 2019 17:18:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 17:19:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:20:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:20:04 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 17:20:05 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 17:20:05 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 17:20:07 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 17:20:07 GMT
ENV REDMINE_VERSION=3.4.10
# Wed, 08 May 2019 17:20:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Wed, 08 May 2019 17:20:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 17:26:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:26:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 17:26:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 17:26:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 17:26:24 GMT
EXPOSE 3000
# Wed, 08 May 2019 17:26:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f94a64a34ca9d2b6b24bb8989e217cf2e7f790f2165d28579bc4fe45d90a8`  
		Last Modified: Wed, 08 May 2019 12:41:38 GMT  
		Size: 9.6 MB (9602563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9eecfb061ad8148013649b45d9cbe2f6235d8d5da8ac1a9640d73d96acd77c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811f06c7d51937bcbb22526b9c4d05032bf85c0256458e79a548b60f5faf8ae1`  
		Last Modified: Wed, 08 May 2019 12:42:40 GMT  
		Size: 20.3 MB (20317229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d891f829b6cf27e2ab11dbeb39d3a705c29be0911d9b1ae4a74a9c5651b6ee`  
		Last Modified: Wed, 08 May 2019 12:42:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e234fe16043c799b3ec822ebbd908d9079199e4530ff05bac70502a87523856d`  
		Last Modified: Wed, 08 May 2019 17:27:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dddfc3061719443eb1fad1924a39e3d2b7b139409448701a0b990011b29e27`  
		Last Modified: Wed, 08 May 2019 17:27:42 GMT  
		Size: 68.9 MB (68919125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd858609caa8e810782235d6889e6ff9c9ae47ca18266b1f747359ac1015ea`  
		Last Modified: Wed, 08 May 2019 17:27:19 GMT  
		Size: 1.3 MB (1261792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3651bae53d8c9eb8a7cee73979ca6bdf04e84869e5f4843993eefc1727f84689`  
		Last Modified: Wed, 08 May 2019 17:27:18 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f797692734579d257722a7543b3e416ae0c71398a5d88fcf972d629511f54fe`  
		Last Modified: Wed, 08 May 2019 17:27:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04282d0292c9d0ae6ef75efd587ef3af055b918fb769dbd768cfd88eeac8a904`  
		Last Modified: Wed, 08 May 2019 17:27:19 GMT  
		Size: 2.5 MB (2461816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa2260e50f5a9aa6f131f90a0160c9ec0c618a79f2c7046f672c12a24032903`  
		Last Modified: Wed, 08 May 2019 17:27:44 GMT  
		Size: 97.8 MB (97822482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5355f8aa1b8dcf163563ac79bc2bb08ef300b26a1e5712f7cb42d06bda6d684`  
		Last Modified: Wed, 08 May 2019 17:27:17 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:5b9a50fabd3baaaf829748328f38c2443d3cb9053f069d1b947d9544d3b71d94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214311578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beaaf98603b23ee6ce16d1cb7dc0c078adce3cc745c864d3c08c8b904832589a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:02:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:02:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:18:14 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 12:10:18 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 12:10:19 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 12:10:20 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 12:16:06 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 12:16:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 12:16:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 12:16:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 12:16:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 12:16:11 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 12:52:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 12:53:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 12:53:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:53:44 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 12:53:44 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 12:53:45 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 12:53:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 12:53:46 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 12:53:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 12:53:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 12:59:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:59:09 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 12:59:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 12:59:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 12:59:10 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 12:59:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c49cc9bf813783c8adad9a8112b31eb2329d6e61f1f236daa69ead9b7c5ae3`  
		Last Modified: Wed, 27 Mar 2019 15:53:45 GMT  
		Size: 9.1 MB (9079104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819e11271eca83204620d6fb3eeb33dd25ff007c2b251045f34cc378acf4f0cd`  
		Last Modified: Wed, 27 Mar 2019 15:53:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b93c31a463d4c55d607d0ce1ba150e50a9069febb6cefbdd39b5fd80a6590`  
		Last Modified: Thu, 04 Apr 2019 12:36:26 GMT  
		Size: 20.1 MB (20146543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f42aacb6495ff08059ef46d36c03c8fc551b00c079d08e52138754a2cd6e1b`  
		Last Modified: Thu, 04 Apr 2019 12:36:21 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373870d36a4308b3b234dc5ffef036f05814478efb83323f0926943b104f6456`  
		Last Modified: Thu, 04 Apr 2019 12:59:27 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15b2c9acbc8eefca110fd877d84163e3451ccf174bdef31a7564e9891c4e382`  
		Last Modified: Thu, 04 Apr 2019 12:59:49 GMT  
		Size: 65.7 MB (65731196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f952a583cf351deef2a4075ee14955746b44f70e14a43ffd2d604ca35598a7`  
		Last Modified: Thu, 04 Apr 2019 12:59:28 GMT  
		Size: 1.3 MB (1253352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63943b3d3e9636d65dbc005494ce0284ccadc7f4d26389d6a3551cb26f58aefc`  
		Last Modified: Thu, 04 Apr 2019 12:59:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b328af799e737c06fa8b01a2ee9cba515c4629dc73f8bf753e307f6e7a840ea`  
		Last Modified: Thu, 04 Apr 2019 12:59:26 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516e11de55d1dec6391c8e2eff4ac4c0b52cf0cc23653fb1f986c8ea51c177dd`  
		Last Modified: Thu, 04 Apr 2019 12:59:28 GMT  
		Size: 2.5 MB (2461810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24fa84807ac70227a9624482c83380c43759e584cfd6ac189778925e768bfc3a`  
		Last Modified: Thu, 04 Apr 2019 12:59:52 GMT  
		Size: 96.4 MB (96352719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9cc9409828c53dc5386481dc5fb4cb3610635839d6eda4299ac9a956bcc7ff5`  
		Last Modified: Thu, 04 Apr 2019 12:59:26 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:3e534323b4ef4cd281c1a563c7c0d68a7b8cf43bac9d44a5daab0b70c1db6487
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.7 MB (219693210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9e1c63da0e37002a46db4f27d8cf681ab1d086c923800e86002633b8befbc2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:11:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:11:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 18:44:43 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 09:20:14 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 09:20:15 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 09:20:16 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 09:30:24 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 09:30:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 09:30:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 09:30:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 09:30:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 09:30:29 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 10:04:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 10:06:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 10:06:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 10:06:45 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 10:06:46 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 10:06:47 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 10:06:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 10:06:51 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 10:06:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 10:06:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 10:18:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 10:18:17 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 10:18:17 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 10:18:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 10:18:19 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 10:18:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c613f8affe15c08d52860f2f82976cd28108920773a126f5e8ed34502e416d`  
		Last Modified: Wed, 27 Mar 2019 19:16:39 GMT  
		Size: 9.9 MB (9918759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81067de155e8674a09c1ef1804197185b69e8b1612def4b315c465fc582fe34`  
		Last Modified: Wed, 27 Mar 2019 19:16:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111ec693d94b8624cd9d9458b3efb66a74509cfccb490f93299218622de0b6d`  
		Last Modified: Thu, 04 Apr 2019 09:48:17 GMT  
		Size: 20.5 MB (20519326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c1d0f1aa5d3bc0d5eb9454dee9f445e14321484c3a699682866286f69c1696`  
		Last Modified: Thu, 04 Apr 2019 09:48:12 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46f97195d8507a7c9fd394d96212c133a0896b12e0c4210a015ca53e982f838`  
		Last Modified: Thu, 04 Apr 2019 10:18:38 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bddcd4fec47d5fa76442e979a5a2baad7df81ff17c269f602fc92c5964515b`  
		Last Modified: Thu, 04 Apr 2019 10:19:03 GMT  
		Size: 67.8 MB (67807182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c718e7d078275edbd725caa11d39db4cbe67cb4eff650fc936d751cd50c565c`  
		Last Modified: Thu, 04 Apr 2019 10:18:39 GMT  
		Size: 1.2 MB (1238443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d275f73690476b98c66df997ba771bcfba9489c14872e200d55d25ccad5d5161`  
		Last Modified: Thu, 04 Apr 2019 10:18:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261ca268264139702c83c859faa414286d029f9cbfffd1b9c943d164024093bf`  
		Last Modified: Thu, 04 Apr 2019 10:18:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97289097ab8d8dd2db7978497fba100bad0d48ff2c35f1806261ffcc0384c1c`  
		Last Modified: Thu, 04 Apr 2019 10:18:38 GMT  
		Size: 2.5 MB (2461297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17a82442a2df284686187dc9e5cbe053629e1efcde3c5861f32ab2c61c8e953`  
		Last Modified: Thu, 04 Apr 2019 10:19:07 GMT  
		Size: 97.4 MB (97403698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63941e6cfe360c9191d477b180eb185e833645e57cf5213f8e67697eee193ec9`  
		Last Modified: Thu, 04 Apr 2019 10:18:36 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:55baffa98c4b8c2b8c48579f85c9bc04198d2971f17d28141021523faf9a6e9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237290533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21368ec8ab5b60cb47c8a7087b60852c3c50d9c347f4aedabf3eafe4a54580a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 20:55:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:55:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 21:08:18 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 11:08:50 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 11:08:50 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 11:08:51 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 11:12:56 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 11:12:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 11:12:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 11:12:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 11:12:58 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 11:12:58 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 12:19:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 12:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 12:20:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:20:26 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 12:20:26 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 12:20:27 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 12:20:27 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 12:20:27 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 12:20:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 12:20:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 12:24:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:24:04 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 12:24:04 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 12:24:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 12:24:04 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 12:24:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d932b8f9eea89a08c5e1b3c174cd1d280f9caf519ee3a1a0612423a9c55a66b`  
		Last Modified: Wed, 27 Mar 2019 21:55:51 GMT  
		Size: 14.7 MB (14650447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9b4729012ad4092c8f82377a8f2a612e1afd2905d844300da2fc817ad770cf`  
		Last Modified: Wed, 27 Mar 2019 21:55:47 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708effc921919bfe6460bca9944ad665ea048117d4465c7793caefceea808557`  
		Last Modified: Thu, 04 Apr 2019 11:38:32 GMT  
		Size: 20.3 MB (20328380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23f2b762f4320cf1baa1acf145e7be76445017b2f1589c45493f52c46720cb3`  
		Last Modified: Thu, 04 Apr 2019 11:38:29 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc872bdc310a29e7b0885e44ebacea8a4ee7998564ee73f782613ac19f7b0e5`  
		Last Modified: Thu, 04 Apr 2019 12:24:28 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baada9655c5494de462aa38f6a83e7d928dbbd1f1f1ce0a2ade3aa9bcc60f2bc`  
		Last Modified: Thu, 04 Apr 2019 12:24:49 GMT  
		Size: 73.8 MB (73841142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f010bbfe235ba1eb2c62ab7ac6b520bf96c237a4fc4b61a32acb28f9de1ec4`  
		Last Modified: Thu, 04 Apr 2019 12:24:28 GMT  
		Size: 1.3 MB (1270275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953affa46243ccb8263e3a5d740139f42469acc6c5c91bda64a9afdd341442de`  
		Last Modified: Thu, 04 Apr 2019 12:24:26 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7ce87dd4a666d3b9d4106dff18518323680cd32d3aa7de51e8baf12714e593`  
		Last Modified: Thu, 04 Apr 2019 12:24:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa9c2222fde2d3ae9ae12f91703c9a9fa59691ec36cd46c4a3b38fc905a3e47`  
		Last Modified: Thu, 04 Apr 2019 12:24:28 GMT  
		Size: 2.5 MB (2461296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb68b5a0edf0bbe628e28c072abed4d2d27bf638a73aa5a50a8f28e483269e`  
		Last Modified: Thu, 04 Apr 2019 12:24:49 GMT  
		Size: 101.6 MB (101608936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053e275913de35c45e736954a2a2e2fbc58157d3be6ff3f82523cd23741980c2`  
		Last Modified: Thu, 04 Apr 2019 12:24:26 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:e77961800459a83e4926da3b350d164cc74f84a3e3ec2a3d4e5ff0d5ec93e827
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228860013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788425608c30e7cc408a9fed7a2e527fb1dfd711c16279bd6ad4b5612ddb30ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:39:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 13:02:35 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 08:44:16 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 08:44:19 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 08:44:21 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 08:53:32 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 08:53:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 08:53:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 08:53:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 08:53:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 08:53:54 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 09:24:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 09:26:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 09:27:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 09:27:50 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 09:27:57 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 09:28:00 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 09:28:06 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 09:28:08 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 09:28:11 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 09:28:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 09:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 09:41:48 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 09:41:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 09:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 09:41:59 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 09:42:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4fe728e78dd4b2706ccada38f5536db9f302d42b74b93d814d8e7a486504fa`  
		Last Modified: Wed, 27 Mar 2019 13:27:43 GMT  
		Size: 10.6 MB (10579362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc6f4b16bfffc24a0be21b65f2fad900773298f7f4f0ca4833e6f1fa8311a2e`  
		Last Modified: Wed, 27 Mar 2019 13:27:36 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71c6ebbdbfe26256c8cdf3e7d40853abf954b436587e3ad7d0f33803845de69`  
		Last Modified: Thu, 04 Apr 2019 09:07:35 GMT  
		Size: 21.0 MB (20960839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eaa4cbd3de16e6236d3c0c869489315f2b9977c32a3e659da1c9578fad7ae4`  
		Last Modified: Thu, 04 Apr 2019 09:07:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279c416c0f4f5fd0d434e31b8d40d6b0400da99571456febe218c847a2258942`  
		Last Modified: Thu, 04 Apr 2019 09:42:40 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89e04fc71c1da1197ca459407d3ea3b4451837bd22caf79545889047a6b859d`  
		Last Modified: Thu, 04 Apr 2019 09:42:58 GMT  
		Size: 71.1 MB (71115261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8daa703308ab101bc38f36db83983055742d2ed1da648941029fb831f327585c`  
		Last Modified: Thu, 04 Apr 2019 09:42:37 GMT  
		Size: 1.2 MB (1227681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6abb1230f06b00ed57385dc03ae208b09c5b7311e27c77d5eaa0b2ba42d86d4`  
		Last Modified: Thu, 04 Apr 2019 09:42:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b316248787da0d9d3c4b735f01b0242a0edfdcf3eb16a75eae86135440ea1c`  
		Last Modified: Thu, 04 Apr 2019 09:42:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a880f6f35c755639b052cb560580739b267b30d88e54f115f77d80cd65fa0ca5`  
		Last Modified: Thu, 04 Apr 2019 09:42:34 GMT  
		Size: 2.5 MB (2461806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504fe8b5e9881ecac260edda4bcee99c957e8a8cf261e0c1cf30fa97f6b62c6c`  
		Last Modified: Thu, 04 Apr 2019 09:42:56 GMT  
		Size: 99.8 MB (99759256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db62109784696cb52eef0203e65617db1565599870e65f430a6edf0723d0f0e`  
		Last Modified: Thu, 04 Apr 2019 09:42:32 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:efe7efc468d3be1d1533708e8fd8199b2b8c40bf3deda90afa20a88ffa985a34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229192638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b42570a97411849aff9764d87de264c666d907db92f3beb951b7dd9e6bfd049`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:32 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:37:01 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 12:38:02 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 12:38:03 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 12:38:03 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 12:44:22 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 12:44:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 12:44:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 12:44:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 12:44:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 12:44:25 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 13:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 13:42:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 13:42:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 13:42:49 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 13:42:49 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 13:42:49 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 13:42:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 13:42:50 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 13:42:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 13:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 13:46:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 13:46:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 13:46:06 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 13:46:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 13:46:06 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 13:46:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136d6190ab77b3e9ab9c467fa4d462ec05bc3271cd4c5f140aa2805f83851db`  
		Last Modified: Wed, 27 Mar 2019 15:49:43 GMT  
		Size: 11.6 MB (11577628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a0b1fb24a2e46e9629ed6f6b483f560041432e96e86e23159dbbfdab02bb6`  
		Last Modified: Wed, 27 Mar 2019 15:49:39 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47ef3d8e77ebc876376146bf324e6d043b43a750fefd80043ba060adbcf124f`  
		Last Modified: Thu, 04 Apr 2019 12:54:59 GMT  
		Size: 21.1 MB (21084325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562efc8f14a436aaae927f74e152c45e2fac92fdb6cefab8d895fc525c3271e3`  
		Last Modified: Thu, 04 Apr 2019 12:54:56 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b114c776453380c834d6ea0d21a28e0c299df3c3202a7b9f14b512df87acea6`  
		Last Modified: Thu, 04 Apr 2019 13:46:27 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43477429a97d9b12249b73b1517f833c252e14c36e9db137a3fab05914863a24`  
		Last Modified: Thu, 04 Apr 2019 13:46:42 GMT  
		Size: 71.7 MB (71746331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b967e87ea2fec531ed5d2da8d5e7bdfe51986b2036b8c06ff2e2c097b6f84`  
		Last Modified: Thu, 04 Apr 2019 13:46:27 GMT  
		Size: 1.3 MB (1292799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1384b3e9cad80899498295fe17ec37991a002861b5adf85b5faeb30440b0ac`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a1bbac407a24fa1b72cfde1387d06c743e8e77117180cf658bf27b5af9b2f2`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71d0ad902b687d9dc8987c7ce3e8b5d9ace164834fc60d08b131fad0bd1840e`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 2.5 MB (2461296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d81c123730454279eea106330297328eb17af4fbfd2d99956287c8306b199`  
		Last Modified: Thu, 04 Apr 2019 13:46:42 GMT  
		Size: 98.7 MB (98680648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32834067c41385112822bb6030af45be8bbaa314966e5ba1b5f001ebca9c8c61`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.10`

```console
$ docker pull redmine@sha256:a2fa656903110506925bc50c3f59e4dc91af1427950aad8cb3f0cce7d52f3fcb
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

### `redmine:3.4.10` - linux; amd64

```console
$ docker pull redmine@sha256:78dfb4e4c01eb4f84c7725f0b8dedb68bd56969998a256d21a8a7a620785c344
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233275534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2111abd09d29257ca7c94f4949bc760f07bbbd91dacf901e86b0fc2f28935e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_MAJOR=2.4
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_VERSION=2.4.6
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Wed, 08 May 2019 01:44:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:44:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:44:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:44:03 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:35:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:36:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:36:35 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:36:36 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:36:36 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:36:37 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_VERSION=3.4.10
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Wed, 08 May 2019 08:36:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:42:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:42:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:42:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:42:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:42:24 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:42:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8aaa644d8aa28de78acf1c76fec776b26319b3e3935aa6022271a65b1c3a878`  
		Last Modified: Wed, 08 May 2019 02:00:10 GMT  
		Size: 20.7 MB (20740406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef726528941ce73e230e2058984b0f8fccef1c9673971ab99169264b49ae67dc`  
		Last Modified: Wed, 08 May 2019 02:00:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08f9a4be19992400887425085dd466f469328574f43e4a78782c16867ee024`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2575fbbb536f11be39f6cd6e1e3b9138aaa780ee3f5ca820494bb406e54ffd`  
		Last Modified: Wed, 08 May 2019 08:44:42 GMT  
		Size: 71.9 MB (71897885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a795aed8975f9122851c377b868c35bb22eda4cb134d09775c8bfd2940947759`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.3 MB (1303181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57911335cf52308645c819ed7da7e87f435a16781af0d6c9ec4ffba785dfab75`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc658fd14848fd1aee4498be10a8e348af588384b8f39f7f11520a351b5f7aa`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918953e727b24f7dc8d92e5a9d0387fade444e2446743a95b72cbf1aca282f0`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 2.5 MB (2461298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e9f6cb914c9d9337672632b2c78ffec5f838f295b209fbfae2c40bb8aa7f82`  
		Last Modified: Wed, 08 May 2019 08:44:44 GMT  
		Size: 103.2 MB (103206704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69459b11827231899515bdc4ff315f5dd21466d5c650a44706f9beea6971648b`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.10` - linux; arm variant v5

```console
$ docker pull redmine@sha256:c3a5badbc3de8f268e5704a04e2e512902bc624443afa616ab73f7ada9f2ac33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221545280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375fc8dce30e4626cd05f8d023232595a028d09f81deef7bc9b38cd873fe7d59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:00:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:01:02 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 12:17:25 GMT
ENV RUBY_MAJOR=2.4
# Wed, 08 May 2019 12:17:26 GMT
ENV RUBY_VERSION=2.4.6
# Wed, 08 May 2019 12:17:26 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Wed, 08 May 2019 12:17:27 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Wed, 08 May 2019 12:24:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 12:24:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 12:24:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 12:24:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:24:15 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 12:24:16 GMT
CMD ["irb"]
# Wed, 08 May 2019 17:18:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 17:19:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:20:04 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:20:04 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 17:20:05 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 17:20:05 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 17:20:07 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 17:20:07 GMT
ENV REDMINE_VERSION=3.4.10
# Wed, 08 May 2019 17:20:08 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Wed, 08 May 2019 17:20:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 17:26:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:26:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 17:26:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 17:26:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 17:26:24 GMT
EXPOSE 3000
# Wed, 08 May 2019 17:26:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f94a64a34ca9d2b6b24bb8989e217cf2e7f790f2165d28579bc4fe45d90a8`  
		Last Modified: Wed, 08 May 2019 12:41:38 GMT  
		Size: 9.6 MB (9602563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9eecfb061ad8148013649b45d9cbe2f6235d8d5da8ac1a9640d73d96acd77c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811f06c7d51937bcbb22526b9c4d05032bf85c0256458e79a548b60f5faf8ae1`  
		Last Modified: Wed, 08 May 2019 12:42:40 GMT  
		Size: 20.3 MB (20317229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d891f829b6cf27e2ab11dbeb39d3a705c29be0911d9b1ae4a74a9c5651b6ee`  
		Last Modified: Wed, 08 May 2019 12:42:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e234fe16043c799b3ec822ebbd908d9079199e4530ff05bac70502a87523856d`  
		Last Modified: Wed, 08 May 2019 17:27:21 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dddfc3061719443eb1fad1924a39e3d2b7b139409448701a0b990011b29e27`  
		Last Modified: Wed, 08 May 2019 17:27:42 GMT  
		Size: 68.9 MB (68919125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd858609caa8e810782235d6889e6ff9c9ae47ca18266b1f747359ac1015ea`  
		Last Modified: Wed, 08 May 2019 17:27:19 GMT  
		Size: 1.3 MB (1261792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3651bae53d8c9eb8a7cee73979ca6bdf04e84869e5f4843993eefc1727f84689`  
		Last Modified: Wed, 08 May 2019 17:27:18 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f797692734579d257722a7543b3e416ae0c71398a5d88fcf972d629511f54fe`  
		Last Modified: Wed, 08 May 2019 17:27:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04282d0292c9d0ae6ef75efd587ef3af055b918fb769dbd768cfd88eeac8a904`  
		Last Modified: Wed, 08 May 2019 17:27:19 GMT  
		Size: 2.5 MB (2461816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa2260e50f5a9aa6f131f90a0160c9ec0c618a79f2c7046f672c12a24032903`  
		Last Modified: Wed, 08 May 2019 17:27:44 GMT  
		Size: 97.8 MB (97822482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5355f8aa1b8dcf163563ac79bc2bb08ef300b26a1e5712f7cb42d06bda6d684`  
		Last Modified: Wed, 08 May 2019 17:27:17 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.10` - linux; arm variant v7

```console
$ docker pull redmine@sha256:5b9a50fabd3baaaf829748328f38c2443d3cb9053f069d1b947d9544d3b71d94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214311578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beaaf98603b23ee6ce16d1cb7dc0c078adce3cc745c864d3c08c8b904832589a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:02:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:02:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:18:14 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 12:10:18 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 12:10:19 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 12:10:20 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 12:16:06 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 12:16:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 12:16:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 12:16:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 12:16:10 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 12:16:11 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 12:52:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 12:53:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 12:53:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:53:44 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 12:53:44 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 12:53:45 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 12:53:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 12:53:46 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 12:53:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 12:53:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 12:59:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:59:09 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 12:59:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 12:59:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 12:59:10 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 12:59:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c49cc9bf813783c8adad9a8112b31eb2329d6e61f1f236daa69ead9b7c5ae3`  
		Last Modified: Wed, 27 Mar 2019 15:53:45 GMT  
		Size: 9.1 MB (9079104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819e11271eca83204620d6fb3eeb33dd25ff007c2b251045f34cc378acf4f0cd`  
		Last Modified: Wed, 27 Mar 2019 15:53:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b93c31a463d4c55d607d0ce1ba150e50a9069febb6cefbdd39b5fd80a6590`  
		Last Modified: Thu, 04 Apr 2019 12:36:26 GMT  
		Size: 20.1 MB (20146543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f42aacb6495ff08059ef46d36c03c8fc551b00c079d08e52138754a2cd6e1b`  
		Last Modified: Thu, 04 Apr 2019 12:36:21 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373870d36a4308b3b234dc5ffef036f05814478efb83323f0926943b104f6456`  
		Last Modified: Thu, 04 Apr 2019 12:59:27 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15b2c9acbc8eefca110fd877d84163e3451ccf174bdef31a7564e9891c4e382`  
		Last Modified: Thu, 04 Apr 2019 12:59:49 GMT  
		Size: 65.7 MB (65731196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f952a583cf351deef2a4075ee14955746b44f70e14a43ffd2d604ca35598a7`  
		Last Modified: Thu, 04 Apr 2019 12:59:28 GMT  
		Size: 1.3 MB (1253352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63943b3d3e9636d65dbc005494ce0284ccadc7f4d26389d6a3551cb26f58aefc`  
		Last Modified: Thu, 04 Apr 2019 12:59:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b328af799e737c06fa8b01a2ee9cba515c4629dc73f8bf753e307f6e7a840ea`  
		Last Modified: Thu, 04 Apr 2019 12:59:26 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516e11de55d1dec6391c8e2eff4ac4c0b52cf0cc23653fb1f986c8ea51c177dd`  
		Last Modified: Thu, 04 Apr 2019 12:59:28 GMT  
		Size: 2.5 MB (2461810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24fa84807ac70227a9624482c83380c43759e584cfd6ac189778925e768bfc3a`  
		Last Modified: Thu, 04 Apr 2019 12:59:52 GMT  
		Size: 96.4 MB (96352719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9cc9409828c53dc5386481dc5fb4cb3610635839d6eda4299ac9a956bcc7ff5`  
		Last Modified: Thu, 04 Apr 2019 12:59:26 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.10` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:3e534323b4ef4cd281c1a563c7c0d68a7b8cf43bac9d44a5daab0b70c1db6487
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.7 MB (219693210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9e1c63da0e37002a46db4f27d8cf681ab1d086c923800e86002633b8befbc2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:11:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:11:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 18:44:43 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 09:20:14 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 09:20:15 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 09:20:16 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 09:30:24 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 09:30:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 09:30:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 09:30:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 09:30:28 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 09:30:29 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 10:04:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 10:06:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 10:06:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 10:06:45 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 10:06:46 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 10:06:47 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 10:06:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 10:06:51 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 10:06:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 10:06:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 10:18:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 10:18:17 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 10:18:17 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 10:18:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 10:18:19 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 10:18:19 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c613f8affe15c08d52860f2f82976cd28108920773a126f5e8ed34502e416d`  
		Last Modified: Wed, 27 Mar 2019 19:16:39 GMT  
		Size: 9.9 MB (9918759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81067de155e8674a09c1ef1804197185b69e8b1612def4b315c465fc582fe34`  
		Last Modified: Wed, 27 Mar 2019 19:16:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111ec693d94b8624cd9d9458b3efb66a74509cfccb490f93299218622de0b6d`  
		Last Modified: Thu, 04 Apr 2019 09:48:17 GMT  
		Size: 20.5 MB (20519326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c1d0f1aa5d3bc0d5eb9454dee9f445e14321484c3a699682866286f69c1696`  
		Last Modified: Thu, 04 Apr 2019 09:48:12 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46f97195d8507a7c9fd394d96212c133a0896b12e0c4210a015ca53e982f838`  
		Last Modified: Thu, 04 Apr 2019 10:18:38 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bddcd4fec47d5fa76442e979a5a2baad7df81ff17c269f602fc92c5964515b`  
		Last Modified: Thu, 04 Apr 2019 10:19:03 GMT  
		Size: 67.8 MB (67807182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c718e7d078275edbd725caa11d39db4cbe67cb4eff650fc936d751cd50c565c`  
		Last Modified: Thu, 04 Apr 2019 10:18:39 GMT  
		Size: 1.2 MB (1238443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d275f73690476b98c66df997ba771bcfba9489c14872e200d55d25ccad5d5161`  
		Last Modified: Thu, 04 Apr 2019 10:18:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261ca268264139702c83c859faa414286d029f9cbfffd1b9c943d164024093bf`  
		Last Modified: Thu, 04 Apr 2019 10:18:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97289097ab8d8dd2db7978497fba100bad0d48ff2c35f1806261ffcc0384c1c`  
		Last Modified: Thu, 04 Apr 2019 10:18:38 GMT  
		Size: 2.5 MB (2461297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17a82442a2df284686187dc9e5cbe053629e1efcde3c5861f32ab2c61c8e953`  
		Last Modified: Thu, 04 Apr 2019 10:19:07 GMT  
		Size: 97.4 MB (97403698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63941e6cfe360c9191d477b180eb185e833645e57cf5213f8e67697eee193ec9`  
		Last Modified: Thu, 04 Apr 2019 10:18:36 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.10` - linux; 386

```console
$ docker pull redmine@sha256:55baffa98c4b8c2b8c48579f85c9bc04198d2971f17d28141021523faf9a6e9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237290533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21368ec8ab5b60cb47c8a7087b60852c3c50d9c347f4aedabf3eafe4a54580a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 20:55:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:55:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 21:08:18 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 11:08:50 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 11:08:50 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 11:08:51 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 11:12:56 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 11:12:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 11:12:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 11:12:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 11:12:58 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 11:12:58 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 12:19:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 12:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 12:20:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:20:26 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 12:20:26 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 12:20:27 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 12:20:27 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 12:20:27 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 12:20:28 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 12:20:31 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 12:24:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 12:24:04 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 12:24:04 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 12:24:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 12:24:04 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 12:24:04 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d932b8f9eea89a08c5e1b3c174cd1d280f9caf519ee3a1a0612423a9c55a66b`  
		Last Modified: Wed, 27 Mar 2019 21:55:51 GMT  
		Size: 14.7 MB (14650447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9b4729012ad4092c8f82377a8f2a612e1afd2905d844300da2fc817ad770cf`  
		Last Modified: Wed, 27 Mar 2019 21:55:47 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708effc921919bfe6460bca9944ad665ea048117d4465c7793caefceea808557`  
		Last Modified: Thu, 04 Apr 2019 11:38:32 GMT  
		Size: 20.3 MB (20328380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23f2b762f4320cf1baa1acf145e7be76445017b2f1589c45493f52c46720cb3`  
		Last Modified: Thu, 04 Apr 2019 11:38:29 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc872bdc310a29e7b0885e44ebacea8a4ee7998564ee73f782613ac19f7b0e5`  
		Last Modified: Thu, 04 Apr 2019 12:24:28 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baada9655c5494de462aa38f6a83e7d928dbbd1f1f1ce0a2ade3aa9bcc60f2bc`  
		Last Modified: Thu, 04 Apr 2019 12:24:49 GMT  
		Size: 73.8 MB (73841142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f010bbfe235ba1eb2c62ab7ac6b520bf96c237a4fc4b61a32acb28f9de1ec4`  
		Last Modified: Thu, 04 Apr 2019 12:24:28 GMT  
		Size: 1.3 MB (1270275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953affa46243ccb8263e3a5d740139f42469acc6c5c91bda64a9afdd341442de`  
		Last Modified: Thu, 04 Apr 2019 12:24:26 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7ce87dd4a666d3b9d4106dff18518323680cd32d3aa7de51e8baf12714e593`  
		Last Modified: Thu, 04 Apr 2019 12:24:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa9c2222fde2d3ae9ae12f91703c9a9fa59691ec36cd46c4a3b38fc905a3e47`  
		Last Modified: Thu, 04 Apr 2019 12:24:28 GMT  
		Size: 2.5 MB (2461296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cb68b5a0edf0bbe628e28c072abed4d2d27bf638a73aa5a50a8f28e483269e`  
		Last Modified: Thu, 04 Apr 2019 12:24:49 GMT  
		Size: 101.6 MB (101608936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053e275913de35c45e736954a2a2e2fbc58157d3be6ff3f82523cd23741980c2`  
		Last Modified: Thu, 04 Apr 2019 12:24:26 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.10` - linux; ppc64le

```console
$ docker pull redmine@sha256:e77961800459a83e4926da3b350d164cc74f84a3e3ec2a3d4e5ff0d5ec93e827
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228860013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:788425608c30e7cc408a9fed7a2e527fb1dfd711c16279bd6ad4b5612ddb30ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:39:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 13:02:35 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 08:44:16 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 08:44:19 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 08:44:21 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 08:53:32 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 08:53:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 08:53:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 08:53:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 08:53:51 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 08:53:54 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 09:24:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 09:26:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 09:27:43 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 09:27:50 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 09:27:57 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 09:28:00 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 09:28:06 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 09:28:08 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 09:28:11 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 09:28:23 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 09:41:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 09:41:48 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 09:41:50 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 09:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 09:41:59 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 09:42:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4fe728e78dd4b2706ccada38f5536db9f302d42b74b93d814d8e7a486504fa`  
		Last Modified: Wed, 27 Mar 2019 13:27:43 GMT  
		Size: 10.6 MB (10579362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc6f4b16bfffc24a0be21b65f2fad900773298f7f4f0ca4833e6f1fa8311a2e`  
		Last Modified: Wed, 27 Mar 2019 13:27:36 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71c6ebbdbfe26256c8cdf3e7d40853abf954b436587e3ad7d0f33803845de69`  
		Last Modified: Thu, 04 Apr 2019 09:07:35 GMT  
		Size: 21.0 MB (20960839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98eaa4cbd3de16e6236d3c0c869489315f2b9977c32a3e659da1c9578fad7ae4`  
		Last Modified: Thu, 04 Apr 2019 09:07:31 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279c416c0f4f5fd0d434e31b8d40d6b0400da99571456febe218c847a2258942`  
		Last Modified: Thu, 04 Apr 2019 09:42:40 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89e04fc71c1da1197ca459407d3ea3b4451837bd22caf79545889047a6b859d`  
		Last Modified: Thu, 04 Apr 2019 09:42:58 GMT  
		Size: 71.1 MB (71115261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8daa703308ab101bc38f36db83983055742d2ed1da648941029fb831f327585c`  
		Last Modified: Thu, 04 Apr 2019 09:42:37 GMT  
		Size: 1.2 MB (1227681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6abb1230f06b00ed57385dc03ae208b09c5b7311e27c77d5eaa0b2ba42d86d4`  
		Last Modified: Thu, 04 Apr 2019 09:42:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b316248787da0d9d3c4b735f01b0242a0edfdcf3eb16a75eae86135440ea1c`  
		Last Modified: Thu, 04 Apr 2019 09:42:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a880f6f35c755639b052cb560580739b267b30d88e54f115f77d80cd65fa0ca5`  
		Last Modified: Thu, 04 Apr 2019 09:42:34 GMT  
		Size: 2.5 MB (2461806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504fe8b5e9881ecac260edda4bcee99c957e8a8cf261e0c1cf30fa97f6b62c6c`  
		Last Modified: Thu, 04 Apr 2019 09:42:56 GMT  
		Size: 99.8 MB (99759256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db62109784696cb52eef0203e65617db1565599870e65f430a6edf0723d0f0e`  
		Last Modified: Thu, 04 Apr 2019 09:42:32 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.10` - linux; s390x

```console
$ docker pull redmine@sha256:efe7efc468d3be1d1533708e8fd8199b2b8c40bf3deda90afa20a88ffa985a34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229192638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b42570a97411849aff9764d87de264c666d907db92f3beb951b7dd9e6bfd049`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:32 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:37:01 GMT
ENV RUBY_MAJOR=2.4
# Thu, 04 Apr 2019 12:38:02 GMT
ENV RUBY_VERSION=2.4.6
# Thu, 04 Apr 2019 12:38:03 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Thu, 04 Apr 2019 12:38:03 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Thu, 04 Apr 2019 12:44:22 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Thu, 04 Apr 2019 12:44:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 04 Apr 2019 12:44:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 04 Apr 2019 12:44:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 12:44:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 04 Apr 2019 12:44:25 GMT
CMD ["irb"]
# Thu, 04 Apr 2019 13:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 04 Apr 2019 13:42:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 13:42:49 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 13:42:49 GMT
ENV RAILS_ENV=production
# Thu, 04 Apr 2019 13:42:49 GMT
WORKDIR /usr/src/redmine
# Thu, 04 Apr 2019 13:42:49 GMT
ENV HOME=/home/redmine
# Thu, 04 Apr 2019 13:42:50 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 04 Apr 2019 13:42:50 GMT
ENV REDMINE_VERSION=3.4.10
# Thu, 04 Apr 2019 13:42:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Thu, 04 Apr 2019 13:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 04 Apr 2019 13:46:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 04 Apr 2019 13:46:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 04 Apr 2019 13:46:06 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 04 Apr 2019 13:46:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 13:46:06 GMT
EXPOSE 3000
# Thu, 04 Apr 2019 13:46:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136d6190ab77b3e9ab9c467fa4d462ec05bc3271cd4c5f140aa2805f83851db`  
		Last Modified: Wed, 27 Mar 2019 15:49:43 GMT  
		Size: 11.6 MB (11577628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a0b1fb24a2e46e9629ed6f6b483f560041432e96e86e23159dbbfdab02bb6`  
		Last Modified: Wed, 27 Mar 2019 15:49:39 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47ef3d8e77ebc876376146bf324e6d043b43a750fefd80043ba060adbcf124f`  
		Last Modified: Thu, 04 Apr 2019 12:54:59 GMT  
		Size: 21.1 MB (21084325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562efc8f14a436aaae927f74e152c45e2fac92fdb6cefab8d895fc525c3271e3`  
		Last Modified: Thu, 04 Apr 2019 12:54:56 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b114c776453380c834d6ea0d21a28e0c299df3c3202a7b9f14b512df87acea6`  
		Last Modified: Thu, 04 Apr 2019 13:46:27 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43477429a97d9b12249b73b1517f833c252e14c36e9db137a3fab05914863a24`  
		Last Modified: Thu, 04 Apr 2019 13:46:42 GMT  
		Size: 71.7 MB (71746331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b967e87ea2fec531ed5d2da8d5e7bdfe51986b2036b8c06ff2e2c097b6f84`  
		Last Modified: Thu, 04 Apr 2019 13:46:27 GMT  
		Size: 1.3 MB (1292799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1384b3e9cad80899498295fe17ec37991a002861b5adf85b5faeb30440b0ac`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a1bbac407a24fa1b72cfde1387d06c743e8e77117180cf658bf27b5af9b2f2`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71d0ad902b687d9dc8987c7ce3e8b5d9ace164834fc60d08b131fad0bd1840e`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 2.5 MB (2461296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d81c123730454279eea106330297328eb17af4fbfd2d99956287c8306b199`  
		Last Modified: Thu, 04 Apr 2019 13:46:42 GMT  
		Size: 98.7 MB (98680648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32834067c41385112822bb6030af45be8bbaa314966e5ba1b5f001ebca9c8c61`  
		Last Modified: Thu, 04 Apr 2019 13:46:26 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.10-passenger`

```console
$ docker pull redmine@sha256:0560552412b9fcc6f82cdcb9b64dd7ad1eb0482ab2161da0fd936e3620bd9ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.10-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:4ecded04f6c89efe88935c0d66142ff7758e3f3b1db93a7b0d0d572641f43a43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257823374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bbf16901b3bc6402dc9b3dc5cc92c54bcc53326482616d9adf74c3e4f316fbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_MAJOR=2.4
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_VERSION=2.4.6
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Wed, 08 May 2019 01:44:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:44:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:44:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:44:03 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:35:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:36:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:36:35 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:36:36 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:36:36 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:36:37 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_VERSION=3.4.10
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Wed, 08 May 2019 08:36:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:42:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:42:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:42:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:42:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:42:24 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:42:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 08 May 2019 08:42:38 GMT
ENV PASSENGER_VERSION=6.0.2
# Wed, 08 May 2019 08:43:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:43:04 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 08 May 2019 08:43:04 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 08 May 2019 08:43:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8aaa644d8aa28de78acf1c76fec776b26319b3e3935aa6022271a65b1c3a878`  
		Last Modified: Wed, 08 May 2019 02:00:10 GMT  
		Size: 20.7 MB (20740406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef726528941ce73e230e2058984b0f8fccef1c9673971ab99169264b49ae67dc`  
		Last Modified: Wed, 08 May 2019 02:00:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08f9a4be19992400887425085dd466f469328574f43e4a78782c16867ee024`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2575fbbb536f11be39f6cd6e1e3b9138aaa780ee3f5ca820494bb406e54ffd`  
		Last Modified: Wed, 08 May 2019 08:44:42 GMT  
		Size: 71.9 MB (71897885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a795aed8975f9122851c377b868c35bb22eda4cb134d09775c8bfd2940947759`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.3 MB (1303181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57911335cf52308645c819ed7da7e87f435a16781af0d6c9ec4ffba785dfab75`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc658fd14848fd1aee4498be10a8e348af588384b8f39f7f11520a351b5f7aa`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918953e727b24f7dc8d92e5a9d0387fade444e2446743a95b72cbf1aca282f0`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 2.5 MB (2461298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e9f6cb914c9d9337672632b2c78ffec5f838f295b209fbfae2c40bb8aa7f82`  
		Last Modified: Wed, 08 May 2019 08:44:44 GMT  
		Size: 103.2 MB (103206704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69459b11827231899515bdc4ff315f5dd21466d5c650a44706f9beea6971648b`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1482e0ebb3c218e00dda3873b28a5cda51377073e9e83833936742e88c1563`  
		Last Modified: Wed, 08 May 2019 08:44:56 GMT  
		Size: 19.7 MB (19651881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b095203e9c8a4e4c9494d47a8eace9b870f38b8d7f9a02330616490be5414377`  
		Last Modified: Wed, 08 May 2019 08:44:53 GMT  
		Size: 4.9 MB (4895959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:0560552412b9fcc6f82cdcb9b64dd7ad1eb0482ab2161da0fd936e3620bd9ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:4ecded04f6c89efe88935c0d66142ff7758e3f3b1db93a7b0d0d572641f43a43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257823374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bbf16901b3bc6402dc9b3dc5cc92c54bcc53326482616d9adf74c3e4f316fbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_MAJOR=2.4
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_VERSION=2.4.6
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Wed, 08 May 2019 01:44:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:44:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:44:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:44:03 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:35:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:36:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:36:35 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:36:36 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:36:36 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:36:37 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_VERSION=3.4.10
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Wed, 08 May 2019 08:36:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:42:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:42:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:42:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:42:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:42:24 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:42:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 08 May 2019 08:42:38 GMT
ENV PASSENGER_VERSION=6.0.2
# Wed, 08 May 2019 08:43:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:43:04 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 08 May 2019 08:43:04 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 08 May 2019 08:43:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8aaa644d8aa28de78acf1c76fec776b26319b3e3935aa6022271a65b1c3a878`  
		Last Modified: Wed, 08 May 2019 02:00:10 GMT  
		Size: 20.7 MB (20740406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef726528941ce73e230e2058984b0f8fccef1c9673971ab99169264b49ae67dc`  
		Last Modified: Wed, 08 May 2019 02:00:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08f9a4be19992400887425085dd466f469328574f43e4a78782c16867ee024`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2575fbbb536f11be39f6cd6e1e3b9138aaa780ee3f5ca820494bb406e54ffd`  
		Last Modified: Wed, 08 May 2019 08:44:42 GMT  
		Size: 71.9 MB (71897885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a795aed8975f9122851c377b868c35bb22eda4cb134d09775c8bfd2940947759`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.3 MB (1303181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57911335cf52308645c819ed7da7e87f435a16781af0d6c9ec4ffba785dfab75`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc658fd14848fd1aee4498be10a8e348af588384b8f39f7f11520a351b5f7aa`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918953e727b24f7dc8d92e5a9d0387fade444e2446743a95b72cbf1aca282f0`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 2.5 MB (2461298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e9f6cb914c9d9337672632b2c78ffec5f838f295b209fbfae2c40bb8aa7f82`  
		Last Modified: Wed, 08 May 2019 08:44:44 GMT  
		Size: 103.2 MB (103206704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69459b11827231899515bdc4ff315f5dd21466d5c650a44706f9beea6971648b`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1482e0ebb3c218e00dda3873b28a5cda51377073e9e83833936742e88c1563`  
		Last Modified: Wed, 08 May 2019 08:44:56 GMT  
		Size: 19.7 MB (19651881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b095203e9c8a4e4c9494d47a8eace9b870f38b8d7f9a02330616490be5414377`  
		Last Modified: Wed, 08 May 2019 08:44:53 GMT  
		Size: 4.9 MB (4895959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:0560552412b9fcc6f82cdcb9b64dd7ad1eb0482ab2161da0fd936e3620bd9ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:4ecded04f6c89efe88935c0d66142ff7758e3f3b1db93a7b0d0d572641f43a43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257823374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bbf16901b3bc6402dc9b3dc5cc92c54bcc53326482616d9adf74c3e4f316fbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_MAJOR=2.4
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_VERSION=2.4.6
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBY_DOWNLOAD_SHA256=25da31b9815bfa9bba9f9b793c055a40a35c43c6adfb1fdbd81a09099f9b529c
# Wed, 08 May 2019 01:39:49 GMT
ENV RUBYGEMS_VERSION=3.0.3
# Wed, 08 May 2019 01:44:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby -e 'exit(Gem::Version.create(ENV["RUBYGEMS_VERSION"]) > Gem::Version.create(Gem::VERSION))' 	&& gem update --system "$RUBYGEMS_VERSION" && rm -r /root/.gem/ 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:44:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:44:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:44:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:44:03 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:35:36 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:36:35 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:36:35 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:36:36 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:36:36 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:36:37 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_VERSION=3.4.10
# Wed, 08 May 2019 08:36:37 GMT
ENV REDMINE_DOWNLOAD_MD5=8aaab36fa91f9c7b815b96b0f8610d77
# Wed, 08 May 2019 08:36:42 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:42:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:42:23 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:42:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:42:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:42:24 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:42:24 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 08 May 2019 08:42:38 GMT
ENV PASSENGER_VERSION=6.0.2
# Wed, 08 May 2019 08:43:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:43:04 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 08 May 2019 08:43:04 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 08 May 2019 08:43:04 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8aaa644d8aa28de78acf1c76fec776b26319b3e3935aa6022271a65b1c3a878`  
		Last Modified: Wed, 08 May 2019 02:00:10 GMT  
		Size: 20.7 MB (20740406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef726528941ce73e230e2058984b0f8fccef1c9673971ab99169264b49ae67dc`  
		Last Modified: Wed, 08 May 2019 02:00:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08f9a4be19992400887425085dd466f469328574f43e4a78782c16867ee024`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2575fbbb536f11be39f6cd6e1e3b9138aaa780ee3f5ca820494bb406e54ffd`  
		Last Modified: Wed, 08 May 2019 08:44:42 GMT  
		Size: 71.9 MB (71897885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a795aed8975f9122851c377b868c35bb22eda4cb134d09775c8bfd2940947759`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 1.3 MB (1303181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57911335cf52308645c819ed7da7e87f435a16781af0d6c9ec4ffba785dfab75`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc658fd14848fd1aee4498be10a8e348af588384b8f39f7f11520a351b5f7aa`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918953e727b24f7dc8d92e5a9d0387fade444e2446743a95b72cbf1aca282f0`  
		Last Modified: Wed, 08 May 2019 08:44:22 GMT  
		Size: 2.5 MB (2461298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e9f6cb914c9d9337672632b2c78ffec5f838f295b209fbfae2c40bb8aa7f82`  
		Last Modified: Wed, 08 May 2019 08:44:44 GMT  
		Size: 103.2 MB (103206704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69459b11827231899515bdc4ff315f5dd21466d5c650a44706f9beea6971648b`  
		Last Modified: Wed, 08 May 2019 08:44:21 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1482e0ebb3c218e00dda3873b28a5cda51377073e9e83833936742e88c1563`  
		Last Modified: Wed, 08 May 2019 08:44:56 GMT  
		Size: 19.7 MB (19651881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b095203e9c8a4e4c9494d47a8eace9b870f38b8d7f9a02330616490be5414377`  
		Last Modified: Wed, 08 May 2019 08:44:53 GMT  
		Size: 4.9 MB (4895959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4`

```console
$ docker pull redmine@sha256:844945422810bdee4e0b8ff20af672ce0894ff06e338fb0c66955a9efbbc76ff
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

### `redmine:4` - linux; amd64

```console
$ docker pull redmine@sha256:8c6c7a0e9078eb135ea2c24b9e4f00a67a97583665f282338ea2cf8fcb288098
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231308120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1983e96b9a866b3ab8074a11474cdccf538ac19e9cb3556bac35f475b61d8ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:32:31 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 01:35:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:35:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:35:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:35:47 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:27:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:28:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:28:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:28:44 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:28:44 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:28:45 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:28:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 08:28:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:34:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:34:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:34:49 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:34:49 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:34:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d89c2bd9682f24a676f380aa0359172017a3a57721dfb49227b4ea0cd8d5ce`  
		Last Modified: Wed, 08 May 2019 01:59:41 GMT  
		Size: 19.9 MB (19903676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e96c0ae601685b2806bf797b857db62399dd88479bd54d3b9fe4997b04838`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a3cc17ab4046548f6a13721fb4a8e9552324fdd72c9f3ca9dfb1f8707411f`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566ae9a069fa748f664f64d43b08a348566edc0e39f7eaa324170bfdcfaf11e`  
		Last Modified: Wed, 08 May 2019 08:43:51 GMT  
		Size: 71.9 MB (71897921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2055114d0a0203b67dddb6f967ab8ce2a0963859b3731b35337201e0c1db185a`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.3 MB (1303097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9c03ca84519d18a8530ee19075c98f40b71c54fde656eb7546de3c121e91bc`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ff68fd7dff1e9bc117bb4720effb6c42e67b536f4d965e1b5d85414586a7e`  
		Last Modified: Wed, 08 May 2019 08:43:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327fc7583382c53a4add0ac434d69e9b0eacf198a6234e26386bbf6d1d122c7f`  
		Last Modified: Wed, 08 May 2019 08:43:30 GMT  
		Size: 2.5 MB (2528676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12bc05a303895c2f4f92cebcde42bd776afb15ad4a90353eb9daf880693c36d`  
		Last Modified: Wed, 08 May 2019 08:43:55 GMT  
		Size: 102.0 MB (102008694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e506a3f505c5998ddb62f469a426e133982e1f5578ac8433cb7fe0279247ae72`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:4d003b570f9808d0b7fc4b1da40fa6a8d2b307ae4e35a4a8d645b73b6da95c76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219508310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379205062924352c1381721105f1ae68bcfe4a0806545de81974afa6ea730230`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:00:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:01:02 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 12:01:04 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 12:04:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 12:04:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:04:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 12:04:26 GMT
CMD ["irb"]
# Wed, 08 May 2019 17:10:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 17:11:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:11:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:11:45 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 17:11:45 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 17:11:46 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 17:11:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 17:11:47 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 17:11:48 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 17:11:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 17:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:18:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 17:18:42 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 17:18:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 17:18:43 GMT
EXPOSE 3000
# Wed, 08 May 2019 17:18:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f94a64a34ca9d2b6b24bb8989e217cf2e7f790f2165d28579bc4fe45d90a8`  
		Last Modified: Wed, 08 May 2019 12:41:38 GMT  
		Size: 9.6 MB (9602563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9eecfb061ad8148013649b45d9cbe2f6235d8d5da8ac1a9640d73d96acd77c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e832425d7f0f4f1aa7e73fe199d50669f0f05959cf9b6c0c7e493035de37e53`  
		Last Modified: Wed, 08 May 2019 12:41:34 GMT  
		Size: 19.5 MB (19462424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c75b03f1f6952da1040b40510fe556f535e344fa678119332af9d008590d0c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd40f3e7ab120b50e288ae167d768bb72d995e43e17e0ab676a495eec9518285`  
		Last Modified: Wed, 08 May 2019 17:26:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4cb63a8550eeb6d3b2da44841846b2544b3c6332057d0c8303aa2e82e82ac4`  
		Last Modified: Wed, 08 May 2019 17:27:03 GMT  
		Size: 68.9 MB (68919239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b12676eb8f4c104c00182d2f71d829eeac0777baeebc01bbefa008922d00c`  
		Last Modified: Wed, 08 May 2019 17:26:40 GMT  
		Size: 1.3 MB (1261822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc366d72069ed0c9b273727dffe9288c6a0c41ff39624cddd3883f4df11ac519`  
		Last Modified: Wed, 08 May 2019 17:26:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402d9faf880871286c4cf103cb68ca8f216b701abe1d4fc2bb2c3d9d52c5bc7d`  
		Last Modified: Wed, 08 May 2019 17:26:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bee0f2e27c321a18c406d538d4f950a1cd1994e083acebfa87d9a2b8bbd678c`  
		Last Modified: Wed, 08 May 2019 17:26:40 GMT  
		Size: 2.5 MB (2529015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0268f6f3e90e5e52fe705582167c8cc0e6efebc66552936d907695c8858e3a4b`  
		Last Modified: Wed, 08 May 2019 17:27:06 GMT  
		Size: 96.6 MB (96572973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a404d2b1d037a36015cd5d94a453d96bc359e9ef10d656aa5bbc80ebfd5a81`  
		Last Modified: Wed, 08 May 2019 17:26:39 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f9eaec6e64fa1a82eb1384d67ab5e2baed2db027e3dd4390362b2f48633d40df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212225766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9dfa9805ea0768cdfa894656618ad864c17cbec919584bec622c1e89f84c362`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:02:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:02:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:02:40 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:10:35 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:10:37 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:13:46 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:13:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:13:53 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 12:34:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 12:35:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 12:35:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:35:24 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 12:35:25 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 12:35:25 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 12:35:26 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 12:35:27 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 12:35:27 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 12:35:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 12:41:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:41:02 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 12:41:02 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 12:41:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 12:41:03 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 12:41:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c49cc9bf813783c8adad9a8112b31eb2329d6e61f1f236daa69ead9b7c5ae3`  
		Last Modified: Wed, 27 Mar 2019 15:53:45 GMT  
		Size: 9.1 MB (9079104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819e11271eca83204620d6fb3eeb33dd25ff007c2b251045f34cc378acf4f0cd`  
		Last Modified: Wed, 27 Mar 2019 15:53:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8871fe4978fa4225668bbc026b62412b971d07ac7df05f300ad4d4d59daa0d97`  
		Last Modified: Thu, 18 Apr 2019 12:18:20 GMT  
		Size: 19.3 MB (19293275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af854397c90109de28033b52b306dac3e5f40c9231e0b6223e84084c20ff496e`  
		Last Modified: Thu, 18 Apr 2019 12:18:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7853998dc95b1ac2407d11e9b0c0520d6ae3a4e4bb178945946a3dc28c39e9`  
		Last Modified: Thu, 18 Apr 2019 12:41:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0b9ba0e08ebf05c1d079d540b2fe6a8a967a0a59897cb0a0e3979653ea7450`  
		Last Modified: Thu, 18 Apr 2019 12:41:44 GMT  
		Size: 65.7 MB (65734196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29632696b803d835196f14a51775b543bfe55221c525493d2fc21f1004ac34d8`  
		Last Modified: Thu, 18 Apr 2019 12:41:22 GMT  
		Size: 1.3 MB (1253318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f111acfa612ed316e23fd92dd9f714d4610baf2b9001644f0155ca81064e5cad`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de086192f308a6cc96e92af74b1422aa1a6b1a7b2b4b0314c8932597ec8f6209`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4c8ec52ca5d18b51e40287bb2ae8f73813f41c0633901fb2c205dfacec79fa`  
		Last Modified: Thu, 18 Apr 2019 12:41:23 GMT  
		Size: 2.5 MB (2529015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3366ab283f5c45ba9ec1760ee9ce3d2a402f9a391742d85356f6f1ef12fecc18`  
		Last Modified: Thu, 18 Apr 2019 12:41:49 GMT  
		Size: 95.0 MB (95049998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713e5cc3addb32a6792ddebaa3032f9dfc5a6cc190acab8fcfac13649bbd050`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 2.0 KB (1952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:6cf97aeff1874647e88927d807be3508a0f1ca5a7e7ae03ee51e81d182961cdf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.7 MB (217710141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3afb8a0c80e2e0caf6be9451c2e6f48564532c254cb75976235a6ffd4c7a108e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:11:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:11:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 18:11:35 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:50:15 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:50:16 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 10:00:08 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 10:00:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 10:00:14 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 10:00:15 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 11:08:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 11:10:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 11:10:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 11:10:47 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 11:10:48 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 11:10:49 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 11:10:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 11:10:56 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 11:10:59 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 11:11:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 11:24:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 11:24:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 11:24:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 11:24:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 11:24:32 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 11:24:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c613f8affe15c08d52860f2f82976cd28108920773a126f5e8ed34502e416d`  
		Last Modified: Wed, 27 Mar 2019 19:16:39 GMT  
		Size: 9.9 MB (9918759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81067de155e8674a09c1ef1804197185b69e8b1612def4b315c465fc582fe34`  
		Last Modified: Wed, 27 Mar 2019 19:16:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07bcfa82ce7a1f78426d87b6a2f3444460b359644bc06066ab9080e0458e55a`  
		Last Modified: Thu, 18 Apr 2019 10:16:55 GMT  
		Size: 19.7 MB (19665508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cc090ec1ad1d3be01ab0d4f4306764aeff5a29f9343e0cbc9b029793282c85`  
		Last Modified: Thu, 18 Apr 2019 10:16:50 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff998828541bfa780c6981f2fa2e060db4dc304f033aecf3011d937d106648`  
		Last Modified: Thu, 18 Apr 2019 11:25:03 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbab5db03c312cade16f6bb6d96fb163f7ad197370efc3073799c8886f8b9b`  
		Last Modified: Thu, 18 Apr 2019 11:25:28 GMT  
		Size: 67.8 MB (67815169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2c00a77ec773965b67b0b0ea559dfeb968a042d116e41067034d86bbb70a1f`  
		Last Modified: Thu, 18 Apr 2019 11:25:03 GMT  
		Size: 1.2 MB (1238739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a914203d9f04b7f7f3fdd6b6d246e2dc0794be59b45f70179d524c6d0a40c724`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a71a7e49b65b88280c4ec6f5bd8afcfd11c207cb789365ac4dd06227e65fdf6`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ef131c83392cb341b2416716a9ed2a261630fab1e4894c70d47e116e7c15eb`  
		Last Modified: Thu, 18 Apr 2019 11:25:01 GMT  
		Size: 2.5 MB (2528674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13385b5ad7b9c33738c094cb7eb7d64b95ff3a51c55640b571aee40befc8ae8`  
		Last Modified: Thu, 18 Apr 2019 11:25:55 GMT  
		Size: 96.2 MB (96198783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb129dcaf67729dadb0de750053c8c999f7702854e5c2446985369e6d13fb76`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; 386

```console
$ docker pull redmine@sha256:3911d99abdc3e802b747af9385d241af352fa50714209557a95d64d21ed4b733
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235187326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7766788e02098383f04963db4b71290c0027bf86a87b58b8d77f14238332d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 20:55:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:55:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 20:55:09 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:11:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:11:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:11:44 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:11:44 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 12:34:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 12:35:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 12:35:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:35:41 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 12:35:41 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 12:35:41 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 12:35:42 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 12:35:42 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 12:35:42 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 12:35:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 12:39:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:39:09 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 12:39:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 12:39:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 12:39:10 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 12:39:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d932b8f9eea89a08c5e1b3c174cd1d280f9caf519ee3a1a0612423a9c55a66b`  
		Last Modified: Wed, 27 Mar 2019 21:55:51 GMT  
		Size: 14.7 MB (14650447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9b4729012ad4092c8f82377a8f2a612e1afd2905d844300da2fc817ad770cf`  
		Last Modified: Wed, 27 Mar 2019 21:55:47 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74571d682e80329765a1f60b2c17dfd9f6d9f4346b6fe945e0d3e173ac8acc3`  
		Last Modified: Thu, 18 Apr 2019 12:19:11 GMT  
		Size: 19.4 MB (19438293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75eafaf3a5e5121801dba635dca944584a84b223b15cbb11ab05cd80af134678`  
		Last Modified: Thu, 18 Apr 2019 12:19:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998255f42da72d4a644ae9b0178e695602890c2e4bcf2cd802193b16f6ec9660`  
		Last Modified: Thu, 18 Apr 2019 12:39:35 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b2a6fa2c8824c6f34e1247a347081bae0fadc857a1a84ba9e9ba77534cd81`  
		Last Modified: Thu, 18 Apr 2019 12:39:56 GMT  
		Size: 73.8 MB (73846925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b5d27eb29ef4000553cd9354a2551ad3bdc4bf88a158238ad777c37a59a420`  
		Last Modified: Thu, 18 Apr 2019 12:39:36 GMT  
		Size: 1.3 MB (1270284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938535ec2a7b1f4fdf4cc1ea4d0600204ddfc904c863e49ae2ae5a9aee9f5c7f`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaa057e056718e836ed36f791a21761b69454a1f77be4d620fd1b190dad782d`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b09c5734fee67465ea28de20159e696c2e59b3e030bad93c075d492061f917`  
		Last Modified: Thu, 18 Apr 2019 12:39:35 GMT  
		Size: 2.5 MB (2528681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4eda864429ce32ce99c8ac8d75c64699f983d964f5bd9e11c43b7570866758`  
		Last Modified: Thu, 18 Apr 2019 12:39:57 GMT  
		Size: 100.3 MB (100322638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9edf17768fea7c086ad31e55f8617123c95b199a977891e055c1d00bcc044d8`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; ppc64le

```console
$ docker pull redmine@sha256:6e023b76b96d504cbf9248e48520d80a079983bc72d001293489a61b7cdb15a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (226961498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22242600dfce8d9b390cf695152b115d7f0602a7545f6291b704b24ce34ff50a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:39:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 12:40:07 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:10:18 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:10:21 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 09:17:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 09:17:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 09:18:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 09:18:06 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 09:44:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 09:48:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 09:48:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 09:49:01 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 09:49:07 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 09:49:13 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 09:49:26 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 09:49:33 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 09:49:36 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 09:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 09:59:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 09:59:10 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 09:59:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 09:59:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 09:59:16 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 09:59:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4fe728e78dd4b2706ccada38f5536db9f302d42b74b93d814d8e7a486504fa`  
		Last Modified: Wed, 27 Mar 2019 13:27:43 GMT  
		Size: 10.6 MB (10579362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc6f4b16bfffc24a0be21b65f2fad900773298f7f4f0ca4833e6f1fa8311a2e`  
		Last Modified: Wed, 27 Mar 2019 13:27:36 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7dab7d204e930fa3f2611592ea95b93bff2d000e734a6b3373d0ef9652f834`  
		Last Modified: Thu, 18 Apr 2019 09:27:42 GMT  
		Size: 20.1 MB (20101021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b139d05b11ad61a24565cee416c596a65a761d6368c12c3f002c8ab43d5f18`  
		Last Modified: Thu, 18 Apr 2019 09:27:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e58a44245693e8589899b5d94b8aec2ac22667896ebd8f9dee89b70c34f4d22`  
		Last Modified: Thu, 18 Apr 2019 09:59:47 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff76ea5411044284d64a856b573b8457d4bcdaf8cdb4831ac474a3b6ec1b7ce1`  
		Last Modified: Thu, 18 Apr 2019 10:00:09 GMT  
		Size: 71.1 MB (71116312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77f7404bbde19b72f955bd1d2f242a7cb3160798c0be498081ea8feb91442f6`  
		Last Modified: Thu, 18 Apr 2019 09:59:47 GMT  
		Size: 1.2 MB (1227806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6080d543d88fe8eb1c1af098109511d054af0f16ae4b1b1eeffaa5abaf201783`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6327ef9542a8676cbed8f8ba0f1ed34152499f3932879084d5797d661682b5a5`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3599058d629756ca2639ed278d6f464a49104d49d148d387091c92fa454398`  
		Last Modified: Thu, 18 Apr 2019 09:59:44 GMT  
		Size: 2.5 MB (2529014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c03b0abe62944be73c4afcb6d50724260114d7332eb9aaa3f3174f5b45b84d`  
		Last Modified: Thu, 18 Apr 2019 10:00:07 GMT  
		Size: 98.7 MB (98652169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec05c30a2a4638605c19ebbb987d279e27bc612c8ef5b202115c86c30a1335c3`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4` - linux; s390x

```console
$ docker pull redmine@sha256:c84a9cb15ce3bc7678d78c2e96656c9684e96e210b4ec2a0c296dbbc12a77d0d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227570364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6845e34854c348ad6d9ed989c414020040831c1ab5eae8bc87158b375fb54c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:32 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:24:32 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 15:42:26 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 15:42:27 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 15:47:57 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 15:47:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 15:48:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 15:48:01 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 16:16:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 16:17:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 16:17:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 16:17:22 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 16:17:22 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 16:17:23 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 16:17:25 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 16:17:25 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 16:17:26 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 16:17:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 16:25:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 16:25:22 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 16:25:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 16:25:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 16:25:25 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 16:25:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136d6190ab77b3e9ab9c467fa4d462ec05bc3271cd4c5f140aa2805f83851db`  
		Last Modified: Wed, 27 Mar 2019 15:49:43 GMT  
		Size: 11.6 MB (11577628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a0b1fb24a2e46e9629ed6f6b483f560041432e96e86e23159dbbfdab02bb6`  
		Last Modified: Wed, 27 Mar 2019 15:49:39 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d24879684d4a4e8b4570e50a16d905c1f033b3ef1482c8bdc8fd2b479982c6`  
		Last Modified: Thu, 18 Apr 2019 15:59:29 GMT  
		Size: 20.3 MB (20266423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c0c98aa1ad53de5760a95d495beabe07dcfc056fb8a9d3116aff75ed46568`  
		Last Modified: Thu, 18 Apr 2019 15:59:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a149fe33e25312d2356c46daa793cbb13805388c3b07c2ed4008827263e8a9`  
		Last Modified: Thu, 18 Apr 2019 16:26:08 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c33095e3a509d321366bfbd9be9c8a48eebe8eb96a24afe8cd6e5647622ef6`  
		Last Modified: Thu, 18 Apr 2019 16:26:44 GMT  
		Size: 71.7 MB (71744886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab576454fa1bf1fec6caa58ca3bebc2bc8cda5dae9184eacea6ca2ff61b975ec`  
		Last Modified: Thu, 18 Apr 2019 16:26:10 GMT  
		Size: 1.3 MB (1293024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c97981d39d6c393c90059c941645ef8e802afe6a40e21e5fb8fd5021df2269`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f2e053d32c7e528e0e4598cc04364418be5fe451c4672f7e65c22a45a8c269`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8049a8de95a527bb006c5d4fd8e63b8a1dc3d654cdcadbdb098b603b331db85a`  
		Last Modified: Thu, 18 Apr 2019 16:26:11 GMT  
		Size: 2.5 MB (2528677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5d016fe5289a86bb8b54217503ff57f25cb51b86217f01d00fbe9d3b7e3df6`  
		Last Modified: Thu, 18 Apr 2019 16:26:46 GMT  
		Size: 97.8 MB (97810118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffe76666eae7ac3ca24b3d68efafbe8ff7b94618f615a8c9798b5c164226fba`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0`

```console
$ docker pull redmine@sha256:844945422810bdee4e0b8ff20af672ce0894ff06e338fb0c66955a9efbbc76ff
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

### `redmine:4.0` - linux; amd64

```console
$ docker pull redmine@sha256:8c6c7a0e9078eb135ea2c24b9e4f00a67a97583665f282338ea2cf8fcb288098
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231308120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1983e96b9a866b3ab8074a11474cdccf538ac19e9cb3556bac35f475b61d8ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:32:31 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 01:35:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:35:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:35:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:35:47 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:27:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:28:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:28:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:28:44 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:28:44 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:28:45 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:28:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 08:28:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:34:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:34:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:34:49 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:34:49 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:34:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d89c2bd9682f24a676f380aa0359172017a3a57721dfb49227b4ea0cd8d5ce`  
		Last Modified: Wed, 08 May 2019 01:59:41 GMT  
		Size: 19.9 MB (19903676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e96c0ae601685b2806bf797b857db62399dd88479bd54d3b9fe4997b04838`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a3cc17ab4046548f6a13721fb4a8e9552324fdd72c9f3ca9dfb1f8707411f`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566ae9a069fa748f664f64d43b08a348566edc0e39f7eaa324170bfdcfaf11e`  
		Last Modified: Wed, 08 May 2019 08:43:51 GMT  
		Size: 71.9 MB (71897921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2055114d0a0203b67dddb6f967ab8ce2a0963859b3731b35337201e0c1db185a`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.3 MB (1303097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9c03ca84519d18a8530ee19075c98f40b71c54fde656eb7546de3c121e91bc`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ff68fd7dff1e9bc117bb4720effb6c42e67b536f4d965e1b5d85414586a7e`  
		Last Modified: Wed, 08 May 2019 08:43:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327fc7583382c53a4add0ac434d69e9b0eacf198a6234e26386bbf6d1d122c7f`  
		Last Modified: Wed, 08 May 2019 08:43:30 GMT  
		Size: 2.5 MB (2528676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12bc05a303895c2f4f92cebcde42bd776afb15ad4a90353eb9daf880693c36d`  
		Last Modified: Wed, 08 May 2019 08:43:55 GMT  
		Size: 102.0 MB (102008694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e506a3f505c5998ddb62f469a426e133982e1f5578ac8433cb7fe0279247ae72`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; arm variant v5

```console
$ docker pull redmine@sha256:4d003b570f9808d0b7fc4b1da40fa6a8d2b307ae4e35a4a8d645b73b6da95c76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219508310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379205062924352c1381721105f1ae68bcfe4a0806545de81974afa6ea730230`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:00:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:01:02 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 12:01:04 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 12:04:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 12:04:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:04:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 12:04:26 GMT
CMD ["irb"]
# Wed, 08 May 2019 17:10:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 17:11:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:11:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:11:45 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 17:11:45 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 17:11:46 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 17:11:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 17:11:47 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 17:11:48 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 17:11:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 17:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:18:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 17:18:42 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 17:18:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 17:18:43 GMT
EXPOSE 3000
# Wed, 08 May 2019 17:18:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f94a64a34ca9d2b6b24bb8989e217cf2e7f790f2165d28579bc4fe45d90a8`  
		Last Modified: Wed, 08 May 2019 12:41:38 GMT  
		Size: 9.6 MB (9602563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9eecfb061ad8148013649b45d9cbe2f6235d8d5da8ac1a9640d73d96acd77c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e832425d7f0f4f1aa7e73fe199d50669f0f05959cf9b6c0c7e493035de37e53`  
		Last Modified: Wed, 08 May 2019 12:41:34 GMT  
		Size: 19.5 MB (19462424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c75b03f1f6952da1040b40510fe556f535e344fa678119332af9d008590d0c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd40f3e7ab120b50e288ae167d768bb72d995e43e17e0ab676a495eec9518285`  
		Last Modified: Wed, 08 May 2019 17:26:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4cb63a8550eeb6d3b2da44841846b2544b3c6332057d0c8303aa2e82e82ac4`  
		Last Modified: Wed, 08 May 2019 17:27:03 GMT  
		Size: 68.9 MB (68919239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b12676eb8f4c104c00182d2f71d829eeac0777baeebc01bbefa008922d00c`  
		Last Modified: Wed, 08 May 2019 17:26:40 GMT  
		Size: 1.3 MB (1261822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc366d72069ed0c9b273727dffe9288c6a0c41ff39624cddd3883f4df11ac519`  
		Last Modified: Wed, 08 May 2019 17:26:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402d9faf880871286c4cf103cb68ca8f216b701abe1d4fc2bb2c3d9d52c5bc7d`  
		Last Modified: Wed, 08 May 2019 17:26:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bee0f2e27c321a18c406d538d4f950a1cd1994e083acebfa87d9a2b8bbd678c`  
		Last Modified: Wed, 08 May 2019 17:26:40 GMT  
		Size: 2.5 MB (2529015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0268f6f3e90e5e52fe705582167c8cc0e6efebc66552936d907695c8858e3a4b`  
		Last Modified: Wed, 08 May 2019 17:27:06 GMT  
		Size: 96.6 MB (96572973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a404d2b1d037a36015cd5d94a453d96bc359e9ef10d656aa5bbc80ebfd5a81`  
		Last Modified: Wed, 08 May 2019 17:26:39 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f9eaec6e64fa1a82eb1384d67ab5e2baed2db027e3dd4390362b2f48633d40df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212225766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9dfa9805ea0768cdfa894656618ad864c17cbec919584bec622c1e89f84c362`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:02:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:02:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:02:40 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:10:35 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:10:37 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:13:46 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:13:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:13:53 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 12:34:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 12:35:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 12:35:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:35:24 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 12:35:25 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 12:35:25 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 12:35:26 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 12:35:27 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 12:35:27 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 12:35:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 12:41:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:41:02 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 12:41:02 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 12:41:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 12:41:03 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 12:41:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c49cc9bf813783c8adad9a8112b31eb2329d6e61f1f236daa69ead9b7c5ae3`  
		Last Modified: Wed, 27 Mar 2019 15:53:45 GMT  
		Size: 9.1 MB (9079104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819e11271eca83204620d6fb3eeb33dd25ff007c2b251045f34cc378acf4f0cd`  
		Last Modified: Wed, 27 Mar 2019 15:53:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8871fe4978fa4225668bbc026b62412b971d07ac7df05f300ad4d4d59daa0d97`  
		Last Modified: Thu, 18 Apr 2019 12:18:20 GMT  
		Size: 19.3 MB (19293275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af854397c90109de28033b52b306dac3e5f40c9231e0b6223e84084c20ff496e`  
		Last Modified: Thu, 18 Apr 2019 12:18:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7853998dc95b1ac2407d11e9b0c0520d6ae3a4e4bb178945946a3dc28c39e9`  
		Last Modified: Thu, 18 Apr 2019 12:41:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0b9ba0e08ebf05c1d079d540b2fe6a8a967a0a59897cb0a0e3979653ea7450`  
		Last Modified: Thu, 18 Apr 2019 12:41:44 GMT  
		Size: 65.7 MB (65734196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29632696b803d835196f14a51775b543bfe55221c525493d2fc21f1004ac34d8`  
		Last Modified: Thu, 18 Apr 2019 12:41:22 GMT  
		Size: 1.3 MB (1253318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f111acfa612ed316e23fd92dd9f714d4610baf2b9001644f0155ca81064e5cad`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de086192f308a6cc96e92af74b1422aa1a6b1a7b2b4b0314c8932597ec8f6209`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4c8ec52ca5d18b51e40287bb2ae8f73813f41c0633901fb2c205dfacec79fa`  
		Last Modified: Thu, 18 Apr 2019 12:41:23 GMT  
		Size: 2.5 MB (2529015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3366ab283f5c45ba9ec1760ee9ce3d2a402f9a391742d85356f6f1ef12fecc18`  
		Last Modified: Thu, 18 Apr 2019 12:41:49 GMT  
		Size: 95.0 MB (95049998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713e5cc3addb32a6792ddebaa3032f9dfc5a6cc190acab8fcfac13649bbd050`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 2.0 KB (1952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:6cf97aeff1874647e88927d807be3508a0f1ca5a7e7ae03ee51e81d182961cdf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.7 MB (217710141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3afb8a0c80e2e0caf6be9451c2e6f48564532c254cb75976235a6ffd4c7a108e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:11:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:11:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 18:11:35 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:50:15 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:50:16 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 10:00:08 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 10:00:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 10:00:14 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 10:00:15 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 11:08:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 11:10:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 11:10:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 11:10:47 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 11:10:48 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 11:10:49 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 11:10:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 11:10:56 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 11:10:59 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 11:11:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 11:24:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 11:24:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 11:24:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 11:24:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 11:24:32 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 11:24:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c613f8affe15c08d52860f2f82976cd28108920773a126f5e8ed34502e416d`  
		Last Modified: Wed, 27 Mar 2019 19:16:39 GMT  
		Size: 9.9 MB (9918759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81067de155e8674a09c1ef1804197185b69e8b1612def4b315c465fc582fe34`  
		Last Modified: Wed, 27 Mar 2019 19:16:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07bcfa82ce7a1f78426d87b6a2f3444460b359644bc06066ab9080e0458e55a`  
		Last Modified: Thu, 18 Apr 2019 10:16:55 GMT  
		Size: 19.7 MB (19665508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cc090ec1ad1d3be01ab0d4f4306764aeff5a29f9343e0cbc9b029793282c85`  
		Last Modified: Thu, 18 Apr 2019 10:16:50 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff998828541bfa780c6981f2fa2e060db4dc304f033aecf3011d937d106648`  
		Last Modified: Thu, 18 Apr 2019 11:25:03 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbab5db03c312cade16f6bb6d96fb163f7ad197370efc3073799c8886f8b9b`  
		Last Modified: Thu, 18 Apr 2019 11:25:28 GMT  
		Size: 67.8 MB (67815169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2c00a77ec773965b67b0b0ea559dfeb968a042d116e41067034d86bbb70a1f`  
		Last Modified: Thu, 18 Apr 2019 11:25:03 GMT  
		Size: 1.2 MB (1238739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a914203d9f04b7f7f3fdd6b6d246e2dc0794be59b45f70179d524c6d0a40c724`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a71a7e49b65b88280c4ec6f5bd8afcfd11c207cb789365ac4dd06227e65fdf6`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ef131c83392cb341b2416716a9ed2a261630fab1e4894c70d47e116e7c15eb`  
		Last Modified: Thu, 18 Apr 2019 11:25:01 GMT  
		Size: 2.5 MB (2528674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13385b5ad7b9c33738c094cb7eb7d64b95ff3a51c55640b571aee40befc8ae8`  
		Last Modified: Thu, 18 Apr 2019 11:25:55 GMT  
		Size: 96.2 MB (96198783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb129dcaf67729dadb0de750053c8c999f7702854e5c2446985369e6d13fb76`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; 386

```console
$ docker pull redmine@sha256:3911d99abdc3e802b747af9385d241af352fa50714209557a95d64d21ed4b733
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235187326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7766788e02098383f04963db4b71290c0027bf86a87b58b8d77f14238332d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 20:55:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:55:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 20:55:09 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:11:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:11:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:11:44 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:11:44 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 12:34:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 12:35:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 12:35:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:35:41 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 12:35:41 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 12:35:41 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 12:35:42 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 12:35:42 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 12:35:42 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 12:35:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 12:39:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:39:09 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 12:39:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 12:39:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 12:39:10 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 12:39:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d932b8f9eea89a08c5e1b3c174cd1d280f9caf519ee3a1a0612423a9c55a66b`  
		Last Modified: Wed, 27 Mar 2019 21:55:51 GMT  
		Size: 14.7 MB (14650447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9b4729012ad4092c8f82377a8f2a612e1afd2905d844300da2fc817ad770cf`  
		Last Modified: Wed, 27 Mar 2019 21:55:47 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74571d682e80329765a1f60b2c17dfd9f6d9f4346b6fe945e0d3e173ac8acc3`  
		Last Modified: Thu, 18 Apr 2019 12:19:11 GMT  
		Size: 19.4 MB (19438293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75eafaf3a5e5121801dba635dca944584a84b223b15cbb11ab05cd80af134678`  
		Last Modified: Thu, 18 Apr 2019 12:19:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998255f42da72d4a644ae9b0178e695602890c2e4bcf2cd802193b16f6ec9660`  
		Last Modified: Thu, 18 Apr 2019 12:39:35 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b2a6fa2c8824c6f34e1247a347081bae0fadc857a1a84ba9e9ba77534cd81`  
		Last Modified: Thu, 18 Apr 2019 12:39:56 GMT  
		Size: 73.8 MB (73846925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b5d27eb29ef4000553cd9354a2551ad3bdc4bf88a158238ad777c37a59a420`  
		Last Modified: Thu, 18 Apr 2019 12:39:36 GMT  
		Size: 1.3 MB (1270284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938535ec2a7b1f4fdf4cc1ea4d0600204ddfc904c863e49ae2ae5a9aee9f5c7f`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaa057e056718e836ed36f791a21761b69454a1f77be4d620fd1b190dad782d`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b09c5734fee67465ea28de20159e696c2e59b3e030bad93c075d492061f917`  
		Last Modified: Thu, 18 Apr 2019 12:39:35 GMT  
		Size: 2.5 MB (2528681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4eda864429ce32ce99c8ac8d75c64699f983d964f5bd9e11c43b7570866758`  
		Last Modified: Thu, 18 Apr 2019 12:39:57 GMT  
		Size: 100.3 MB (100322638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9edf17768fea7c086ad31e55f8617123c95b199a977891e055c1d00bcc044d8`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; ppc64le

```console
$ docker pull redmine@sha256:6e023b76b96d504cbf9248e48520d80a079983bc72d001293489a61b7cdb15a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (226961498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22242600dfce8d9b390cf695152b115d7f0602a7545f6291b704b24ce34ff50a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:39:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 12:40:07 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:10:18 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:10:21 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 09:17:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 09:17:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 09:18:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 09:18:06 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 09:44:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 09:48:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 09:48:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 09:49:01 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 09:49:07 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 09:49:13 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 09:49:26 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 09:49:33 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 09:49:36 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 09:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 09:59:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 09:59:10 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 09:59:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 09:59:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 09:59:16 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 09:59:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4fe728e78dd4b2706ccada38f5536db9f302d42b74b93d814d8e7a486504fa`  
		Last Modified: Wed, 27 Mar 2019 13:27:43 GMT  
		Size: 10.6 MB (10579362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc6f4b16bfffc24a0be21b65f2fad900773298f7f4f0ca4833e6f1fa8311a2e`  
		Last Modified: Wed, 27 Mar 2019 13:27:36 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7dab7d204e930fa3f2611592ea95b93bff2d000e734a6b3373d0ef9652f834`  
		Last Modified: Thu, 18 Apr 2019 09:27:42 GMT  
		Size: 20.1 MB (20101021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b139d05b11ad61a24565cee416c596a65a761d6368c12c3f002c8ab43d5f18`  
		Last Modified: Thu, 18 Apr 2019 09:27:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e58a44245693e8589899b5d94b8aec2ac22667896ebd8f9dee89b70c34f4d22`  
		Last Modified: Thu, 18 Apr 2019 09:59:47 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff76ea5411044284d64a856b573b8457d4bcdaf8cdb4831ac474a3b6ec1b7ce1`  
		Last Modified: Thu, 18 Apr 2019 10:00:09 GMT  
		Size: 71.1 MB (71116312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77f7404bbde19b72f955bd1d2f242a7cb3160798c0be498081ea8feb91442f6`  
		Last Modified: Thu, 18 Apr 2019 09:59:47 GMT  
		Size: 1.2 MB (1227806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6080d543d88fe8eb1c1af098109511d054af0f16ae4b1b1eeffaa5abaf201783`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6327ef9542a8676cbed8f8ba0f1ed34152499f3932879084d5797d661682b5a5`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3599058d629756ca2639ed278d6f464a49104d49d148d387091c92fa454398`  
		Last Modified: Thu, 18 Apr 2019 09:59:44 GMT  
		Size: 2.5 MB (2529014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c03b0abe62944be73c4afcb6d50724260114d7332eb9aaa3f3174f5b45b84d`  
		Last Modified: Thu, 18 Apr 2019 10:00:07 GMT  
		Size: 98.7 MB (98652169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec05c30a2a4638605c19ebbb987d279e27bc612c8ef5b202115c86c30a1335c3`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0` - linux; s390x

```console
$ docker pull redmine@sha256:c84a9cb15ce3bc7678d78c2e96656c9684e96e210b4ec2a0c296dbbc12a77d0d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227570364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6845e34854c348ad6d9ed989c414020040831c1ab5eae8bc87158b375fb54c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:32 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:24:32 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 15:42:26 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 15:42:27 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 15:47:57 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 15:47:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 15:48:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 15:48:01 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 16:16:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 16:17:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 16:17:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 16:17:22 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 16:17:22 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 16:17:23 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 16:17:25 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 16:17:25 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 16:17:26 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 16:17:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 16:25:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 16:25:22 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 16:25:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 16:25:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 16:25:25 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 16:25:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136d6190ab77b3e9ab9c467fa4d462ec05bc3271cd4c5f140aa2805f83851db`  
		Last Modified: Wed, 27 Mar 2019 15:49:43 GMT  
		Size: 11.6 MB (11577628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a0b1fb24a2e46e9629ed6f6b483f560041432e96e86e23159dbbfdab02bb6`  
		Last Modified: Wed, 27 Mar 2019 15:49:39 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d24879684d4a4e8b4570e50a16d905c1f033b3ef1482c8bdc8fd2b479982c6`  
		Last Modified: Thu, 18 Apr 2019 15:59:29 GMT  
		Size: 20.3 MB (20266423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c0c98aa1ad53de5760a95d495beabe07dcfc056fb8a9d3116aff75ed46568`  
		Last Modified: Thu, 18 Apr 2019 15:59:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a149fe33e25312d2356c46daa793cbb13805388c3b07c2ed4008827263e8a9`  
		Last Modified: Thu, 18 Apr 2019 16:26:08 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c33095e3a509d321366bfbd9be9c8a48eebe8eb96a24afe8cd6e5647622ef6`  
		Last Modified: Thu, 18 Apr 2019 16:26:44 GMT  
		Size: 71.7 MB (71744886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab576454fa1bf1fec6caa58ca3bebc2bc8cda5dae9184eacea6ca2ff61b975ec`  
		Last Modified: Thu, 18 Apr 2019 16:26:10 GMT  
		Size: 1.3 MB (1293024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c97981d39d6c393c90059c941645ef8e802afe6a40e21e5fb8fd5021df2269`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f2e053d32c7e528e0e4598cc04364418be5fe451c4672f7e65c22a45a8c269`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8049a8de95a527bb006c5d4fd8e63b8a1dc3d654cdcadbdb098b603b331db85a`  
		Last Modified: Thu, 18 Apr 2019 16:26:11 GMT  
		Size: 2.5 MB (2528677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5d016fe5289a86bb8b54217503ff57f25cb51b86217f01d00fbe9d3b7e3df6`  
		Last Modified: Thu, 18 Apr 2019 16:26:46 GMT  
		Size: 97.8 MB (97810118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffe76666eae7ac3ca24b3d68efafbe8ff7b94618f615a8c9798b5c164226fba`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0.3`

```console
$ docker pull redmine@sha256:844945422810bdee4e0b8ff20af672ce0894ff06e338fb0c66955a9efbbc76ff
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

### `redmine:4.0.3` - linux; amd64

```console
$ docker pull redmine@sha256:8c6c7a0e9078eb135ea2c24b9e4f00a67a97583665f282338ea2cf8fcb288098
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231308120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1983e96b9a866b3ab8074a11474cdccf538ac19e9cb3556bac35f475b61d8ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:32:31 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 01:35:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:35:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:35:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:35:47 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:27:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:28:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:28:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:28:44 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:28:44 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:28:45 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:28:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 08:28:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:34:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:34:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:34:49 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:34:49 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:34:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d89c2bd9682f24a676f380aa0359172017a3a57721dfb49227b4ea0cd8d5ce`  
		Last Modified: Wed, 08 May 2019 01:59:41 GMT  
		Size: 19.9 MB (19903676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e96c0ae601685b2806bf797b857db62399dd88479bd54d3b9fe4997b04838`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a3cc17ab4046548f6a13721fb4a8e9552324fdd72c9f3ca9dfb1f8707411f`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566ae9a069fa748f664f64d43b08a348566edc0e39f7eaa324170bfdcfaf11e`  
		Last Modified: Wed, 08 May 2019 08:43:51 GMT  
		Size: 71.9 MB (71897921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2055114d0a0203b67dddb6f967ab8ce2a0963859b3731b35337201e0c1db185a`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.3 MB (1303097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9c03ca84519d18a8530ee19075c98f40b71c54fde656eb7546de3c121e91bc`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ff68fd7dff1e9bc117bb4720effb6c42e67b536f4d965e1b5d85414586a7e`  
		Last Modified: Wed, 08 May 2019 08:43:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327fc7583382c53a4add0ac434d69e9b0eacf198a6234e26386bbf6d1d122c7f`  
		Last Modified: Wed, 08 May 2019 08:43:30 GMT  
		Size: 2.5 MB (2528676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12bc05a303895c2f4f92cebcde42bd776afb15ad4a90353eb9daf880693c36d`  
		Last Modified: Wed, 08 May 2019 08:43:55 GMT  
		Size: 102.0 MB (102008694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e506a3f505c5998ddb62f469a426e133982e1f5578ac8433cb7fe0279247ae72`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:4d003b570f9808d0b7fc4b1da40fa6a8d2b307ae4e35a4a8d645b73b6da95c76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219508310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379205062924352c1381721105f1ae68bcfe4a0806545de81974afa6ea730230`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:00:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:01:02 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 12:01:04 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 12:04:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 12:04:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:04:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 12:04:26 GMT
CMD ["irb"]
# Wed, 08 May 2019 17:10:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 17:11:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:11:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:11:45 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 17:11:45 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 17:11:46 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 17:11:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 17:11:47 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 17:11:48 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 17:11:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 17:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:18:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 17:18:42 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 17:18:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 17:18:43 GMT
EXPOSE 3000
# Wed, 08 May 2019 17:18:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f94a64a34ca9d2b6b24bb8989e217cf2e7f790f2165d28579bc4fe45d90a8`  
		Last Modified: Wed, 08 May 2019 12:41:38 GMT  
		Size: 9.6 MB (9602563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9eecfb061ad8148013649b45d9cbe2f6235d8d5da8ac1a9640d73d96acd77c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e832425d7f0f4f1aa7e73fe199d50669f0f05959cf9b6c0c7e493035de37e53`  
		Last Modified: Wed, 08 May 2019 12:41:34 GMT  
		Size: 19.5 MB (19462424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c75b03f1f6952da1040b40510fe556f535e344fa678119332af9d008590d0c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd40f3e7ab120b50e288ae167d768bb72d995e43e17e0ab676a495eec9518285`  
		Last Modified: Wed, 08 May 2019 17:26:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4cb63a8550eeb6d3b2da44841846b2544b3c6332057d0c8303aa2e82e82ac4`  
		Last Modified: Wed, 08 May 2019 17:27:03 GMT  
		Size: 68.9 MB (68919239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b12676eb8f4c104c00182d2f71d829eeac0777baeebc01bbefa008922d00c`  
		Last Modified: Wed, 08 May 2019 17:26:40 GMT  
		Size: 1.3 MB (1261822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc366d72069ed0c9b273727dffe9288c6a0c41ff39624cddd3883f4df11ac519`  
		Last Modified: Wed, 08 May 2019 17:26:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402d9faf880871286c4cf103cb68ca8f216b701abe1d4fc2bb2c3d9d52c5bc7d`  
		Last Modified: Wed, 08 May 2019 17:26:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bee0f2e27c321a18c406d538d4f950a1cd1994e083acebfa87d9a2b8bbd678c`  
		Last Modified: Wed, 08 May 2019 17:26:40 GMT  
		Size: 2.5 MB (2529015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0268f6f3e90e5e52fe705582167c8cc0e6efebc66552936d907695c8858e3a4b`  
		Last Modified: Wed, 08 May 2019 17:27:06 GMT  
		Size: 96.6 MB (96572973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a404d2b1d037a36015cd5d94a453d96bc359e9ef10d656aa5bbc80ebfd5a81`  
		Last Modified: Wed, 08 May 2019 17:26:39 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f9eaec6e64fa1a82eb1384d67ab5e2baed2db027e3dd4390362b2f48633d40df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212225766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9dfa9805ea0768cdfa894656618ad864c17cbec919584bec622c1e89f84c362`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:02:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:02:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:02:40 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:10:35 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:10:37 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:13:46 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:13:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:13:53 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 12:34:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 12:35:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 12:35:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:35:24 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 12:35:25 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 12:35:25 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 12:35:26 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 12:35:27 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 12:35:27 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 12:35:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 12:41:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:41:02 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 12:41:02 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 12:41:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 12:41:03 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 12:41:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c49cc9bf813783c8adad9a8112b31eb2329d6e61f1f236daa69ead9b7c5ae3`  
		Last Modified: Wed, 27 Mar 2019 15:53:45 GMT  
		Size: 9.1 MB (9079104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819e11271eca83204620d6fb3eeb33dd25ff007c2b251045f34cc378acf4f0cd`  
		Last Modified: Wed, 27 Mar 2019 15:53:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8871fe4978fa4225668bbc026b62412b971d07ac7df05f300ad4d4d59daa0d97`  
		Last Modified: Thu, 18 Apr 2019 12:18:20 GMT  
		Size: 19.3 MB (19293275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af854397c90109de28033b52b306dac3e5f40c9231e0b6223e84084c20ff496e`  
		Last Modified: Thu, 18 Apr 2019 12:18:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7853998dc95b1ac2407d11e9b0c0520d6ae3a4e4bb178945946a3dc28c39e9`  
		Last Modified: Thu, 18 Apr 2019 12:41:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0b9ba0e08ebf05c1d079d540b2fe6a8a967a0a59897cb0a0e3979653ea7450`  
		Last Modified: Thu, 18 Apr 2019 12:41:44 GMT  
		Size: 65.7 MB (65734196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29632696b803d835196f14a51775b543bfe55221c525493d2fc21f1004ac34d8`  
		Last Modified: Thu, 18 Apr 2019 12:41:22 GMT  
		Size: 1.3 MB (1253318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f111acfa612ed316e23fd92dd9f714d4610baf2b9001644f0155ca81064e5cad`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de086192f308a6cc96e92af74b1422aa1a6b1a7b2b4b0314c8932597ec8f6209`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4c8ec52ca5d18b51e40287bb2ae8f73813f41c0633901fb2c205dfacec79fa`  
		Last Modified: Thu, 18 Apr 2019 12:41:23 GMT  
		Size: 2.5 MB (2529015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3366ab283f5c45ba9ec1760ee9ce3d2a402f9a391742d85356f6f1ef12fecc18`  
		Last Modified: Thu, 18 Apr 2019 12:41:49 GMT  
		Size: 95.0 MB (95049998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713e5cc3addb32a6792ddebaa3032f9dfc5a6cc190acab8fcfac13649bbd050`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 2.0 KB (1952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:6cf97aeff1874647e88927d807be3508a0f1ca5a7e7ae03ee51e81d182961cdf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.7 MB (217710141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3afb8a0c80e2e0caf6be9451c2e6f48564532c254cb75976235a6ffd4c7a108e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:11:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:11:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 18:11:35 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:50:15 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:50:16 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 10:00:08 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 10:00:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 10:00:14 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 10:00:15 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 11:08:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 11:10:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 11:10:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 11:10:47 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 11:10:48 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 11:10:49 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 11:10:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 11:10:56 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 11:10:59 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 11:11:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 11:24:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 11:24:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 11:24:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 11:24:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 11:24:32 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 11:24:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c613f8affe15c08d52860f2f82976cd28108920773a126f5e8ed34502e416d`  
		Last Modified: Wed, 27 Mar 2019 19:16:39 GMT  
		Size: 9.9 MB (9918759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81067de155e8674a09c1ef1804197185b69e8b1612def4b315c465fc582fe34`  
		Last Modified: Wed, 27 Mar 2019 19:16:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07bcfa82ce7a1f78426d87b6a2f3444460b359644bc06066ab9080e0458e55a`  
		Last Modified: Thu, 18 Apr 2019 10:16:55 GMT  
		Size: 19.7 MB (19665508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cc090ec1ad1d3be01ab0d4f4306764aeff5a29f9343e0cbc9b029793282c85`  
		Last Modified: Thu, 18 Apr 2019 10:16:50 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff998828541bfa780c6981f2fa2e060db4dc304f033aecf3011d937d106648`  
		Last Modified: Thu, 18 Apr 2019 11:25:03 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbab5db03c312cade16f6bb6d96fb163f7ad197370efc3073799c8886f8b9b`  
		Last Modified: Thu, 18 Apr 2019 11:25:28 GMT  
		Size: 67.8 MB (67815169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2c00a77ec773965b67b0b0ea559dfeb968a042d116e41067034d86bbb70a1f`  
		Last Modified: Thu, 18 Apr 2019 11:25:03 GMT  
		Size: 1.2 MB (1238739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a914203d9f04b7f7f3fdd6b6d246e2dc0794be59b45f70179d524c6d0a40c724`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a71a7e49b65b88280c4ec6f5bd8afcfd11c207cb789365ac4dd06227e65fdf6`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ef131c83392cb341b2416716a9ed2a261630fab1e4894c70d47e116e7c15eb`  
		Last Modified: Thu, 18 Apr 2019 11:25:01 GMT  
		Size: 2.5 MB (2528674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13385b5ad7b9c33738c094cb7eb7d64b95ff3a51c55640b571aee40befc8ae8`  
		Last Modified: Thu, 18 Apr 2019 11:25:55 GMT  
		Size: 96.2 MB (96198783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb129dcaf67729dadb0de750053c8c999f7702854e5c2446985369e6d13fb76`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.3` - linux; 386

```console
$ docker pull redmine@sha256:3911d99abdc3e802b747af9385d241af352fa50714209557a95d64d21ed4b733
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235187326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7766788e02098383f04963db4b71290c0027bf86a87b58b8d77f14238332d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 20:55:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:55:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 20:55:09 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:11:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:11:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:11:44 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:11:44 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 12:34:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 12:35:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 12:35:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:35:41 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 12:35:41 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 12:35:41 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 12:35:42 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 12:35:42 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 12:35:42 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 12:35:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 12:39:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:39:09 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 12:39:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 12:39:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 12:39:10 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 12:39:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d932b8f9eea89a08c5e1b3c174cd1d280f9caf519ee3a1a0612423a9c55a66b`  
		Last Modified: Wed, 27 Mar 2019 21:55:51 GMT  
		Size: 14.7 MB (14650447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9b4729012ad4092c8f82377a8f2a612e1afd2905d844300da2fc817ad770cf`  
		Last Modified: Wed, 27 Mar 2019 21:55:47 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74571d682e80329765a1f60b2c17dfd9f6d9f4346b6fe945e0d3e173ac8acc3`  
		Last Modified: Thu, 18 Apr 2019 12:19:11 GMT  
		Size: 19.4 MB (19438293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75eafaf3a5e5121801dba635dca944584a84b223b15cbb11ab05cd80af134678`  
		Last Modified: Thu, 18 Apr 2019 12:19:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998255f42da72d4a644ae9b0178e695602890c2e4bcf2cd802193b16f6ec9660`  
		Last Modified: Thu, 18 Apr 2019 12:39:35 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b2a6fa2c8824c6f34e1247a347081bae0fadc857a1a84ba9e9ba77534cd81`  
		Last Modified: Thu, 18 Apr 2019 12:39:56 GMT  
		Size: 73.8 MB (73846925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b5d27eb29ef4000553cd9354a2551ad3bdc4bf88a158238ad777c37a59a420`  
		Last Modified: Thu, 18 Apr 2019 12:39:36 GMT  
		Size: 1.3 MB (1270284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938535ec2a7b1f4fdf4cc1ea4d0600204ddfc904c863e49ae2ae5a9aee9f5c7f`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaa057e056718e836ed36f791a21761b69454a1f77be4d620fd1b190dad782d`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b09c5734fee67465ea28de20159e696c2e59b3e030bad93c075d492061f917`  
		Last Modified: Thu, 18 Apr 2019 12:39:35 GMT  
		Size: 2.5 MB (2528681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4eda864429ce32ce99c8ac8d75c64699f983d964f5bd9e11c43b7570866758`  
		Last Modified: Thu, 18 Apr 2019 12:39:57 GMT  
		Size: 100.3 MB (100322638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9edf17768fea7c086ad31e55f8617123c95b199a977891e055c1d00bcc044d8`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:6e023b76b96d504cbf9248e48520d80a079983bc72d001293489a61b7cdb15a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (226961498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22242600dfce8d9b390cf695152b115d7f0602a7545f6291b704b24ce34ff50a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:39:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 12:40:07 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:10:18 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:10:21 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 09:17:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 09:17:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 09:18:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 09:18:06 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 09:44:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 09:48:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 09:48:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 09:49:01 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 09:49:07 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 09:49:13 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 09:49:26 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 09:49:33 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 09:49:36 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 09:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 09:59:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 09:59:10 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 09:59:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 09:59:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 09:59:16 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 09:59:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4fe728e78dd4b2706ccada38f5536db9f302d42b74b93d814d8e7a486504fa`  
		Last Modified: Wed, 27 Mar 2019 13:27:43 GMT  
		Size: 10.6 MB (10579362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc6f4b16bfffc24a0be21b65f2fad900773298f7f4f0ca4833e6f1fa8311a2e`  
		Last Modified: Wed, 27 Mar 2019 13:27:36 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7dab7d204e930fa3f2611592ea95b93bff2d000e734a6b3373d0ef9652f834`  
		Last Modified: Thu, 18 Apr 2019 09:27:42 GMT  
		Size: 20.1 MB (20101021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b139d05b11ad61a24565cee416c596a65a761d6368c12c3f002c8ab43d5f18`  
		Last Modified: Thu, 18 Apr 2019 09:27:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e58a44245693e8589899b5d94b8aec2ac22667896ebd8f9dee89b70c34f4d22`  
		Last Modified: Thu, 18 Apr 2019 09:59:47 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff76ea5411044284d64a856b573b8457d4bcdaf8cdb4831ac474a3b6ec1b7ce1`  
		Last Modified: Thu, 18 Apr 2019 10:00:09 GMT  
		Size: 71.1 MB (71116312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77f7404bbde19b72f955bd1d2f242a7cb3160798c0be498081ea8feb91442f6`  
		Last Modified: Thu, 18 Apr 2019 09:59:47 GMT  
		Size: 1.2 MB (1227806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6080d543d88fe8eb1c1af098109511d054af0f16ae4b1b1eeffaa5abaf201783`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6327ef9542a8676cbed8f8ba0f1ed34152499f3932879084d5797d661682b5a5`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3599058d629756ca2639ed278d6f464a49104d49d148d387091c92fa454398`  
		Last Modified: Thu, 18 Apr 2019 09:59:44 GMT  
		Size: 2.5 MB (2529014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c03b0abe62944be73c4afcb6d50724260114d7332eb9aaa3f3174f5b45b84d`  
		Last Modified: Thu, 18 Apr 2019 10:00:07 GMT  
		Size: 98.7 MB (98652169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec05c30a2a4638605c19ebbb987d279e27bc612c8ef5b202115c86c30a1335c3`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:4.0.3` - linux; s390x

```console
$ docker pull redmine@sha256:c84a9cb15ce3bc7678d78c2e96656c9684e96e210b4ec2a0c296dbbc12a77d0d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227570364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6845e34854c348ad6d9ed989c414020040831c1ab5eae8bc87158b375fb54c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:32 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:24:32 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 15:42:26 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 15:42:27 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 15:47:57 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 15:47:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 15:48:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 15:48:01 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 16:16:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 16:17:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 16:17:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 16:17:22 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 16:17:22 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 16:17:23 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 16:17:25 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 16:17:25 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 16:17:26 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 16:17:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 16:25:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 16:25:22 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 16:25:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 16:25:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 16:25:25 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 16:25:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136d6190ab77b3e9ab9c467fa4d462ec05bc3271cd4c5f140aa2805f83851db`  
		Last Modified: Wed, 27 Mar 2019 15:49:43 GMT  
		Size: 11.6 MB (11577628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a0b1fb24a2e46e9629ed6f6b483f560041432e96e86e23159dbbfdab02bb6`  
		Last Modified: Wed, 27 Mar 2019 15:49:39 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d24879684d4a4e8b4570e50a16d905c1f033b3ef1482c8bdc8fd2b479982c6`  
		Last Modified: Thu, 18 Apr 2019 15:59:29 GMT  
		Size: 20.3 MB (20266423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c0c98aa1ad53de5760a95d495beabe07dcfc056fb8a9d3116aff75ed46568`  
		Last Modified: Thu, 18 Apr 2019 15:59:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a149fe33e25312d2356c46daa793cbb13805388c3b07c2ed4008827263e8a9`  
		Last Modified: Thu, 18 Apr 2019 16:26:08 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c33095e3a509d321366bfbd9be9c8a48eebe8eb96a24afe8cd6e5647622ef6`  
		Last Modified: Thu, 18 Apr 2019 16:26:44 GMT  
		Size: 71.7 MB (71744886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab576454fa1bf1fec6caa58ca3bebc2bc8cda5dae9184eacea6ca2ff61b975ec`  
		Last Modified: Thu, 18 Apr 2019 16:26:10 GMT  
		Size: 1.3 MB (1293024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c97981d39d6c393c90059c941645ef8e802afe6a40e21e5fb8fd5021df2269`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f2e053d32c7e528e0e4598cc04364418be5fe451c4672f7e65c22a45a8c269`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8049a8de95a527bb006c5d4fd8e63b8a1dc3d654cdcadbdb098b603b331db85a`  
		Last Modified: Thu, 18 Apr 2019 16:26:11 GMT  
		Size: 2.5 MB (2528677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5d016fe5289a86bb8b54217503ff57f25cb51b86217f01d00fbe9d3b7e3df6`  
		Last Modified: Thu, 18 Apr 2019 16:26:46 GMT  
		Size: 97.8 MB (97810118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffe76666eae7ac3ca24b3d68efafbe8ff7b94618f615a8c9798b5c164226fba`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0.3-passenger`

```console
$ docker pull redmine@sha256:af6a56ec16b4e97bbbac7a9ce79eb1447c5f4dcd1f9a9ead8717cd8403f2a4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4.0.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:d2649393e932ed175c81e88c4f1b666b19de0d9c5907e61542324ab76259f6c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255861568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38e23699662689499cc31f5c9a6d8cc098eefac67739541b5f1079101805dd8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:32:31 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 01:35:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:35:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:35:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:35:47 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:27:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:28:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:28:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:28:44 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:28:44 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:28:45 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:28:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 08:28:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:34:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:34:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:34:49 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:34:49 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:34:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 08 May 2019 08:35:02 GMT
ENV PASSENGER_VERSION=6.0.2
# Wed, 08 May 2019 08:35:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:35:30 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 08 May 2019 08:35:31 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 08 May 2019 08:35:31 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d89c2bd9682f24a676f380aa0359172017a3a57721dfb49227b4ea0cd8d5ce`  
		Last Modified: Wed, 08 May 2019 01:59:41 GMT  
		Size: 19.9 MB (19903676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e96c0ae601685b2806bf797b857db62399dd88479bd54d3b9fe4997b04838`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a3cc17ab4046548f6a13721fb4a8e9552324fdd72c9f3ca9dfb1f8707411f`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566ae9a069fa748f664f64d43b08a348566edc0e39f7eaa324170bfdcfaf11e`  
		Last Modified: Wed, 08 May 2019 08:43:51 GMT  
		Size: 71.9 MB (71897921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2055114d0a0203b67dddb6f967ab8ce2a0963859b3731b35337201e0c1db185a`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.3 MB (1303097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9c03ca84519d18a8530ee19075c98f40b71c54fde656eb7546de3c121e91bc`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ff68fd7dff1e9bc117bb4720effb6c42e67b536f4d965e1b5d85414586a7e`  
		Last Modified: Wed, 08 May 2019 08:43:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327fc7583382c53a4add0ac434d69e9b0eacf198a6234e26386bbf6d1d122c7f`  
		Last Modified: Wed, 08 May 2019 08:43:30 GMT  
		Size: 2.5 MB (2528676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12bc05a303895c2f4f92cebcde42bd776afb15ad4a90353eb9daf880693c36d`  
		Last Modified: Wed, 08 May 2019 08:43:55 GMT  
		Size: 102.0 MB (102008694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e506a3f505c5998ddb62f469a426e133982e1f5578ac8433cb7fe0279247ae72`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c924eceb0f25cf052258ad76986b8b2cd5e62bf0e829e273cc3029fc345d7c9d`  
		Last Modified: Wed, 08 May 2019 08:44:12 GMT  
		Size: 19.7 MB (19657511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc604c2684c9dce837a7bcb616fa00475936b29d53e01a48e8114dfcb55ddf`  
		Last Modified: Wed, 08 May 2019 08:44:07 GMT  
		Size: 4.9 MB (4895937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4.0-passenger`

```console
$ docker pull redmine@sha256:af6a56ec16b4e97bbbac7a9ce79eb1447c5f4dcd1f9a9ead8717cd8403f2a4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4.0-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:d2649393e932ed175c81e88c4f1b666b19de0d9c5907e61542324ab76259f6c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255861568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38e23699662689499cc31f5c9a6d8cc098eefac67739541b5f1079101805dd8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:32:31 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 01:35:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:35:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:35:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:35:47 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:27:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:28:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:28:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:28:44 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:28:44 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:28:45 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:28:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 08:28:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:34:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:34:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:34:49 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:34:49 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:34:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 08 May 2019 08:35:02 GMT
ENV PASSENGER_VERSION=6.0.2
# Wed, 08 May 2019 08:35:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:35:30 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 08 May 2019 08:35:31 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 08 May 2019 08:35:31 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d89c2bd9682f24a676f380aa0359172017a3a57721dfb49227b4ea0cd8d5ce`  
		Last Modified: Wed, 08 May 2019 01:59:41 GMT  
		Size: 19.9 MB (19903676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e96c0ae601685b2806bf797b857db62399dd88479bd54d3b9fe4997b04838`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a3cc17ab4046548f6a13721fb4a8e9552324fdd72c9f3ca9dfb1f8707411f`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566ae9a069fa748f664f64d43b08a348566edc0e39f7eaa324170bfdcfaf11e`  
		Last Modified: Wed, 08 May 2019 08:43:51 GMT  
		Size: 71.9 MB (71897921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2055114d0a0203b67dddb6f967ab8ce2a0963859b3731b35337201e0c1db185a`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.3 MB (1303097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9c03ca84519d18a8530ee19075c98f40b71c54fde656eb7546de3c121e91bc`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ff68fd7dff1e9bc117bb4720effb6c42e67b536f4d965e1b5d85414586a7e`  
		Last Modified: Wed, 08 May 2019 08:43:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327fc7583382c53a4add0ac434d69e9b0eacf198a6234e26386bbf6d1d122c7f`  
		Last Modified: Wed, 08 May 2019 08:43:30 GMT  
		Size: 2.5 MB (2528676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12bc05a303895c2f4f92cebcde42bd776afb15ad4a90353eb9daf880693c36d`  
		Last Modified: Wed, 08 May 2019 08:43:55 GMT  
		Size: 102.0 MB (102008694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e506a3f505c5998ddb62f469a426e133982e1f5578ac8433cb7fe0279247ae72`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c924eceb0f25cf052258ad76986b8b2cd5e62bf0e829e273cc3029fc345d7c9d`  
		Last Modified: Wed, 08 May 2019 08:44:12 GMT  
		Size: 19.7 MB (19657511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc604c2684c9dce837a7bcb616fa00475936b29d53e01a48e8114dfcb55ddf`  
		Last Modified: Wed, 08 May 2019 08:44:07 GMT  
		Size: 4.9 MB (4895937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:4-passenger`

```console
$ docker pull redmine@sha256:af6a56ec16b4e97bbbac7a9ce79eb1447c5f4dcd1f9a9ead8717cd8403f2a4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:d2649393e932ed175c81e88c4f1b666b19de0d9c5907e61542324ab76259f6c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255861568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38e23699662689499cc31f5c9a6d8cc098eefac67739541b5f1079101805dd8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:32:31 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 01:35:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:35:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:35:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:35:47 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:27:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:28:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:28:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:28:44 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:28:44 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:28:45 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:28:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 08:28:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:34:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:34:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:34:49 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:34:49 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:34:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 08 May 2019 08:35:02 GMT
ENV PASSENGER_VERSION=6.0.2
# Wed, 08 May 2019 08:35:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:35:30 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 08 May 2019 08:35:31 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 08 May 2019 08:35:31 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d89c2bd9682f24a676f380aa0359172017a3a57721dfb49227b4ea0cd8d5ce`  
		Last Modified: Wed, 08 May 2019 01:59:41 GMT  
		Size: 19.9 MB (19903676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e96c0ae601685b2806bf797b857db62399dd88479bd54d3b9fe4997b04838`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a3cc17ab4046548f6a13721fb4a8e9552324fdd72c9f3ca9dfb1f8707411f`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566ae9a069fa748f664f64d43b08a348566edc0e39f7eaa324170bfdcfaf11e`  
		Last Modified: Wed, 08 May 2019 08:43:51 GMT  
		Size: 71.9 MB (71897921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2055114d0a0203b67dddb6f967ab8ce2a0963859b3731b35337201e0c1db185a`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.3 MB (1303097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9c03ca84519d18a8530ee19075c98f40b71c54fde656eb7546de3c121e91bc`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ff68fd7dff1e9bc117bb4720effb6c42e67b536f4d965e1b5d85414586a7e`  
		Last Modified: Wed, 08 May 2019 08:43:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327fc7583382c53a4add0ac434d69e9b0eacf198a6234e26386bbf6d1d122c7f`  
		Last Modified: Wed, 08 May 2019 08:43:30 GMT  
		Size: 2.5 MB (2528676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12bc05a303895c2f4f92cebcde42bd776afb15ad4a90353eb9daf880693c36d`  
		Last Modified: Wed, 08 May 2019 08:43:55 GMT  
		Size: 102.0 MB (102008694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e506a3f505c5998ddb62f469a426e133982e1f5578ac8433cb7fe0279247ae72`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c924eceb0f25cf052258ad76986b8b2cd5e62bf0e829e273cc3029fc345d7c9d`  
		Last Modified: Wed, 08 May 2019 08:44:12 GMT  
		Size: 19.7 MB (19657511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc604c2684c9dce837a7bcb616fa00475936b29d53e01a48e8114dfcb55ddf`  
		Last Modified: Wed, 08 May 2019 08:44:07 GMT  
		Size: 4.9 MB (4895937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:844945422810bdee4e0b8ff20af672ce0894ff06e338fb0c66955a9efbbc76ff
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
$ docker pull redmine@sha256:8c6c7a0e9078eb135ea2c24b9e4f00a67a97583665f282338ea2cf8fcb288098
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231308120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1983e96b9a866b3ab8074a11474cdccf538ac19e9cb3556bac35f475b61d8ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:32:31 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 01:35:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:35:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:35:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:35:47 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:27:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:28:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:28:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:28:44 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:28:44 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:28:45 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:28:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 08:28:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:34:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:34:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:34:49 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:34:49 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:34:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d89c2bd9682f24a676f380aa0359172017a3a57721dfb49227b4ea0cd8d5ce`  
		Last Modified: Wed, 08 May 2019 01:59:41 GMT  
		Size: 19.9 MB (19903676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e96c0ae601685b2806bf797b857db62399dd88479bd54d3b9fe4997b04838`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a3cc17ab4046548f6a13721fb4a8e9552324fdd72c9f3ca9dfb1f8707411f`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566ae9a069fa748f664f64d43b08a348566edc0e39f7eaa324170bfdcfaf11e`  
		Last Modified: Wed, 08 May 2019 08:43:51 GMT  
		Size: 71.9 MB (71897921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2055114d0a0203b67dddb6f967ab8ce2a0963859b3731b35337201e0c1db185a`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.3 MB (1303097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9c03ca84519d18a8530ee19075c98f40b71c54fde656eb7546de3c121e91bc`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ff68fd7dff1e9bc117bb4720effb6c42e67b536f4d965e1b5d85414586a7e`  
		Last Modified: Wed, 08 May 2019 08:43:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327fc7583382c53a4add0ac434d69e9b0eacf198a6234e26386bbf6d1d122c7f`  
		Last Modified: Wed, 08 May 2019 08:43:30 GMT  
		Size: 2.5 MB (2528676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12bc05a303895c2f4f92cebcde42bd776afb15ad4a90353eb9daf880693c36d`  
		Last Modified: Wed, 08 May 2019 08:43:55 GMT  
		Size: 102.0 MB (102008694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e506a3f505c5998ddb62f469a426e133982e1f5578ac8433cb7fe0279247ae72`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:4d003b570f9808d0b7fc4b1da40fa6a8d2b307ae4e35a4a8d645b73b6da95c76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219508310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379205062924352c1381721105f1ae68bcfe4a0806545de81974afa6ea730230`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:00:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:01:02 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 12:01:04 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 12:04:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 12:04:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:04:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 12:04:26 GMT
CMD ["irb"]
# Wed, 08 May 2019 17:10:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 17:11:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:11:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:11:45 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 17:11:45 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 17:11:46 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 17:11:47 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 17:11:47 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 17:11:48 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 17:11:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 17:18:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 17:18:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 17:18:42 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 17:18:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 17:18:43 GMT
EXPOSE 3000
# Wed, 08 May 2019 17:18:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f94a64a34ca9d2b6b24bb8989e217cf2e7f790f2165d28579bc4fe45d90a8`  
		Last Modified: Wed, 08 May 2019 12:41:38 GMT  
		Size: 9.6 MB (9602563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9eecfb061ad8148013649b45d9cbe2f6235d8d5da8ac1a9640d73d96acd77c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e832425d7f0f4f1aa7e73fe199d50669f0f05959cf9b6c0c7e493035de37e53`  
		Last Modified: Wed, 08 May 2019 12:41:34 GMT  
		Size: 19.5 MB (19462424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c75b03f1f6952da1040b40510fe556f535e344fa678119332af9d008590d0c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd40f3e7ab120b50e288ae167d768bb72d995e43e17e0ab676a495eec9518285`  
		Last Modified: Wed, 08 May 2019 17:26:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4cb63a8550eeb6d3b2da44841846b2544b3c6332057d0c8303aa2e82e82ac4`  
		Last Modified: Wed, 08 May 2019 17:27:03 GMT  
		Size: 68.9 MB (68919239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b12676eb8f4c104c00182d2f71d829eeac0777baeebc01bbefa008922d00c`  
		Last Modified: Wed, 08 May 2019 17:26:40 GMT  
		Size: 1.3 MB (1261822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc366d72069ed0c9b273727dffe9288c6a0c41ff39624cddd3883f4df11ac519`  
		Last Modified: Wed, 08 May 2019 17:26:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402d9faf880871286c4cf103cb68ca8f216b701abe1d4fc2bb2c3d9d52c5bc7d`  
		Last Modified: Wed, 08 May 2019 17:26:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bee0f2e27c321a18c406d538d4f950a1cd1994e083acebfa87d9a2b8bbd678c`  
		Last Modified: Wed, 08 May 2019 17:26:40 GMT  
		Size: 2.5 MB (2529015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0268f6f3e90e5e52fe705582167c8cc0e6efebc66552936d907695c8858e3a4b`  
		Last Modified: Wed, 08 May 2019 17:27:06 GMT  
		Size: 96.6 MB (96572973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a404d2b1d037a36015cd5d94a453d96bc359e9ef10d656aa5bbc80ebfd5a81`  
		Last Modified: Wed, 08 May 2019 17:26:39 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f9eaec6e64fa1a82eb1384d67ab5e2baed2db027e3dd4390362b2f48633d40df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212225766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9dfa9805ea0768cdfa894656618ad864c17cbec919584bec622c1e89f84c362`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:02:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:02:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:02:40 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:10:35 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:10:37 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:13:46 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:13:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:13:53 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 12:34:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 12:35:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 12:35:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:35:24 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 12:35:25 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 12:35:25 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 12:35:26 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 12:35:27 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 12:35:27 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 12:35:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 12:41:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:41:02 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 12:41:02 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 12:41:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 12:41:03 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 12:41:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c49cc9bf813783c8adad9a8112b31eb2329d6e61f1f236daa69ead9b7c5ae3`  
		Last Modified: Wed, 27 Mar 2019 15:53:45 GMT  
		Size: 9.1 MB (9079104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819e11271eca83204620d6fb3eeb33dd25ff007c2b251045f34cc378acf4f0cd`  
		Last Modified: Wed, 27 Mar 2019 15:53:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8871fe4978fa4225668bbc026b62412b971d07ac7df05f300ad4d4d59daa0d97`  
		Last Modified: Thu, 18 Apr 2019 12:18:20 GMT  
		Size: 19.3 MB (19293275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af854397c90109de28033b52b306dac3e5f40c9231e0b6223e84084c20ff496e`  
		Last Modified: Thu, 18 Apr 2019 12:18:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7853998dc95b1ac2407d11e9b0c0520d6ae3a4e4bb178945946a3dc28c39e9`  
		Last Modified: Thu, 18 Apr 2019 12:41:23 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0b9ba0e08ebf05c1d079d540b2fe6a8a967a0a59897cb0a0e3979653ea7450`  
		Last Modified: Thu, 18 Apr 2019 12:41:44 GMT  
		Size: 65.7 MB (65734196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29632696b803d835196f14a51775b543bfe55221c525493d2fc21f1004ac34d8`  
		Last Modified: Thu, 18 Apr 2019 12:41:22 GMT  
		Size: 1.3 MB (1253318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f111acfa612ed316e23fd92dd9f714d4610baf2b9001644f0155ca81064e5cad`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de086192f308a6cc96e92af74b1422aa1a6b1a7b2b4b0314c8932597ec8f6209`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4c8ec52ca5d18b51e40287bb2ae8f73813f41c0633901fb2c205dfacec79fa`  
		Last Modified: Thu, 18 Apr 2019 12:41:23 GMT  
		Size: 2.5 MB (2529015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3366ab283f5c45ba9ec1760ee9ce3d2a402f9a391742d85356f6f1ef12fecc18`  
		Last Modified: Thu, 18 Apr 2019 12:41:49 GMT  
		Size: 95.0 MB (95049998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713e5cc3addb32a6792ddebaa3032f9dfc5a6cc190acab8fcfac13649bbd050`  
		Last Modified: Thu, 18 Apr 2019 12:41:21 GMT  
		Size: 2.0 KB (1952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:6cf97aeff1874647e88927d807be3508a0f1ca5a7e7ae03ee51e81d182961cdf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.7 MB (217710141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3afb8a0c80e2e0caf6be9451c2e6f48564532c254cb75976235a6ffd4c7a108e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:11:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:11:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 18:11:35 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:50:15 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:50:16 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 10:00:08 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 10:00:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 10:00:14 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 10:00:15 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 11:08:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 11:10:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 11:10:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 11:10:47 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 11:10:48 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 11:10:49 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 11:10:53 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 11:10:56 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 11:10:59 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 11:11:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 11:24:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 11:24:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 11:24:31 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 11:24:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 11:24:32 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 11:24:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c613f8affe15c08d52860f2f82976cd28108920773a126f5e8ed34502e416d`  
		Last Modified: Wed, 27 Mar 2019 19:16:39 GMT  
		Size: 9.9 MB (9918759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81067de155e8674a09c1ef1804197185b69e8b1612def4b315c465fc582fe34`  
		Last Modified: Wed, 27 Mar 2019 19:16:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07bcfa82ce7a1f78426d87b6a2f3444460b359644bc06066ab9080e0458e55a`  
		Last Modified: Thu, 18 Apr 2019 10:16:55 GMT  
		Size: 19.7 MB (19665508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cc090ec1ad1d3be01ab0d4f4306764aeff5a29f9343e0cbc9b029793282c85`  
		Last Modified: Thu, 18 Apr 2019 10:16:50 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff998828541bfa780c6981f2fa2e060db4dc304f033aecf3011d937d106648`  
		Last Modified: Thu, 18 Apr 2019 11:25:03 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbab5db03c312cade16f6bb6d96fb163f7ad197370efc3073799c8886f8b9b`  
		Last Modified: Thu, 18 Apr 2019 11:25:28 GMT  
		Size: 67.8 MB (67815169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2c00a77ec773965b67b0b0ea559dfeb968a042d116e41067034d86bbb70a1f`  
		Last Modified: Thu, 18 Apr 2019 11:25:03 GMT  
		Size: 1.2 MB (1238739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a914203d9f04b7f7f3fdd6b6d246e2dc0794be59b45f70179d524c6d0a40c724`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a71a7e49b65b88280c4ec6f5bd8afcfd11c207cb789365ac4dd06227e65fdf6`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ef131c83392cb341b2416716a9ed2a261630fab1e4894c70d47e116e7c15eb`  
		Last Modified: Thu, 18 Apr 2019 11:25:01 GMT  
		Size: 2.5 MB (2528674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13385b5ad7b9c33738c094cb7eb7d64b95ff3a51c55640b571aee40befc8ae8`  
		Last Modified: Thu, 18 Apr 2019 11:25:55 GMT  
		Size: 96.2 MB (96198783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb129dcaf67729dadb0de750053c8c999f7702854e5c2446985369e6d13fb76`  
		Last Modified: Thu, 18 Apr 2019 11:24:59 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:3911d99abdc3e802b747af9385d241af352fa50714209557a95d64d21ed4b733
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235187326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7766788e02098383f04963db4b71290c0027bf86a87b58b8d77f14238332d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 20:55:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:55:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 20:55:09 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:11:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:11:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:11:44 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:11:44 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 12:34:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 12:35:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 12:35:41 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:35:41 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 12:35:41 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 12:35:41 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 12:35:42 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 12:35:42 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 12:35:42 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 12:35:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 12:39:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 12:39:09 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 12:39:09 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 12:39:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 12:39:10 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 12:39:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d932b8f9eea89a08c5e1b3c174cd1d280f9caf519ee3a1a0612423a9c55a66b`  
		Last Modified: Wed, 27 Mar 2019 21:55:51 GMT  
		Size: 14.7 MB (14650447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9b4729012ad4092c8f82377a8f2a612e1afd2905d844300da2fc817ad770cf`  
		Last Modified: Wed, 27 Mar 2019 21:55:47 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74571d682e80329765a1f60b2c17dfd9f6d9f4346b6fe945e0d3e173ac8acc3`  
		Last Modified: Thu, 18 Apr 2019 12:19:11 GMT  
		Size: 19.4 MB (19438293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75eafaf3a5e5121801dba635dca944584a84b223b15cbb11ab05cd80af134678`  
		Last Modified: Thu, 18 Apr 2019 12:19:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998255f42da72d4a644ae9b0178e695602890c2e4bcf2cd802193b16f6ec9660`  
		Last Modified: Thu, 18 Apr 2019 12:39:35 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b2a6fa2c8824c6f34e1247a347081bae0fadc857a1a84ba9e9ba77534cd81`  
		Last Modified: Thu, 18 Apr 2019 12:39:56 GMT  
		Size: 73.8 MB (73846925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b5d27eb29ef4000553cd9354a2551ad3bdc4bf88a158238ad777c37a59a420`  
		Last Modified: Thu, 18 Apr 2019 12:39:36 GMT  
		Size: 1.3 MB (1270284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938535ec2a7b1f4fdf4cc1ea4d0600204ddfc904c863e49ae2ae5a9aee9f5c7f`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaa057e056718e836ed36f791a21761b69454a1f77be4d620fd1b190dad782d`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b09c5734fee67465ea28de20159e696c2e59b3e030bad93c075d492061f917`  
		Last Modified: Thu, 18 Apr 2019 12:39:35 GMT  
		Size: 2.5 MB (2528681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4eda864429ce32ce99c8ac8d75c64699f983d964f5bd9e11c43b7570866758`  
		Last Modified: Thu, 18 Apr 2019 12:39:57 GMT  
		Size: 100.3 MB (100322638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9edf17768fea7c086ad31e55f8617123c95b199a977891e055c1d00bcc044d8`  
		Last Modified: Thu, 18 Apr 2019 12:39:34 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:6e023b76b96d504cbf9248e48520d80a079983bc72d001293489a61b7cdb15a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (226961498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22242600dfce8d9b390cf695152b115d7f0602a7545f6291b704b24ce34ff50a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:39:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 12:40:07 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:10:18 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:10:21 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 09:17:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 09:17:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 09:18:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 09:18:06 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 09:44:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 09:48:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 09:48:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 09:49:01 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 09:49:07 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 09:49:13 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 09:49:26 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 09:49:33 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 09:49:36 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 09:49:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 09:59:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 09:59:10 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 09:59:12 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 09:59:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 09:59:16 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 09:59:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4fe728e78dd4b2706ccada38f5536db9f302d42b74b93d814d8e7a486504fa`  
		Last Modified: Wed, 27 Mar 2019 13:27:43 GMT  
		Size: 10.6 MB (10579362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc6f4b16bfffc24a0be21b65f2fad900773298f7f4f0ca4833e6f1fa8311a2e`  
		Last Modified: Wed, 27 Mar 2019 13:27:36 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7dab7d204e930fa3f2611592ea95b93bff2d000e734a6b3373d0ef9652f834`  
		Last Modified: Thu, 18 Apr 2019 09:27:42 GMT  
		Size: 20.1 MB (20101021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b139d05b11ad61a24565cee416c596a65a761d6368c12c3f002c8ab43d5f18`  
		Last Modified: Thu, 18 Apr 2019 09:27:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e58a44245693e8589899b5d94b8aec2ac22667896ebd8f9dee89b70c34f4d22`  
		Last Modified: Thu, 18 Apr 2019 09:59:47 GMT  
		Size: 1.8 KB (1758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff76ea5411044284d64a856b573b8457d4bcdaf8cdb4831ac474a3b6ec1b7ce1`  
		Last Modified: Thu, 18 Apr 2019 10:00:09 GMT  
		Size: 71.1 MB (71116312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77f7404bbde19b72f955bd1d2f242a7cb3160798c0be498081ea8feb91442f6`  
		Last Modified: Thu, 18 Apr 2019 09:59:47 GMT  
		Size: 1.2 MB (1227806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6080d543d88fe8eb1c1af098109511d054af0f16ae4b1b1eeffaa5abaf201783`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6327ef9542a8676cbed8f8ba0f1ed34152499f3932879084d5797d661682b5a5`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3599058d629756ca2639ed278d6f464a49104d49d148d387091c92fa454398`  
		Last Modified: Thu, 18 Apr 2019 09:59:44 GMT  
		Size: 2.5 MB (2529014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c03b0abe62944be73c4afcb6d50724260114d7332eb9aaa3f3174f5b45b84d`  
		Last Modified: Thu, 18 Apr 2019 10:00:07 GMT  
		Size: 98.7 MB (98652169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec05c30a2a4638605c19ebbb987d279e27bc612c8ef5b202115c86c30a1335c3`  
		Last Modified: Thu, 18 Apr 2019 09:59:43 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:c84a9cb15ce3bc7678d78c2e96656c9684e96e210b4ec2a0c296dbbc12a77d0d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227570364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6845e34854c348ad6d9ed989c414020040831c1ab5eae8bc87158b375fb54c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:32 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:24:32 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 15:42:26 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 15:42:27 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 15:47:57 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 15:47:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 15:48:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 15:48:01 GMT
CMD ["irb"]
# Thu, 18 Apr 2019 16:16:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 18 Apr 2019 16:17:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 18 Apr 2019 16:17:22 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 16:17:22 GMT
ENV RAILS_ENV=production
# Thu, 18 Apr 2019 16:17:22 GMT
WORKDIR /usr/src/redmine
# Thu, 18 Apr 2019 16:17:23 GMT
ENV HOME=/home/redmine
# Thu, 18 Apr 2019 16:17:25 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Thu, 18 Apr 2019 16:17:25 GMT
ENV REDMINE_VERSION=4.0.3
# Thu, 18 Apr 2019 16:17:26 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Thu, 18 Apr 2019 16:17:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Thu, 18 Apr 2019 16:25:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 18 Apr 2019 16:25:22 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 18 Apr 2019 16:25:23 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Thu, 18 Apr 2019 16:25:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Apr 2019 16:25:25 GMT
EXPOSE 3000
# Thu, 18 Apr 2019 16:25:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136d6190ab77b3e9ab9c467fa4d462ec05bc3271cd4c5f140aa2805f83851db`  
		Last Modified: Wed, 27 Mar 2019 15:49:43 GMT  
		Size: 11.6 MB (11577628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a0b1fb24a2e46e9629ed6f6b483f560041432e96e86e23159dbbfdab02bb6`  
		Last Modified: Wed, 27 Mar 2019 15:49:39 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d24879684d4a4e8b4570e50a16d905c1f033b3ef1482c8bdc8fd2b479982c6`  
		Last Modified: Thu, 18 Apr 2019 15:59:29 GMT  
		Size: 20.3 MB (20266423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c0c98aa1ad53de5760a95d495beabe07dcfc056fb8a9d3116aff75ed46568`  
		Last Modified: Thu, 18 Apr 2019 15:59:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a149fe33e25312d2356c46daa793cbb13805388c3b07c2ed4008827263e8a9`  
		Last Modified: Thu, 18 Apr 2019 16:26:08 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c33095e3a509d321366bfbd9be9c8a48eebe8eb96a24afe8cd6e5647622ef6`  
		Last Modified: Thu, 18 Apr 2019 16:26:44 GMT  
		Size: 71.7 MB (71744886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab576454fa1bf1fec6caa58ca3bebc2bc8cda5dae9184eacea6ca2ff61b975ec`  
		Last Modified: Thu, 18 Apr 2019 16:26:10 GMT  
		Size: 1.3 MB (1293024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c97981d39d6c393c90059c941645ef8e802afe6a40e21e5fb8fd5021df2269`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f2e053d32c7e528e0e4598cc04364418be5fe451c4672f7e65c22a45a8c269`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8049a8de95a527bb006c5d4fd8e63b8a1dc3d654cdcadbdb098b603b331db85a`  
		Last Modified: Thu, 18 Apr 2019 16:26:11 GMT  
		Size: 2.5 MB (2528677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5d016fe5289a86bb8b54217503ff57f25cb51b86217f01d00fbe9d3b7e3df6`  
		Last Modified: Thu, 18 Apr 2019 16:26:46 GMT  
		Size: 97.8 MB (97810118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffe76666eae7ac3ca24b3d68efafbe8ff7b94618f615a8c9798b5c164226fba`  
		Last Modified: Thu, 18 Apr 2019 16:26:07 GMT  
		Size: 2.0 KB (1953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:af6a56ec16b4e97bbbac7a9ce79eb1447c5f4dcd1f9a9ead8717cd8403f2a4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:d2649393e932ed175c81e88c4f1b666b19de0d9c5907e61542324ab76259f6c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255861568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38e23699662689499cc31f5c9a6d8cc098eefac67739541b5f1079101805dd8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:32:31 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 01:35:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:35:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:35:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:35:47 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:27:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 08 May 2019 08:28:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		wget 				bzr 		git 		mercurial 		openssh-client 		subversion 				gsfonts 		imagemagick 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 08:28:44 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 		export GOSU_VERSION='1.11'; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		export TINI_VERSION='0.18.0'; 	wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"; 	wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5; 	gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; 	chmod +x /usr/local/bin/tini; 	tini -h; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:28:44 GMT
ENV RAILS_ENV=production
# Wed, 08 May 2019 08:28:44 GMT
WORKDIR /usr/src/redmine
# Wed, 08 May 2019 08:28:45 GMT
ENV HOME=/home/redmine
# Wed, 08 May 2019 08:28:46 GMT
RUN set -eux; 	[ ! -d "$HOME" ]; 	mkdir -p "$HOME"; 	chown redmine:redmine "$HOME"; 	chmod 1777 "$HOME"
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_VERSION=4.0.3
# Wed, 08 May 2019 08:28:46 GMT
ENV REDMINE_DOWNLOAD_MD5=619675f04df3c960e334377e485581ca
# Wed, 08 May 2019 08:28:51 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p log public/plugin_assets sqlite tmp/pdf tmp/pids 	&& chown -R redmine:redmine ./ 	&& echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb 	&& chmod -R ugo=rwX config db sqlite 	&& find log tmp -type d -exec chmod 1777 '{}' +
# Wed, 08 May 2019 08:34:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmariadbclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 				libssl1.0-dev 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O freetds.tar.bz2 'http://www.freetds.org/files/stable/freetds-1.00.91.tar.bz2'; 	echo '8d71f9f29be0fe0637e443dd3807b3fd *freetds.tar.bz2' | md5sum -c -; 	mkdir freetds; 	tar -xf freetds.tar.bz2 -C freetds --strip-components=1; 	rm freetds.tar.bz2; 	( cd freetds && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" && ./configure --build="$gnuArch" --enable-silent-rules && make -j "$(nproc)" && make -C src install && make -C include install ); 	rm -rf freetds; 	gosu redmine bundle config build.tiny_tds --enable-system-freetds; 		gosu redmine bundle install --without development test; 	for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		gosu redmine bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done; 	rm ./config/database.yml; 	chmod -R ugo=rwX Gemfile.lock "$GEM_HOME"; 	rm -rf ~redmine/.bundle; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| grep -v '^/usr/local/' 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:34:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 08 May 2019 08:34:49 GMT
COPY file:47fbab13a34e2b452550702ed28b1af1c18f92eb179c048c14b8a6ecc498101d in / 
# Wed, 08 May 2019 08:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 08:34:49 GMT
EXPOSE 3000
# Wed, 08 May 2019 08:34:50 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 08 May 2019 08:35:02 GMT
ENV PASSENGER_VERSION=6.0.2
# Wed, 08 May 2019 08:35:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		gcc 		make 	; 	rm -rf /var/lib/apt/lists/*; 		gem install passenger --version "$PASSENGER_VERSION"; 	passenger-config build-native-support; 	if [ -n "$(passenger-config build-native-support 2>&1)" ]; then cat /tmp/passenger_native_support-*.log; false; fi; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 08 May 2019 08:35:30 GMT
RUN set -eux; 	passenger-config install-agent; 	passenger-config download-nginx-engine
# Wed, 08 May 2019 08:35:31 GMT
ENV PASSENGER_PID_FILE=tmp/pids/server.pid
# Wed, 08 May 2019 08:35:31 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d89c2bd9682f24a676f380aa0359172017a3a57721dfb49227b4ea0cd8d5ce`  
		Last Modified: Wed, 08 May 2019 01:59:41 GMT  
		Size: 19.9 MB (19903676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e96c0ae601685b2806bf797b857db62399dd88479bd54d3b9fe4997b04838`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a3cc17ab4046548f6a13721fb4a8e9552324fdd72c9f3ca9dfb1f8707411f`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8566ae9a069fa748f664f64d43b08a348566edc0e39f7eaa324170bfdcfaf11e`  
		Last Modified: Wed, 08 May 2019 08:43:51 GMT  
		Size: 71.9 MB (71897921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2055114d0a0203b67dddb6f967ab8ce2a0963859b3731b35337201e0c1db185a`  
		Last Modified: Wed, 08 May 2019 08:43:29 GMT  
		Size: 1.3 MB (1303097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9c03ca84519d18a8530ee19075c98f40b71c54fde656eb7546de3c121e91bc`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29ff68fd7dff1e9bc117bb4720effb6c42e67b536f4d965e1b5d85414586a7e`  
		Last Modified: Wed, 08 May 2019 08:43:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327fc7583382c53a4add0ac434d69e9b0eacf198a6234e26386bbf6d1d122c7f`  
		Last Modified: Wed, 08 May 2019 08:43:30 GMT  
		Size: 2.5 MB (2528676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12bc05a303895c2f4f92cebcde42bd776afb15ad4a90353eb9daf880693c36d`  
		Last Modified: Wed, 08 May 2019 08:43:55 GMT  
		Size: 102.0 MB (102008694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e506a3f505c5998ddb62f469a426e133982e1f5578ac8433cb7fe0279247ae72`  
		Last Modified: Wed, 08 May 2019 08:43:27 GMT  
		Size: 2.0 KB (1951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c924eceb0f25cf052258ad76986b8b2cd5e62bf0e829e273cc3029fc345d7c9d`  
		Last Modified: Wed, 08 May 2019 08:44:12 GMT  
		Size: 19.7 MB (19657511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc604c2684c9dce837a7bcb616fa00475936b29d53e01a48e8114dfcb55ddf`  
		Last Modified: Wed, 08 May 2019 08:44:07 GMT  
		Size: 4.9 MB (4895937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
